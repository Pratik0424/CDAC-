ASSIGNMENT 1

A) SALESPEOPLE
Snum int(4)
Sname varchar(10)
City varchar(10)
Comm float(3,2)

mysql> CREATE TABLE SALESPEOPLE (
    ->     Snum INT(4),
    ->     Sname VARCHAR(10),
    ->     City VARCHAR(10),
    ->     Comm FLOAT(3,2)
    -> );
	
B) CUSTOMERS
Cnum int(4)
Cname varchar(10)
City varchar(10)
Rating int(4)
Snum int(4)

	mysql>  CREATE TABLE CUSTOMERS (
    -> Cnum int(4),
    -> Cname varchar(10),
    -> City varchar(10),
    -> Rating int(4),
    -> Snum int(4)
    -> );

mysql> insert into SALESPEOPLE (Snum, Sname, City, Comm) VALUES
    -> (1001, 'Peel', 'London', 0.12),
    -> (1002, 'Serres', 'San Jose', 0.13),
    -> (1004, 'Motika', 'London', 0.11),
    -> (1007, 'Rifkin', 'Barcelona', 0.15),
    -> (1003, 'Axelrod', 'New York', 0.10);
Query OK, 5 rows affected (0.03 sec)

mysql> INSERT INTO CUSTOMERS (Cnum, Cname, City, Rating, Snum) VALUES
(2001, 'Hoffman', 'London', 100, 1001),
(2002, 'Giovanni', 'Rome', 200, 1003),
(2003, 'Liu', 'San Jose', 200, 1002),
(2004, 'Grass', 'Berlin', 300, 1002),
(2006, 'Clemens', 'London', 100, 1001),
(2008, 'Cisneros', 'San Jose', 300, 1007),
(2007, 'Pereira', 'Rome', 100, 1004);

mysql> INSERT INTO ORDERS (Onum, Amt, Odate, Cnum, Snum) VALUES
(3001, 18.69, '1990-10-03', 2008, 1007),
(3003, 767.19, '1990-10-03', 2001, 1001),
(3002, 1900.10, '1990-10-03', 2007, 1004),
(3005, 5160.45, '1990-10-03', 2003, 1002),
(3006, 1098.16, '1990-10-03', 2008, 1007),
(3009, 1713.23, '1990-10-04', 2002, 1003),
(3007, 75.75, '1990-10-04', 2004, 1002),
(3008, 4723.00, '1990-10-05', 2006, 1001),
(3010, 1309.95, '1990-10-06', 2004, 1002),
(3011, 9891.88, '1990-10-06', 2006, 1001);



ASSIGNMENT 2;

1) Which field of the Customers table is the primary key?
The primary key of the Customers table is the CNUM field. It's unique for each customer.

Q.2 mysql> select Rating from customers;
+--------+
| Rating |
+--------+
|    100 |
|    200 |
|    200 |
|    300 |
|    100 |
|    300 |
|    100 |
+--------+

Q.3 What is another word for row? For column?
Row: Record or Tuple.
Column: Field or Attribute.

Q.4 Why isn’t it possible to see the first five rows of a table?
-> the table contain >= 5 rows thats why.


ASSIGNMENT 3;

1) Does ANSI recognize the data type DATE?
Yes,It stores date values (year, month, day).

2) Which subdivision of SQL is used to insert values in tables?
DML (Data Manipulation Language) -> INSERT


ASSIGNMENT 4;

1) Write a select command that produces the order number, amount, and date for all rows in the Orders table.

mysql> select `Onum`,`Amt`, `Odate`
    -> from orders;
+------+---------+------------+
| Onum | Amt     | Odate      |
+------+---------+------------+
| 3001 |   18.69 | 1990-10-03 |
| 3003 |  767.19 | 1990-10-03 |
| 3002 | 1900.10 | 1990-10-03 |
| 3005 | 5160.45 | 1990-10-03 |
| 3006 | 1098.16 | 1990-10-03 |
| 3009 | 1713.23 | 1990-10-04 |
| 3007 |   75.75 | 1990-10-04 |
| 3008 | 4723.00 | 1990-10-05 |
| 3010 | 1309.95 | 1990-10-06 |
| 3011 | 9891.88 | 1990-10-06 |
+------+---------+------------+
10 rows in set (0.00 sec)


2) Write a query that produces all rows from the Customers table for which the salesperson’s number is 1001.

mysql> select * from salespeople
    -> where Snum = 1001;
+------+-------+--------+------+
| Snum | Sname | City   | Comm |
+------+-------+--------+------+
| 1001 | Peel  | London | 0.12 |
+------+-------+--------+------+
1 row in set (0.00 sec)



3) Write a query that displays the Salespeople table with the columns in the following order: city, sname, snum, comm.

