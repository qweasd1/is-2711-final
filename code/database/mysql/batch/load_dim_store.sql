CREATE DEFINER=`root`@`%` PROCEDURE `load_dim_store`(
	_batch_id int
)
BEGIN

## insert
insert into dw.dim_store(id,name,batch_id)
SELECT
	vehicle.store.id,
	vehicle.store.name,
    _batch_id as batch_id
FROM vehicle.store
where not exists (
select id from dw.dim_store
where dw.dim_store.id = vehicle.store.id
);

## update
update dw.dim_store,vehicle.store
set
    dw.dim_store.name = vehicle.store.name,
    dw.dim_store.batch_id = _batch_id
where dw.dim_store.id = vehicle.store.id
  and (dw.dim_store.name <> vehicle.store.name);

END