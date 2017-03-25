# cautions: here one customer might buy one product more than 2 times in two different weeks which results in two duplicate records, we need to remove this by using distinct
## input
#  product_id:

select distinct dim_customer.name as customer_name
from fact_transaction,dim_product,dim_customer,dim_date
where fact_transaction.product_id = dim_product.id
  and dim_customer.id = fact_transaction.customer_id
  and dim_date.id = fact_transaction.date
  and dim_product.id = 1
group by fact_transaction.customer_id, dim_date.year, dim_date.week
having count(1) > 2