mysql> select City, Sname, Snum, Comm from salespeople;
+-----------+---------+------+------+
| City      | Sname   | Snum | Comm |
+-----------+---------+------+------+
| London    | Peel    | 1001 | 0.12 |
| San Jose  | Serres  | 1002 | 0.13 |
| London    | Motika  | 1004 | 0.11 |
| Barcelona | Rifkin  | 1007 | 0.15 |
| New York  | Axelrod | 1003 | 0.10 |
+-----------+---------+------+------+
5 rows in set (0.00 sec)



4) Write a select command that produces the rating followed by the name of each customer in San Jose.

mysql> select * from customers
    -> where city = 'San Jose';
+------+----------+----------+--------+------+
| Cnum | Cname    | City     | Rating | Snum |
+------+----------+----------+--------+------+
| 2003 | Liu      | San Jose |    200 | 1002 |
| 2008 | Cisneros | San Jose |    300 | 1007 |
+------+----------+----------+--------+------+
2 rows in set (0.01 sec)



5) Write a query that will produce the snum values of all salespeople (suppress the duplicates) with orders in the Orders table.

mysql> select distinct Snum from orders;
+------+
| Snum |
+------+
| 1007 |
| 1001 |
| 1004 |
| 1002 |
| 1003 |
+------+
5 rows in set (0.00 sec)


ASSIGNMENT 5;

1) Write a query that will give you all orders for more than Rs. 1,000.

mysql> select * from orders
    -> where Amt > 1000;
+------+---------+------------+------+------+
| Onum | Amt     | Odate      | Cnum | Snum |
+------+---------+------------+------+------+
| 3002 | 1900.10 | 1990-10-03 | 2007 | 1004 |
| 3005 | 5160.45 | 1990-10-03 | 2003 | 1002 |
| 3006 | 1098.16 | 1990-10-03 | 2008 | 1007 |
| 3009 | 1713.23 | 1990-10-04 | 2002 | 1003 |
| 3008 | 4723.00 | 1990-10-05 | 2006 | 1001 |
| 3010 | 1309.95 | 1990-10-06 | 2004 | 1002 |
| 3011 | 9891.88 | 1990-10-06 | 2006 | 1001 |
+------+---------+------------+------+------+
7 rows in set (0.01 sec)




2) Write a query that will give you the names and cities of all salespeople in London with a commission above .10.

mysql> select * from salespeople
    -> where City = 'London' and Comm > '0.10';
+------+--------+--------+------+
| Snum | Sname  | City   | Comm |
+------+--------+--------+------+
| 1001 | Peel   | London | 0.12 |
| 1004 | Motika | London | 0.11 |
+------+--------+--------+------+
2 rows in set (0.01 sec)



3) Write a query on the Customers table whose output will exclude all customers with a rating <= 100, unless they are located in Rome.

mysql> select * from customers
    -> where rating <= 100 or city = 'rome';
+------+----------+--------+--------+------+
| Cnum | Cname    | City   | Rating | Snum |
+------+----------+--------+--------+------+
| 2001 | Hoffman  | London |    100 | 1001 |
| 2002 | Giovanni | Rome   |    200 | 1003 |
| 2006 | Clemens  | London |    100 | 1001 |
| 2007 | Pereira  | Rome   |    100 | 1004 |
+------+----------+--------+--------+------+
4 rows in set (0.00 sec)



4) What will be the output from the following query?
Select * from Orders
where (amt < 1000 OR
NOT (odate = ‘1990-10-03’
AND cnum > 2003));

 -> You have an error in your SQL syntax; bcoz - '' not use ‘1990-10-03’
// or
mysql> Select * from Orders
    -> where (amt < 1000 OR
    -> NOT (odate = '1990-10-03'
    -> AND cnum > 2003));
+------+---------+------------+------+------+
| Onum | Amt     | Odate      | Cnum | Snum |
+------+---------+------------+------+------+
| 3001 |   18.69 | 1990-10-03 | 2008 | 1007 |
| 3003 |  767.19 | 1990-10-03 | 2001 | 1001 |
| 3005 | 5160.45 | 1990-10-03 | 2003 | 1002 |
| 3009 | 1713.23 | 1990-10-04 | 2002 | 1003 |
| 3007 |   75.75 | 1990-10-04 | 2004 | 1002 |
| 3008 | 4723.00 | 1990-10-05 | 2006 | 1001 |
| 3010 | 1309.95 | 1990-10-06 | 2004 | 1002 |
| 3011 | 9891.88 | 1990-10-06 | 2006 | 1001 |
+------+---------+------------+------+------+
8 rows in set (0.02 sec)


5) What will be the output of the following query?
Select * from Orders
where NOT ((odate = ‘1990-10-03’ OR snum
>1006) AND amt >= 1500);

mysql> Select * from Orders
    -> where NOT ((odate = '1990-10-03' OR snum
    -> >1006) AND amt >= 1500);
