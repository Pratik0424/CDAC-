Exercise 4:

1. Display the minimum Status in the Supplier table.

mysql> SELECT MIN(Status) AS MinStatus FROM Supplier;
+-----------+
| MinStatus |
+-----------+
|        11 |
+-----------+
1 row in set (0.01 sec)



2. Display the maximum Weight in the Parts table.

mysql> SELECT MAX(Weight) AS MaxWeight FROM Part;
+-----------+
| MaxWeight |
+-----------+
|     14.50 |
+-----------+
1 row in set (0.00 sec)


3. Display the average Weight of the Parts.

mysql> SELECT AVG(Weight) AS AvgWeight FROM Part;
+-----------+
| AvgWeight |
+-----------+
| 10.800000 |
+-----------+
1 row in set (0.00 sec)


4. Display the total Quantity sold for part ‘P1’.

mysql> select * from sales;
+--------+--------+----------+------------+
| SaleID | PartID | Quantity | SaleDate   |
+--------+--------+----------+------------+
|      1 | P1     |      500 | 2024-01-01 |
|      2 | P1     |      300 | 2024-02-15 |
|      3 | P2     |     1000 | 2024-01-20 |
|      4 | P3     |      850 | 2024-02-10 |
|      5 | P2     |     1200 | 2024-03-05 |
|      6 | P3     |      900 | 2024-03-15 |
|      7 | P1     |     1500 | 2024-04-10 |
+--------+--------+----------+------------+
7 rows in set (0.00 sec)

mysql> SELECT SUM(Quantity) AS TotalQuantitySold
    -> FROM Sales
    -> WHERE PartID = 'P1';
+-------------------+
| TotalQuantitySold |
+-------------------+
|              2300 |
+-------------------+
1 row in set (0.00 sec)


5. Display the total Quantity sold for each part.

mysql> SELECT PartID, SUM(Quantity) AS TotalQuantitySold
    -> FROM Sales
    -> GROUP BY PartID;
+--------+-------------------+
| PartID | TotalQuantitySold |
+--------+-------------------+
| P1     |              2300 |
| P2     |              2200 |
| P3     |              1750 |
+--------+-------------------+
3 rows in set (0.01 sec)


6. Display the average Quantity sold for each part.

mysql> SELECT PartID, AVG(Quantity) AS AvgQuantitySold
    -> FROM Sales
    -> GROUP BY PartID;
+--------+-----------------+
| PartID | AvgQuantitySold |
+--------+-----------------+
| P1     |        766.6667 |
| P2     |       1100.0000 |
| P3     |        875.0000 |
+--------+-----------------+
3 rows in set (0.00 sec)


7. Display the maximum Quantity sold for each part, provided the maximum Quantity is greater than 800.

mysql> SELECT PartID, MAX(Quantity) AS MaxQuantitySold
    -> FROM Sales
    -> GROUP BY PartID
    -> HAVING MAX(Quantity) > 800;
+--------+-----------------+
| PartID | MaxQuantitySold |
+--------+-----------------+
| P1     |            1500 |
| P2     |            1200 |
| P3     |             900 |
+--------+-----------------+
3 rows in set (0.01 sec) 


8. Display the Status and the count of Suppliers with that Status.

mysql> SELECT Status, COUNT(*) AS SupplierCount
    -> FROM Supplier
    -> GROUP BY Status;
+--------+---------------+
| Status | SupplierCount |
+--------+---------------+
|     15 |             1 |
|     12 |             1 |
|     18 |             1 |
|     20 |             1 |
|     11 |             1 |
|     13 |             1 |
|     16 |             1 |
+--------+---------------+
7 rows in set (0.00 sec)



9. Display the count of Projects going on in different cities.

mysql> SELECT City, COUNT(*) AS ProjectCount
    -> FROM Project
    -> GROUP BY City;
+----------+--------------+
| City     | ProjectCount |
+----------+--------------+
| San Jose |            1 |
| Rome     |            2 |
| Berlin   |            1 |
| London   |            1 |
+----------+--------------+
4 rows in set (0.00 sec)



10. What is the difference between COUNT(Status) and COUNT(*) ?

COUNT(Status) counts the non-null entries in the Status column.
COUNT(*) counts all rows, regardless of null values in any column.


11. Display the Status and the Count of Suppliers with that Status in the following format as shown below:-
Status Count
Ten 1
Twenty 2
Thirty 3

mysql> SELECT
    ->     CASE Status
    ->         WHEN 1 THEN 'Ten'
    ->         WHEN 2 THEN 'Twenty'
    ->         WHEN 3 THEN 'Thirty'
    ->         ELSE 'Unknown'
    ->     END AS Status,
    ->     COUNT(*) AS SupplierCount
    -> FROM Supplier
    -> GROUP BY Status;
+---------+---------------+
| Status  | SupplierCount |
+---------+---------------+
| Unknown |             1 |
| Unknown |             1 |
| Unknown |             1 |
| Unknown |             1 |
| Unknown |             1 |
| Unknown |             1 |
| Unknown |             1 |
+---------+---------------+
7 rows in set, 1 warning (0.01 sec)
