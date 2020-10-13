select * from customers c limit 100

-- how many cities are our suppliers in
select count(distinct city) from suppliers s 

-- how many distinct products have been ordered
select count(distinct productid) from order_details od 


-- calculate in select
-- number of days it took for an order to reach
 
select customerid , orderdate , shippeddate , shippeddate - orderdate as daysToShip
from orders o 


-- amount spent on each order detail (price * quantity - discount)
select *, (unitprice * quantity * (1 - discount )) amountSpent from order_details od 

-- how many orders to Germany, which freight charges > 175 or < 50  // 82
select count(*) from orders o 
where shipcountry = 'Germany' and (freight < 50 or freight > 175)

-- how many order details with   10$ < unitprice < 20$   			// 803
select count(*) from order_details od 
where unitprice between 10 and 20


-- how many orders between two dates, in this case, in year 1997 		// 398
select count(*) from orders o 
where shippeddate between '1997-01-01' and '1997-12-31';

----------------------------------------------------------------------------------------------------
-- Working with schemas
----------------------------------------------------------------------------------------------------

-- AdventureWorks db has many schemas, by default, "public" is chosen, 
-- so if we need to get data from any other schema table, we need to do: 
-- "select * from db.schema.table" , like so:
select * from "AdventureWorks".humanresources.department d 

-- now when we select humanresources as the default table in DBeaver, the query simplifies to
select * from department d 

-- Also, as a result of having different schema than "public" set as default,
-- querying any schema no longer needs to have the "AdventureWorks" db name
-- below, we "production" is the schema, used without db name.
select * from production.culture c 