+------+---------+------------+------+------+
| Onum | Amt     | Odate      | Cnum | Snum |
+------+---------+------------+------+------+
| 3001 |   18.69 | 1990-10-03 | 2008 | 1007 |
| 3003 |  767.19 | 1990-10-03 | 2001 | 1001 |
| 3006 | 1098.16 | 1990-10-03 | 2008 | 1007 |
| 3009 | 1713.23 | 1990-10-04 | 2002 | 1003 |
| 3007 |   75.75 | 1990-10-04 | 2004 | 1002 |
| 3008 | 4723.00 | 1990-10-05 | 2006 | 1001 |
| 3010 | 1309.95 | 1990-10-06 | 2004 | 1002 |
| 3011 | 9891.88 | 1990-10-06 | 2006 | 1001 |
+------+---------+------------+------+------+
8 rows in set (0.00 sec)



6) What is a simpler way to write this query?
Select snum, sname, city, comm From Salespeople where (comm > .12 OR comm <.14);

mysql> select snum, sname, city, comm From Salespeople where comm between 0.
12 and 0.14;
+------+--------+----------+------+
| snum | sname  | city     | comm |
+------+--------+----------+------+
| 1002 | Serres | San Jose | 0.13 |
+------+--------+----------+------+
1 row in set (0.00 sec)


ASSIGNMENT 6;

Using Special Operators in Conditions.

1) Write two different queries that would produce all orders taken on October 3rd or 4th, 1990.

mysql> select *from orders
    -> where Odate between '1990-20-03' and '1990-10-04';
+------+---------+------------+------+------+
| Onum | Amt     | Odate      | Cnum | Snum |
+------+---------+------------+------+------+
| 3001 |   18.69 | 1990-10-03 | 2008 | 1007 |
| 3003 |  767.19 | 1990-10-03 | 2001 | 1001 |
| 3002 | 1900.10 | 1990-10-03 | 2007 | 1004 |
| 3005 | 5160.45 | 1990-10-03 | 2003 | 1002 |
| 3006 | 1098.16 | 1990-10-03 | 2008 | 1007 |
| 3009 | 1713.23 | 1990-10-04 | 2002 | 1003 |
| 3007 |   75.75 | 1990-10-04 | 2004 | 1002 |
+------+---------+------------+------+------+
7 rows in set, 10 warnings (0.01 sec)


mysql> select * from orders 
where Odate >= '1990-10-03' and odate <= '1990-10-04';
+------+---------+------------+------+------+
| Onum | Amt     | Odate      | Cnum | Snum |
+------+---------+------------+------+------+
| 3001 |   18.69 | 1990-10-03 | 2008 | 1007 |
| 3003 |  767.19 | 1990-10-03 | 2001 | 1001 |
| 3002 | 1900.10 | 1990-10-03 | 2007 | 1004 |
| 3005 | 5160.45 | 1990-10-03 | 2003 | 1002 |
| 3006 | 1098.16 | 1990-10-03 | 2008 | 1007 |
| 3009 | 1713.23 | 1990-10-04 | 2002 | 1003 |
| 3007 |   75.75 | 1990-10-04 | 2004 | 1002 |
+------+---------+------------+------+------+
7 rows in set (0.00 sec)



2) Write a query that selects all of the customers serviced by Peel or Motika.
(Hint: the snum field relates the two tables to one another).

mysql> select * from customers
    -> where snum In(select snum from salespeople
    -> where sname = 'Peel' OR sname = 'Motika');
+------+---------+--------+--------+------+
| Cnum | Cname   | City   | Rating | Snum |
+------+---------+--------+--------+------+
| 2001 | Hoffman | London |    100 | 1001 |
| 2006 | Clemens | London |    100 | 1001 |
| 2007 | Pereira | Rome   |    100 | 1004 |
+------+---------+--------+--------+------+
3 rows in set (0.02 sec)



3) Write a query that will produce all the customers whose names begin with a letter from ‘A’ to ‘G’.

mysql> select * from customers
    -> where Cname REGEXP '^[A-G]';
+------+----------+----------+--------+------+
| Cnum | Cname    | City     | Rating | Snum |
+------+----------+----------+--------+------+
| 2002 | Giovanni | Rome     |    200 | 1003 |
| 2004 | Grass    | Berlin   |    300 | 1002 |
| 2006 | Clemens  | London   |    100 | 1001 |
| 2008 | Cisneros | San Jose |    300 | 1007 |
+------+----------+----------+--------+------+
4 rows in set (0.00 sec)




4) Write a query that selects all customers whose names begin with the letter ‘C’.

mysql> select * from customers
    -> where Cname like 'C%';
+------+----------+----------+--------+------+
| Cnum | Cname    | City     | Rating | Snum |
+------+----------+----------+--------+------+
| 2006 | Clemens  | London   |    100 | 1001 |
| 2008 | Cisneros | San Jose |    300 | 1007 |
+------+----------+----------+--------+------+
2 rows in set (0.00 sec)



5) Write a query that selects all orders except those with zeroes or NULLs in the amt field.

mysql> select * from orders
    -> where Amt is not null and amt != 0;;

//or

