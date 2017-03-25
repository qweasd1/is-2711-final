# cautions: here we want to find the top customer, however, if several customer has the same sale, we also need to list them here, so we need to compare with the max

select dim_customer.name, sum(fact_transaction.sale) as total_sale
from fact_transaction,dim_customer
where fact_transaction.customer_id = dim_customer.id
  and dim_customer.category = 'business'
group by fact_transaction.customer_id
having sum(fact_transaction.sale) = (
	select max(total_sale) from (select sum(fact_transaction.sale) as total_sale
	from fact_transaction,dim_customer
	where fact_transaction.customer_id = dim_customer.id
	  and dim_customer.category = 'business'
	group by fact_transaction.customer_id) as sale

)
