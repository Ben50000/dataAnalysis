/*extracting all the data for viewing*/
SELECT *
FROM vehicles.car_sales1;

/*removing the unneeded columns from the data*/
ALTER TABLE vehicles.car_sales1
DROP COLUMN trim;

ALTER TABLE vehicles.car_sales1
DROP COLUMN vin;

#extracting the month of sale from the saledate column
SELECT saledate, TRIM(MID(saledate,5,3)) AS selldate
FROM vehicles.car_sales1;

ALTER TABLE vehicles.car_sales1
DROP COLUMN saledate;

ALTER TABLE vehicles.car_sales1
ADD selldate VARCHAR(50);

UPDATE vehicles.car_sales1
SET selldate=TRIM(MID(saledate,5,3));

/*checking for columns that are without data */
SELECT make 
FROM vehicles.car_sales1
WHERE make = '' OR make = NULL;

SELECT body 
FROM vehicles.car_sales1
WHERE make = '' OR make = NULL;

/*renaming columns that could create bugs in the project*/
ALTER TABLE vehicles.car_sales1
RENAME COLUMN `qty sold` TO qtysold;

ALTER TABLE vehicles.car_sales1
RENAME COLUMN odometer TO mileage;

ALTER TABLE vehicles.car_sales1
RENAME COLUMN mmr TO costprice;