mysql> select * from orders
    -> where Amt > 0;
+------+---------+------------+------+------+
| Onum | Amt     | Odate      | Cnum | Snum |
+------+---------+------------+------+------+
| 3001 |   18.69 | 1990-10-03 | 2008 | 1007 |
| 3003 |  767.19 | 1990-10-03 | 2001 | 1001 |
| 3002 | 1900.10 | 1990-10-03 | 2007 | 1004 |
| 3005 | 5160.45 | 1990-10-03 | 2003 | 1002 |
| 3006 | 1098.16 | 1990-10-03 | 2008 | 1007 |
| 3009 | 1713.23 | 1990-10-04 | 2002 | 1003 |
| 3007 |   75.75 | 1990-10-04 | 2004 | 1002 |
| 3008 | 4723.00 | 1990-10-05 | 2006 | 1001 |
| 3010 | 1309.95 | 1990-10-06 | 2004 | 1002 |
| 3011 | 9891.88 | 1990-10-06 | 2006 | 1001 |
+------+---------+------------+------+------+
10 rows in set (0.01 sec)



Assignment –7;

Summarizing Data with Aggregate Functions.

1) Write a query that counts all orders for October 3.

mysql> select * from orders
    -> where odate = '1990-10-03'
    -> order by 1;
+------+---------+------------+------+------+
| Onum | Amt     | Odate      | Cnum | Snum |
+------+---------+------------+------+------+
| 3001 |   18.69 | 1990-10-03 | 2008 | 1007 |
| 3002 | 1900.10 | 1990-10-03 | 2007 | 1004 |
| 3003 |  767.19 | 1990-10-03 | 2001 | 1001 |
| 3005 | 5160.45 | 1990-10-03 | 2003 | 1002 |
| 3006 | 1098.16 | 1990-10-03 | 2008 | 1007 |
+------+---------+------------+------+------+
5 rows in set (0.01 sec)




2) Write a query that counts the number of different non-NULL city values in the Customers table.

mysql> select * from customers
    -> where City is not null;
+------+----------+----------+--------+------+
| Cnum | Cname    | City     | Rating | Snum |
+------+----------+----------+--------+------+
| 2001 | Hoffman  | London   |    100 | 1001 |
| 2002 | Giovanni | Rome     |    200 | 1003 |
| 2003 | Liu      | San Jose |    200 | 1002 |
| 2004 | Grass    | Berlin   |    300 | 1002 |
| 2006 | Clemens  | London   |    100 | 1001 |
| 2008 | Cisneros | San Jose |    300 | 1007 |
| 2007 | Pereira  | Rome     |    100 | 1004 |
+------+----------+----------+--------+------+
7 rows in set (0.01 sec)



3) Write a query that selects each customer’s smallest order.

mysql> select min(amt) as smallest_orders from orders;
+-----------------+
| smallest_orders |
+-----------------+
|           18.69 |
+-----------------+
1 row in set (0.00 sec)



4) Write a query that selects the first customer, in alphabetical order, whose name begins with G.

mysql> select * from customers
    -> where Cname like 'G%'
    -> limit 1;
+------+----------+------+--------+------+
| Cnum | Cname    | City | Rating | Snum |
+------+----------+------+--------+------+
| 2002 | Giovanni | Rome |    200 | 1003 |
+------+----------+------+--------+------+
1 row in set (0.00 sec)



5) Write a query that selects the highest rating in each city.

mysql> select max(Rating) from customers;
+-------------+
| max(Rating) |
+-------------+
|         300 |
+-------------+
1 row in set (0.00 sec)



6) Write a query that counts the number of salespeople registering orders for each day. (If a salesperson has more than one order on a given day, he or she should be counted only once).

mysql> select Odate, count(DISTINCT Snum) as salespeople_count
    -> from orders
    -> group by Odate;
+------------+-------------------+
| Odate      | salespeople_count |
+------------+-------------------+
| 1990-10-03 |                 4 |
| 1990-10-04 |                 2 |
| 1990-10-05 |                 1 |
| 1990-10-06 |                 2 |
+------------+-------------------+
4 rows in set (0.01 sec)



Assignment –8;

Formatting Query output.

1) Assume each salesperson has a 12% commission. Write a query on the orders table that will produce the order number, the salesperson number, and the amount of the salesperson’s commission for that order.

mysql> select Onum, Snum, 0.12*Amt as commission from orders;
+------+------+------------+
| Onum | Snum | commission |
+------+------+------------+
| 3001 | 1007 |       2.24 |
| 3003 | 1001 |      92.06 |
| 3002 | 1004 |     228.01 |
| 3005 | 1002 |     619.25 |
| 3006 | 1007 |     131.78 |
| 3009 | 1003 |     205.59 |
| 3007 | 1002 |       9.09 |
| 3008 | 1001 |     566.76 |
| 3010 | 1002 |     157.19 |
| 3011 | 1001 |    1187.03 |
+------+------+------------+
10 rows in set (0.01 sec)



