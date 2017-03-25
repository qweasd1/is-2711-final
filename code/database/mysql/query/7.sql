# we use total_quantity for each price to measure the propensity for a given product

## input:
#  product_id

select dim_product.price, sum(fact_transaction.quantity) as total_quantity
from fact_transaction,dim_product
where fact_transaction.product_id = dim_product.id
  and dim_product.product_id = 1
group by dim_product.price;



# for all products
select dim_product.product_id, dim_product.name, dim_product.price, sum(fact_transaction.quantity) as total_quantity
from fact_transaction,dim_product
where fact_transaction.product_id = dim_product.id
group by dim_product.price, dim_product.product_id ,dim_product.name;