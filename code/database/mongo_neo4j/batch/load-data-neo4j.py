import pymysql
from query import CacheFetcher
from helper import customer_category
from neo4j.v1 import GraphDatabase, basic_auth
import pymysql.cursors
import datetime

# initialize connection
client_neo4j = GraphDatabase.driver("bolt://localhost:7687", auth=("neo4j", "123"))

# list(client_neo4j.session().run("match (n:Transaction {date:{date}}) detach delete n",date=20140101))


client_mysql = pymysql.connect(
    host="localhost",
    port=3306,
    user="root",
    password="localpw1234",
    db="vehicle",
    cursorclass=pymysql.cursors.DictCursor
)

transaction_db = CacheFetcher(client_mysql, "transaction")
customer_db = CacheFetcher(client_mysql, "customer")
product_db = CacheFetcher(client_mysql, "product")
region_db = CacheFetcher(client_mysql, "region")
salesperson_db = CacheFetcher(client_mysql, "salesperson")
store_db = CacheFetcher(client_mysql, "store")


def _date_to_datetime(date):
    return int("{0:04d}{1:02d}{2:02d}".format(date.year, date.month, date.day))


def delete_previous_data(tx, batch_date):
    tx.run("""
    match (n:Transaction {date:{date}})-[r]->()  delete n,r
    """, date=_date_to_datetime(batch_date))



def _dim_date(date):
    return {
        "year": date.year,
        "month": date.month,
        "week": date.isocalendar()[1]
    }


def _dim_product(id):
    product = product_db.lookup(id)
    return {
        "product_id": product["id"],
        "inprice": float(product["inprice"]),
        "price": float(product["price"]),
        "category": product["product_kind"],
        "name": "{0} - {1}".format(product["make"], product["model"])
    }


def _dim_customer(id):
    customer = customer = customer_db.lookup(id)
    return {
        "name": customer["name"],
        "category": customer_category(customer["kind"]),
    }


# populate atttributes on one transaction record
def transform_one_trasaction(transaction_record, session):


    # process fact value
    transaction_record["profit"] = float(transaction_record["profit"])
    transaction_record["quantity"] = float(transaction_record["quantity"])
    transaction_record["sale"] = float(transaction_record["sale"])

    # process date dim
    purchase_date = transaction_record.pop("purchase_date")
    transaction_record["date"] = _date_to_datetime(purchase_date)

    dim_date = _dim_date(datetime.datetime(purchase_date.year, purchase_date.month, purchase_date.day))

    # process product dim
    dim_product = _dim_product(transaction_record.pop("product_id"))

    # process customer dim
    dim_customer = _dim_customer(transaction_record.pop("customer_id"))

    # process store and region dim
    store = store_db.lookup(salesperson_db.lookup(transaction_record.pop("salesperson_id"))["store_id"])
    region = region_db.lookup(store["region_id"])

    dim_store = {
        "name": store["name"],
    }
    dim_region = {
        "name": region["region_name"],
    }

    def _merge_data(tx, transaction_record, dim_date, dim_customer, dim_store, dim_region):
        tx.run("""
        create (t:Transaction { id:{id}, sale:{sale}, quantity:{quantity}, profit:{profit}, date:{date} })
        merge (dim_date:DimDate { year:{year}, month:{month}, week:{week} } )
        merge (dim_customer:DimCustomer {name:{customer_name}, category:{customer_category}})
        merge (dim_product:DimProduct {name:{product_name}, category:{product_category}, product_id:{product_id}, inprice:{product_inprice}, price:{prodcut_price} })
        merge (dim_region:DimRegion {name:{region_name}})
        merge (dim_store:DimStore {name:{store_name}})

        create (t)-[:CREATE_AT]->(dim_date), (t)-[:CREATE_BY]->(dim_customer), (t)-[:IS]->(dim_product), (t)-[:IN]->(dim_region), (t)-[:IN]->(dim_store)
        """,id=transaction_record["id"],
                              sale=transaction_record["sale"],
                              quantity=transaction_record["quantity"],
                              profit=transaction_record["profit"],
                              date=transaction_record["date"],
                              year=dim_date["year"],
                              month=dim_date["month"],
                              week=dim_date["week"],
                              customer_name=dim_customer["name"],
                              customer_category=dim_customer["category"],
                              product_name=dim_product["name"],
                              product_category=dim_product["category"],
                              product_id=dim_product["product_id"],
                              product_inprice=dim_product["inprice"],
                              prodcut_price=dim_product["price"],
                              region_name =dim_region["name"],
                              store_name =dim_store["name"],)

    session.write_transaction(_merge_data,transaction_record,dim_date,dim_customer,dim_store,dim_region )


def load_data(batch_date):
    batch_datetime = datetime.datetime.strptime(batch_date, "%Y-%m-%d")
    cursor = transaction_db.select("where purchase_date = '{}'".format(batch_date))

    with client_neo4j.session() as session:
        session.write_transaction(delete_previous_data,batch_datetime)
        for transaction_record in cursor:
            transform_one_trasaction(transaction_record, session)


load_data("2013-03-13")