2) Write a query on the Customers table that will find the highest rating in each city. Put the output in this form:
For the city (city), the highest rating is : (rating).

mysql> select concat (city, max(rating)) as result 
	-> from customers
    -> group by City;
+-------------+
| result      |
+-------------+
| London100   |
| Rome200     |
| San Jose300 |
| Berlin300   |
+-------------+
4 rows in set (0.01 sec)



3) Write a query that lists customers in descending order of rating. Output the rating field first, followed by the customer’s name and number.

mysql> select rating, Cname,Cnum from customers
    -> order by rating desc;
+--------+----------+------+
| rating | Cname    | Cnum |
+--------+----------+------+
|    300 | Grass    | 2004 |
|    300 | Cisneros | 2008 |
|    200 | Giovanni | 2002 |
|    200 | Liu      | 2003 |
|    100 | Hoffman  | 2001 |
|    100 | Clemens  | 2006 |
|    100 | Pereira  | 2007 |
+--------+----------+------+
7 rows in set (0.01 sec)



4) Write a query that totals the orders for each day and places the results in descending order.

mysql> select Odate, sum(Amt) as total_orders
    -> from orders
    -> group by Odate
    -> order by total_orders desc;
+------------+--------------+
| Odate      | total_orders |
+------------+--------------+
| 1990-10-06 |     11201.83 |
| 1990-10-03 |      8944.59 |
| 1990-10-05 |      4723.00 |
| 1990-10-04 |      1788.98 |
+------------+--------------+
4 rows in set (0.01 sec)


Assignment – 9;

Querying Multiple Tables at Once.

1) Write a query that lists each order number followed by the name of the customer who made the order.

mysql> select Onum, Cname from orders, customers
    -> where orders.Cnum = customers.Cnum;
+------+----------+
| Onum | Cname    |
+------+----------+
| 3001 | Cisneros |
| 3003 | Hoffman  |
| 3002 | Pereira  |
| 3005 | Liu      |
| 3006 | Cisneros |
| 3009 | Giovanni |
| 3007 | Grass    |
| 3008 | Clemens  |
| 3010 | Grass    |
| 3011 | Clemens  |
+------+----------+
10 rows in set (0.02 sec)



2) Write a query that gives the names of both the salesperson and the customer for each order along with the order number.

mysql> select O.Onum as orderNumber, C.Cname as customerName, S.Sname as salespersonName
    -> from orders O
    -> join Customers C ON O.Cnum = C.Cnum
    -> JOIN Salespeople S ON O.Snum = S.Snum;
+-------------+--------------+-----------------+
| orderNumber | customerName | salespersonName |
+-------------+--------------+-----------------+
|        3003 | Hoffman      | Peel            |
|        3009 | Giovanni     | Axelrod         |
|        3005 | Liu          | Serres          |
|        3010 | Grass        | Serres          |
|        3007 | Grass        | Serres          |
|        3011 | Clemens      | Peel            |
|        3008 | Clemens      | Peel            |
|        3006 | Cisneros     | Rifkin          |
|        3001 | Cisneros     | Rifkin          |
|        3002 | Pereira      | Motika          |
+-------------+--------------+-----------------+
10 rows in set (0.00 sec)



3) Write a query that produces all customers serviced by salespeople with a commission above 12%. Output the customer’s name, the salesperson’s name, and the salesperson’s rate of commission.

mysql> SELECT C.Cname AS Customer_Name, S.Sname AS Salesperson_Name, S.Comm AS Commission_Rate
    -> FROM Customers C
    -> JOIN Salespeople S ON C.Snum = S.Snum
    -> WHERE S.Comm > 0.12;
+---------------+------------------+-----------------+
| Customer_Name | Salesperson_Name | Commission_Rate |
+---------------+------------------+-----------------+
| Liu           | Serres           |            0.13 |
| Grass         | Serres           |            0.13 |
| Cisneros      | Rifkin           |            0.15 |
+---------------+------------------+-----------------+
3 rows in set (0.00 sec)



4) Write a query that calculates the amount of the salesperson’s commission on each order by a customer with a rating above 100.

mysql> SELECT C.Cname AS customerName, S.Sname AS salespersonName, O.Amt AS orderAmount, O.Amt * S.Comm AS salespersonCommission
    -> FROM Customers C
    -> JOIN Orders O ON C.Cnum = O.Cnum
    -> JOIN Salespeople S ON O.Snum = S.Snum
    -> WHERE C.Rating > 100;
+--------------+-----------------+-------------+-----------------------+
| customerName | salespersonName | orderAmount | salespersonCommission |
+--------------+-----------------+-------------+-----------------------+
| Grass        | Serres          |     1309.95 |                170.29 |
| Grass        | Serres          |       75.75 |                  9.85 |
| Liu          | Serres          |     5160.45 |                670.86 |
| Cisneros     | Rifkin          |     1098.16 |                164.72 |
| Cisneros     | Rifkin          |       18.69 |                  2.80 |
| Giovanni     | Axelrod         |     1713.23 |                171.32 |
+--------------+-----------------+-------------+-----------------------+
6 rows in set (0.00 sec)


