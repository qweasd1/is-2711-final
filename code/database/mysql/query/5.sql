# see here if we need to add a filter for year, currently we compare region sales for all history data

select dim_region.name, sum(fact_transaction.sale) as total_sale
from fact_transaction,dim_region
where fact_transaction.region_id = dim_region.id
group by fact_transaction.region_id
order by total_sale desc
