# the trick here is how we determine the previous month (if we cross the boudary of year)
# we just hardcode it, we will use variable in store procedure

## input
#  month
#  year

select dim_store.name as store_name, previous_month.total_sum as previous_month_sale, this_month.total_sum as this_month_sale
from dim_store,
(select dim_store.id, sum(fact_transaction.sale) as total_sum
from fact_transaction, dim_store, dim_date
where fact_transaction.store_id = dim_store.id
  and fact_transaction.date = dim_date.id
  and dim_date.month = 11
  and dim_date.year = 2016
group by dim_store.id) as previous_month,

(select dim_store.id, sum(fact_transaction.sale) as total_sum
from fact_transaction, dim_store, dim_date
where fact_transaction.store_id = dim_store.id
  and fact_transaction.date = dim_date.id
  and dim_date.month = 12
  and dim_date.year = 2016
group by dim_store.id) as this_month
where previous_month.id = this_month.id
  and previous_month.total_sum < this_month.total_sum