Assignment – 10;

Joining a Table to Itself.

1) Write a query that produces all pairs of salespeople who are living in the same city. Exclude combinations of salespeople with themselves as well as duplicate rows with the order reversed.

mysql> select s1.sname as salesperson1, s2.sname as salesperson2, s1.city
    -> from salespeople s1
    -> join salespeople s2 on s1.city = s2.city
    -> where s1.snum < s2.snum;
+--------------+--------------+--------+
| salesperson1 | salesperson2 | city   |
+--------------+--------------+--------+
| Peel         | Motika       | London |
+--------------+--------------+--------+
1 row in set (0.00 sec)



2) Write a query that produces the names and cities of all customers with the same rating as Hoffman.

mysql> select Cname, city from customers
    -> where rating = (select rating from customers where Cname = 'Hoffman');
+---------+--------+
| Cname   | city   |
+---------+--------+
| Hoffman | London |
| Clemens | London |
| Pereira | Rome   |
+---------+--------+
3 rows in set (0.02 sec)


Assignment – 11

Subqueries.

1) Write a query that uses a subquery to obtain all orders for the customer named Cisneros. Assume you do not know his customer number (cnum).

mysql> select O.Onum, O.Amt , O.Odate from orders O
    -> where o.Cnum = (select C.Cnum from customers C where C.Cname = 'Cisneros');
+------+---------+------------+
| Onum | Amt     | Odate      |
+------+---------+------------+
| 3001 |   18.69 | 1990-10-03 |
| 3006 | 1098.16 | 1990-10-03 |
+------+---------+------------+
2 rows in set (0.00 sec)



2) Write a query that produces the names and ratings of all customers who have above-average orders.

mysql> select C.Cname, C.Rating from customers c
    -> join orders O on C.Cnum = O.Cnum
    -> group by C.Cnum, C.Cname, C.rating
    -> having sum(O.Amt) > (select avg(O.Amt) from orders O);
+---------+--------+
| Cname   | Rating |
+---------+--------+
| Liu     |    200 |
| Clemens |    100 |
+---------+--------+
2 rows in set (0.01 sec)


3) Write a query that selects the total amount in orders for each salesperson for whom this total is greater than the amount of the largest order in the table.

mysql> select O.Snum, sum(O.Amt) as totalOrderAmount from orders o
    -> group by o.snum
    -> having sum(O.Amt) > (select max(o2.Amt) from orders o2);
+------+------------------+
| Snum | totalOrderAmount |
+------+------------------+
| 1001 |         15382.07 |
+------+------------------+
1 row in set (0.00 sec)


Assignment – 12

Using the operators IN, ANY, and ALL.

1) Write a query that selects all customers whose ratings are equal to or greater than ANY of Serres’.

mysql> select * from customers
    -> where rating >= any(select rating from customers where snum = 1002);
+------+----------+----------+--------+------+
| Cnum | Cname    | City     | Rating | Snum |
+------+----------+----------+--------+------+
| 2002 | Giovanni | Rome     |    200 | 1003 |
| 2003 | Liu      | San Jose |    200 | 1002 |
| 2004 | Grass    | Berlin   |    300 | 1002 |
| 2008 | Cisneros | San Jose |    300 | 1007 |
+------+----------+----------+--------+------+
4 rows in set (0.01 sec)



2) Write a query using ANY or ALL that will find all salespeople who have no customers located in their city.

mysql> select Sname from salespeople
    -> where Snum not in(
    -> select Snum from customers
    -> where customers.city = salespeople.city );
+---------+
| Sname   |
+---------+
| Motika  |
| Rifkin  |
| Axelrod |
+---------+
3 rows in set (0.01 sec)



3) Write a query that selects all orders for amounts greater than any for the customers in London.

mysql> select * from orders
    -> where amt > any (
    -> select amt from orders
    -> where Cnum in (select Cnum from customers where city = 'london'));
+------+---------+------------+------+------+
| Onum | Amt     | Odate      | Cnum | Snum |
+------+---------+------------+------+------+
| 3002 | 1900.10 | 1990-10-03 | 2007 | 1004 |
| 3005 | 5160.45 | 1990-10-03 | 2003 | 1002 |
| 3006 | 1098.16 | 1990-10-03 | 2008 | 1007 |
| 3009 | 1713.23 | 1990-10-04 | 2002 | 1003 |
| 3008 | 4723.00 | 1990-10-05 | 2006 | 1001 |
| 3010 | 1309.95 | 1990-10-06 | 2004 | 1002 |
| 3011 | 9891.88 | 1990-10-06 | 2006 | 1001 |
+------+---------+------------+------+------+
7 rows in set (0.01 sec)



4) Write the above query using MIN or MAX.

