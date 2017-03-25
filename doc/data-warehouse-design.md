# Our goals today
* determine the final structure of dim and fact table
    * add missing fields

* finish all the query
    4. aa
        * product: we use 'product_kind' to distinguish diff categories
        * customer: we use 'kind' to distinguish diff categories
    7. in dim_product, use type2 dimension
    8. we need to group by week & year
    9. TO BE Conitinue

* any problem in the query




## table structure
* fact_transaction
    * sale
    * profit
    * quantity

* dim_customer
    * type : varchar
    * name

* dim_product

* dim_date(time dimension)
    * date
    * year
    * week
    * month

* dim_store
    * name

* dim_region
    * name

* dim_product
    * id
    * name
    * inprice
    * price
    * make

test -- by Yue


