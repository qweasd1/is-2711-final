CREATE DEFINER=`root`@`%` PROCEDURE `load_dim_region`(
	_batch_id int
)
BEGIN

## insert
insert into dw.dim_region(id,name,batch_id)
SELECT
	vehicle.region.id,
	vehicle.region.region_name,
    _batch_id as batch_id
FROM vehicle.region
where not exists (
select id from dw.dim_region
where dw.dim_region.id = vehicle.region.id
);

## update
update dw.dim_region,vehicle.region
set
    dw.dim_region.name = vehicle.region.region_name,
    dw.dim_region.batch_id = _batch_id
where dw.dim_region.id = vehicle.region.id
  and (dw.dim_region.name <> vehicle.region.region_name);

END