mysql> select * from orders
    -> where amt >= (
    -> select max(amt) from orders
    -> where Cnum in (select Cnum from customers where city = 'London'));
+------+---------+------------+------+------+
| Onum | Amt     | Odate      | Cnum | Snum |
+------+---------+------------+------+------+
| 3011 | 9891.88 | 1990-10-06 | 2006 | 1001 |
+------+---------+------------+------+------+
1 row in set (0.00 sec)



Assignment – 13

Using the UNION clause.

1) Create a union of two queries that shows the names, cities, and ratings of all customers. Those with rating of 200 or greater will also have the words “High Rating”, while the others will have the words “Low Rating”.

mysql> select Cname , city , rating, 'High Rating' as rabel_label
    -> from customers
    -> where rating >= 200
    -> union
    -> select Cname , city , rating, 'Low Rating' as rabel_label
    -> from customers
    -> where rating < 200;
+----------+----------+--------+-------------+
| Cname    | city     | rating | rabel_label |
+----------+----------+--------+-------------+
| Giovanni | Rome     |    200 | High Rating |
| Liu      | San Jose |    200 | High Rating |
| Grass    | Berlin   |    300 | High Rating |
| Cisneros | San Jose |    300 | High Rating |
| Hoffman  | London   |    100 | Low Rating  |
| Clemens  | London   |    100 | Low Rating  |
| Pereira  | Rome     |    100 | Low Rating  |
+----------+----------+--------+-------------+
7 rows in set (0.00 sec)




2) Write a command that produces the name and number of each salesperson and each customer with more than one current order. Put the results in alphabetical order.

mysql> select Sname,Snum from salespeople
    -> where Snum in(
    -> select Snum from orders
    -> group by snum
    -> having count(Onum) > 1)
    -> union
    -> select Cname, Cnum from customers
    -> where Cnum in (
    -> select Cnum from orders
    -> group by Cnum
    -> having count(Cnum) > 1)
    -> order by 1;
+----------+------+
| Sname    | Snum |
+----------+------+
| Cisneros | 2008 |
| Clemens  | 2006 |
| Grass    | 2004 |
| Peel     | 1001 |
| Rifkin   | 1007 |
| Serres   | 1002 |
+----------+------+
6 rows in set (0.02 sec)




3) Form a union of three queries. Have 
the first select the snums of all salespeople in San Jose; 
the second, the cnums of all customers in San Jose; and 
the third the onums of all orders on October 3. 
Retain duplicates between the last two queries but eliminate any redundancies between either of them and the first.
(Note: in the sample tables as given, there would be no such redundancy. This is besides the point.)

mysql> select Snum from salespeople
    -> where city = 'San Jose'
    -> union
    -> select Cnum from customers
    -> where city = 'San Jose'
    -> union all
    -> select Onum from orders
    -> where odate = '1990-10-03';
+------+
| Snum |
+------+
| 1002 |
| 2003 |
| 2008 |
| 3001 |
| 3003 |
| 3002 |
| 3005 |
| 3006 |
+------+
8 rows in set (0.02 sec)


Assignment – 14

Entering, Deleting, and Changing Field Values.

1) Write a command that puts the following values, in their given order, into the salespeople table: 
city – San Jose, name – Blanco, comm – NULL, snum – 1100.

mysql> select * from salespeople;
+------+---------+-----------+------+
| Snum | Sname   | City      | Comm |
+------+---------+-----------+------+
| 1001 | Peel    | London    | 0.12 |
| 1002 | Serres  | San Jose  | 0.13 |
| 1004 | Motika  | London    | 0.11 |
| 1007 | Rifkin  | Barcelona | 0.15 |
| 1003 | Axelrod | New York  | 0.10 |
| 1100 | Blanco  | San Jose  | NULL |
+------+---------+-----------+------+
6 rows in set (0.00 sec)



2) Write a command that removes all orders from customer Clemens from the Orders table.

 create table orders_backup AS select * from orders; --backup 
 
mysql> delete from orders_backup
    -> where Cnum = (
    -> select Cnum from customers
    -> where Cname = 'Clemens');
Query OK, 2 rows affected (0.03 sec)

mysql> select * from orders_backup;
+------+---------+------------+------+------+
| Onum | Amt     | Odate      | Cnum | Snum |
+------+---------+------------+------+------+
| 3001 |   18.69 | 1990-10-03 | 2008 | 1007 |
| 3003 |  767.19 | 1990-10-03 | 2001 | 1001 |
| 3002 | 1900.10 | 1990-10-03 | 2007 | 1004 |
| 3005 | 5160.45 | 1990-10-03 | 2003 | 1002 |
| 3006 | 1098.16 | 1990-10-03 | 2008 | 1007 |
| 3009 | 1713.23 | 1990-10-04 | 2002 | 1003 |
| 3007 |   75.75 | 1990-10-04 | 2004 | 1002 |
| 3010 | 1309.95 | 1990-10-06 | 2004 | 1002 |
+------+---------+------------+------+------+
8 rows in set (0.00 sec)



