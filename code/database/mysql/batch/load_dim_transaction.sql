CREATE DEFINER=`root`@`%` PROCEDURE `load_fact_transaction`(
  _date date
)
BEGIN


truncate dw.stage_transaction;


# insert fact data into fact table
insert into dw.stage_transaction(id,date,customer_id,product_id,salesperson_id,quantity,sale,profit)
select
vehicle.transaction.id,
 _date as date,
 vehicle.transaction.customer_id,
 vehicle.transaction.product_id,
 vehicle.transaction.salesperson_id,
 vehicle.transaction.quantity,
 vehicle.transaction.quantity * vehicle.product.price as sale,
 vehicle.transaction.quantity * (vehicle.product.price - vehicle.product.inprice) as profit
from vehicle.transaction, vehicle.product
where vehicle.transaction.product_id = vehicle.product.id
  and vehicle.transaction.purchase_date = _date;


# update store/ region dimension
update dw.stage_transaction, vehicle.salesperson, vehicle.store, vehicle.region
set
	dw.stage_transaction.store_id = vehicle.store.id,
    dw.stage_transaction.region_id = vehicle.region.id
where dw.stage_transaction.salesperson_id = vehicle.salesperson.id
  and vehicle.salesperson.store_id = vehicle.store.id
  and vehicle.store.region_id = vehicle.region.id
  and dw.stage_transaction.date = _date;


# update product dimension

update dw.stage_transaction,(select dw.dim_product.id as product_dim_id, dw.dim_product.product_id
from dw.dim_product,dw.admin_batch_status
where dw.dim_product.batch_id = dw.admin_batch_status.id
  and dw.admin_batch_status.date = _date) as current_product
set
  dw.stage_transaction.product_dim_id = current_product.product_dim_id
where dw.stage_transaction.date = _date
  and dw.stage_transaction.product_id = current_product.product_id;


# insert data from stage into fact table
insert into dw.fact_transaction(id, date, customer_id, product_id, store_id, region_id, quantity, sale, profit)
select id, date, customer_id, product_dim_id, store_id, region_id, quantity, sale, profit
from dw.stage_transaction;


END