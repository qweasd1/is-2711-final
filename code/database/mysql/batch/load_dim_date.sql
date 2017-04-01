CREATE DEFINER=`root`@`%` PROCEDURE `load_dim_date`(
	_date date
)
BEGIN
insert dw.dim_date(id,year,month,week)
values (_date,year(_date),month(_date),week(_date));
END