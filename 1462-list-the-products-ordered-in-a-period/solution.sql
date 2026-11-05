# Write your MySQL query statement below
select product_name, sum(unit) as unit from Orders Join Products ON Orders.product_id = Products.product_id
where order_date LIKE "2020-02%"
group by Orders.product_id
having sum(unit) >= 100
