CREATE DATABASE  production_tracking;
USE production_tracking;

CREATE TABLE production_orders(
order_id INT auto_increment primary KEY ,
product_name varchar(100),
quantity INT,
status varchar(20),
created_date DATE
);


INSERT INTO production_orders VALUES
(1,"SOLAR INVERTER",100,"PLANNED",curdate()),
(2,"BATTERY PACK",50,"RELEASED",curdate()),
(3,"EV CHARGER",30,"COMPLETED",curdate());


-- view all production orders
SELECT * from production_orders;

-- Tracking pending production 
-- pending = planned_released

SELECT product_name,quantity,status 
from production_orders
WHERE status != "COMPLETED";

-- track completed production 
SELECT product_name,quantity,status
From production_orders
where status = "COMPLETED";

-- Status wise summary
SELECT status, COUNT(*) AS total_orders
From production_orders
group by status;


