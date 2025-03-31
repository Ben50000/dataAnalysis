SELECT make, SUM(qtysold) AS qtysold
FROM vehicles.car_sales1
GROUP BY make;

SELECT year, SUM(qtysold) AS qtysold 
FROM vehicles.car_sales1
GROUP BY year;

SELECT selldate, SUM(qtysold) AS qtysold 
FROM vehicles.car_sales1
GROUP BY selldate;

SELECT selldate, SUM(costprice) AS costprice, SUM(sellingprice) AS sellingprice 
FROM vehicles.car_sales1
GROUP BY selldate;