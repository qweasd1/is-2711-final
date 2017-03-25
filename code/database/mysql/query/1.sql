select (SELECT count(1)
FROM dw.dim_customer
where category = 'home') / (SELECT count(1)
FROM dw.dim_customer
where category = 'business') as ratio