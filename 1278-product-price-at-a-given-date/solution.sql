select distinct Products.product_id, COALESCE(table1.new_price, 10) as price from Products LEFT JOIN
(select product_id, new_price, RANK() OVER (PARTITION BY product_id ORDER BY change_date desc) as rk from products
where change_date <= date("2019-08-16")) as table1 on Products.product_id = table1.product_id
where (rk = 1 or rk is null)

