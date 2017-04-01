CREATE DEFINER=`root`@`%` PROCEDURE `load_dim_customer`(
	_batch_id int
)
BEGIN

## insert
insert into dw.dim_customer
SELECT
	vehicle.customer.id,
	vehicle.customer.name,
    case vehicle.customer.kind
		when 0 then 'home'
		when 1 then 'business'
        when 2 then 'government'
        else 'unknown'
	end as category,
    _batch_id as batch_id
FROM vehicle.customer
where not exists (
select id from dw.dim_customer
where dw.dim_customer.id = vehicle.customer.id
);

## update
update dw.dim_customer,vehicle.customer
set dw.dim_customer.category = case vehicle.customer.kind
		when 0 then 'home'
		when 1 then 'business'
        when 2 then 'government'
        else 'unknown'
	end,
    dw.dim_customer.name = vehicle.customer.name,
    dw.dim_customer.batch_id = _batch_id
where dw.dim_customer.id = vehicle.customer.id
  and (case vehicle.customer.kind
		when 0 then 'home'
		when 1 then 'business'
        when 2 then 'government'
        else 'unknown'
	end <> dw.dim_customer.category
  or dw.dim_customer.name <> vehicle.customer.name);

END