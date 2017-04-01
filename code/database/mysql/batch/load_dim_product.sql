CREATE DEFINER=`root`@`%` PROCEDURE `load_dim_product`(
  _batch_id int
)
BEGIN
insert into dw.dim_product(product_id,name,inprice,price,category,batch_id)

select
	vehicle.product.id,
    product_name(vehicle.product.make,vehicle.product.model),
    vehicle.product.inprice,
    vehicle.product.price,
    vehicle.product.product_kind,
    _batch_id
from vehicle.product
  left join
	(select dw.dim_product.*
	from dw.dim_product,
	(select
	  dw.dim_product.product_id,
	  max(dw.dim_product.batch_id) as batch_id
	from dw.dim_product
	group by dw.dim_product.product_id) as latest
	where dw.dim_product.product_id = latest.product_id
	  and dw.dim_product.batch_id = latest.batch_id) as latest_dim
	on vehicle.product.id = latest_dim.product_id
    where latest_dim.product_id is null # new product
       or  (product_name(vehicle.product.make,vehicle.product.model) <> latest_dim.name or vehicle.product.inprice <> latest_dim.inprice or vehicle.product.price <> latest_dim.price or vehicle.product.product_kind <> latest_dim.category); # existing products

END