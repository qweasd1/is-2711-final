# top 2 customer category
select dim_customer.category, sum(fact_transaction.sale) as total_sale
from fact_transaction,dim_customer
where fact_transaction.customer_id = dim_customer.id
  and fact_transaction.date = '2016-11-02'
group by dim_customer.category
order by total_sale desc
limit 2;

# top 2 product category
select dim_product.category, sum(fact_transaction.sale) as total_sale
from fact_transaction,dim_product
where fact_transaction.product_id = dim_product.id
  and fact_transaction.date = '2016-11-02'
group by dim_product.category
order by total_sale desc
limit 2;