3) Write a command that increases the rating of all customers in Rome by 100.

mysql> update customers_backup
    -> set rating =  rating + 100
    -> where city = 'Rome';
Query OK, 2 rows affected (0.02 sec)
Rows matched: 2  Changed: 2  Warnings: 0

mysql> select * from customers_backup;
+------+----------+----------+--------+------+
| Cnum | Cname    | City     | Rating | Snum |
+------+----------+----------+--------+------+
| 2001 | Hoffman  | London   |    100 | 1001 |
| 2002 | Giovanni | Rome     |    300 | 1003 |
| 2003 | Liu      | San Jose |    200 | 1002 |
| 2004 | Grass    | Berlin   |    300 | 1002 |
| 2006 | Clemens  | London   |    100 | 1001 |
| 2008 | Cisneros | San Jose |    300 | 1007 |
| 2007 | Pereira  | Rome     |    200 | 1004 |
+------+----------+----------+--------+------+
7 rows in set (0.00 sec)



4) Salesperson Serres has left the company. Assign her customers to Motika.

mysql> create table salespeople_backup as select * from salespeople;
Query OK, 6 rows affected, 1 warning (0.05 sec)
Records: 6  Duplicates: 0  Warnings: 1

mysql> update salespeople_backup
    -> set sname = 'Motika'
    -> where Sname = 'Serres';
Query OK, 1 row affected (0.02 sec)
Rows matched: 1  Changed: 1  Warnings: 0

mysql> select * from salespeople_backup;
+------+---------+-----------+------+
| Snum | Sname   | City      | Comm |
+------+---------+-----------+------+
| 1001 | Peel    | London    | 0.12 |
| 1002 | Motika  | San Jose  | 0.13 |
| 1004 | Motika  | London    | 0.11 |
| 1007 | Rifkin  | Barcelona | 0.15 |
| 1003 | Axelrod | New York  | 0.10 |
| 1100 | Blanco  | San Jose  | NULL |
+------+---------+-----------+------+
6 rows in set (0.00 sec)



Assignment – 15

Using Subqueries with DML Commands.

1) Assume there is a table called Multicust, with all of the same column definitions as Salespeople. Write a command that inserts all salespeople with more than one customer into this table.

mysql> CREATE TABLE Multicust (
    ->     Snum INT,
    ->     Sname VARCHAR(50),
    ->     City VARCHAR(50),
    ->     Comm DECIMAL(5, 2)
    -> );
Query OK, 0 rows affected (0.04 sec)

mysql> insert into Multicust (Snum, Sname, City, Comm)
    -> select S.Snum, S.Sname, S.City, S.Comm
    -> from Salespeople S
    -> where S.Snum IN (
    ->     select C.Snum
    ->     from customers C
    ->     group BY C.Snum
    ->     having count(C.Cnum) > 1
    -> );
Query OK, 2 rows affected, 2 warnings (0.02 sec)
Records: 2  Duplicates: 0  Warnings: 2

mysql> select * from Multicust;
+------+--------+----------+------+
| Snum | Sname  | City     | Comm |
+------+--------+----------+------+
| 1001 | Peel   | London   | 0.12 |
| 1002 | Serres | San Jose | 0.13 |
+------+--------+----------+------+
2 rows in set (0.00 sec)

mysql> SHOW WARNINGS;
+-------+------+-------------------------------------------+
| Level | Code | Message                                   |
+-------+------+-------------------------------------------+
| Note  | 1265 | Data truncated for column 'Comm' at row 1 |
| Note  | 1265 | Data truncated for column 'Comm' at row 1 |
+-------+------+-------------------------------------------+
2 rows in set (0.00 sec)



2) Write a command that deletes all customers with no current orders.

mysql> delete from customers_backup
    -> where Cnum not in (
    -> select Cnum from orders
    -> );
Query OK, 0 rows affected (0.00 sec)



3) Write a command that increases by twenty percent the commissions of all salespeople with total orders above Rs. 3,000.

mysql> update salespeople_backup
    -> set Comm = Comm * 1.20
    -> where Snum in(
    -> select Snum from orders
    -> group by Snum
    -> having sum(Amt) > 3000
    -> );
Query OK, 2 rows affected (0.02 sec)
Rows matched: 2  Changed: 2  Warnings: 0

mysql> select * from salespeople_backup;
+------+---------+-----------+------+
| Snum | Sname   | City      | Comm |
+------+---------+-----------+------+
| 1001 | Peel    | London    | 0.14 |
| 1002 | Motika  | San Jose  | 0.16 |
| 1004 | Motika  | London    | 0.11 |
| 1007 | Rifkin  | Barcelona | 0.15 |
| 1003 | Axelrod | New York  | 0.10 |
| 1100 | Blanco  | San Jose  | NULL |
+------+---------+-----------+------+
6 rows in set (0.00 sec)
