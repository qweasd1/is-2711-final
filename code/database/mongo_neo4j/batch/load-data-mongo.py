import pymysql
from query import CacheFetcher
from helper import customer_category
from pymongo import MongoClient
import pymysql.cursors
import datetime



# initialize connection
client_mongo = MongoClient()
client_mysql = pymysql.connect(
    host="localhost",
    port=3306,
    user="root",
    password="localpw1234",
    db="vehicle",
    cursorclass=pymysql.cursors.DictCursor
)

db_mongo = client_mongo['vehicledw']


transaction_dw_collection = db_mongo.transaction
# batch_dw_collection = db_mongo.batch



transaction_db = CacheFetcher(client_mysql,"transaction")
customer_db = CacheFetcher(client_mysql,"customer")
product_db = CacheFetcher(client_mysql,"product")
region_db = CacheFetcher(client_mysql,"region")
salesperson_db = CacheFetcher(client_mysql,"salesperson")
store_db = CacheFetcher(client_mysql,"store")



def _date_to_datetime(date):
    return datetime.datetime(date.year,date.month,date.day)

def _dim_date(date):
    return {
        "year":date.year,
        "month":date.month,
        "week": date.isocalendar()[1]
    }

def _dim_product(id):
    product = product_db.lookup(id)
    return {
        "product_id":product["id"],
        "inprice":float(product["inprice"]),
        "price":float(product["price"]),
        "category":product["product_kind"],
        "name":"{0} - {1}".format(product["make"],product["model"])
    }


def _dim_customer(id):
    customer = customer = customer_db.lookup(id)
    return {
        "name":customer["name"],
        "category":customer_category(customer["kind"]),
    }


def delete_previous_data(batch_datetime):
    transaction_dw_collection.delete_many({"date": batch_datetime})

# populate atttributes on one transaction record
def transform_one_trasaction(transaction_record):

    transaction_record["_id"] = transaction_record.pop("id")

    # process fact value
    transaction_record["profit"] = float(transaction_record["profit"])
    transaction_record["quantity"] = float(transaction_record["quantity"])
    transaction_record["sale"] = float(transaction_record["sale"])

    # process date dim
    purchase_datetime = transaction_record["date"] = _date_to_datetime(transaction_record.pop("purchase_date"))
    transaction_record["dim_date"] = _dim_date(purchase_datetime)

    # process product dim
    transaction_record["dim_product"] = _dim_product(transaction_record.pop("product_id"))

    # process customer dim
    transaction_record["dim_customer"] = _dim_customer(transaction_record.pop("customer_id"))

    # process store and region dim
    store = store_db.lookup(salesperson_db.lookup(transaction_record.pop("salesperson_id"))["store_id"])
    region = region_db.lookup(store["region_id"])

    transaction_record["dim_store"] = {
        "name":store["name"],
    }
    transaction_record["dim_region"] = {
        "name": region["region_name"],
    }

    return transaction_record


def load_data(batch_date):
    batch_datetime = datetime.datetime.strptime(batch_date,"%Y-%m-%d")
    cursor = transaction_db.select("where purchase_date = '{}'".format(batch_date))
    delete_previous_data(batch_datetime)
    for transaction_record in cursor:
        transaction_dw_collection.insert(transform_one_trasaction(transaction_record))

load_data("2013-03-13")
