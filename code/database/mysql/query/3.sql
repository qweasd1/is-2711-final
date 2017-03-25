## input
# date : the date you want to query the top5

# top 5 sales
select dim_product.name, sum(fact_transaction.sale) as total_sale
from fact_transaction,dim_product
where fact_transaction.product_id = dim_product.id
  and fact_transaction.date = '2016-11-02'
group by fact_transaction.product_id
order by total_sale desc
limit 5;

# top 5 profit
select dim_product.name, sum(fact_transaction.profit) as total_profit
from fact_transaction,dim_product
where fact_transaction.product_id = dim_product.id
  and fact_transaction.date = '2016-11-02'
group by fact_transaction.product_id
order by total_profit desc
limit 5;


# bottom 5 sales
select dim_product.name, sum(fact_transaction.sale) as total_sale
from fact_transaction,dim_product
where fact_transaction.product_id = dim_product.id
  and fact_transaction.date = '2016-11-02'
group by fact_transaction.product_id
order by total_sale asc
limit 5;

# bottom 5 profit
select dim_product.name, sum(fact_transaction.profit) as total_profit
from fact_transaction,dim_product
where fact_transaction.product_id = dim_product.id
  and fact_transaction.date = '2016-11-02'
group by fact_transaction.product_id
order by total_profit asc
limit 5;
