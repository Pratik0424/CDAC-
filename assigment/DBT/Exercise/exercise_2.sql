Exercise 2 : 

1. Display the Supplier table in the descending order of CITY.

mysql> select * from supplier
    -> order by city desc;
+------+----------+----------+--------+------+
| Cnum | Cname    | City     | Rating | Snum |
+------+----------+----------+--------+------+
| 2003 | Liu      | San Jose |    200 | 1002 |
| 2008 | Cisneros | San Jose |    300 | 1007 |
| 2002 | Giovanni | Rome     |    200 | 1003 |
| 2007 | Pereira  | Rome     |    100 | 1004 |
| 2001 | Hoffman  | London   |    100 | 1001 |
| 2006 | Clemens  | London   |    100 | 1001 |
| 2004 | Grass    | Berlin   |    300 | 1002 |
+------+----------+----------+--------+------+
7 rows in set (0.01 sec)



2. Display the Part Table in the ascending order of CITY and within the city in the ascending order of Part names.

mysql> select * from part;
+--------+----------+----------+--------+
| PartID | PartName | City     | Weight |
+--------+----------+----------+--------+
|      1 | Screw    | San Jose |   9.50 |
|      2 | Bolt     | Rome     |  11.00 |
|      3 | Nut      | Berlin   |  14.50 |
|      4 | Washer   | London   |   7.00 |
|      5 | Sprocket | San Jose |  12.00 |
+--------+----------+----------+--------+
5 rows in set (0.00 sec)

mysql> select * from part
    -> order by partname asc, city asc;
+--------+----------+----------+--------+
| PartID | PartName | City     | Weight |
+--------+----------+----------+--------+
|      2 | Bolt     | Rome     |  11.00 |
|      3 | Nut      | Berlin   |  14.50 |
|      1 | Screw    | San Jose |   9.50 |
|      5 | Sprocket | San Jose |  12.00 |
|      4 | Washer   | London   |   7.00 |
+--------+----------+----------+--------+
5 rows in set (0.00 sec)


3. Display all the Suppliers with a status between 10 and 20.

mysql> select * from supplier
    -> where status between 10 and 20;
+------+----------+----------+--------+------+--------+
| Cnum | Cname    | City     | Rating | Snum | Status |
+------+----------+----------+--------+------+--------+
| 2001 | Hoffman  | London   |    100 | 1001 |     15 |
| 2002 | Giovanni | Rome     |    200 | 1003 |     12 |
| 2003 | Liu      | San Jose |    200 | 1002 |     18 |
| 2004 | Grass    | Berlin   |    300 | 1002 |     20 |
| 2006 | Clemens  | London   |    100 | 1001 |     11 |
| 2007 | Pereira  | Rome     |    100 | 1004 |     13 |
| 2008 | Cisneros | San Jose |    300 | 1007 |     16 |
+------+----------+----------+--------+------+--------+
7 rows in set (0.00 sec)



4. Display all the Parts and their Weight, which are not in the range of 10 and 15.

mysql> select * from part
    -> where weight not between 10 and 15;
+--------+----------+----------+--------+
| PartID | PartName | City     | Weight |
+--------+----------+----------+--------+
|      1 | Screw    | San Jose |   9.50 |
|      4 | Washer   | London   |   7.00 |
+--------+----------+----------+--------+
2 rows in set (0.01 sec)



5. Display all the Part names starting with the letter ‘S’.

mysql> select partname from part
    -> where partname like 'S%';
+----------+
| partname |
+----------+
| Screw    |
| Sprocket |
+----------+
2 rows in set (0.00 sec)



6. Display all the Suppliers, belonging to cities starting with the letter ‘L’.

mysql> select * from supplier
    -> where city like 'L%';
+------+---------+--------+--------+------+--------+
| Cnum | Cname   | City   | Rating | Snum | Status |
+------+---------+--------+--------+------+--------+
| 2001 | Hoffman | London |    100 | 1001 |     15 |
| 2006 | Clemens | London |    100 | 1001 |     11 |
+------+---------+--------+--------+------+--------+
2 rows in set (0.00 sec)


7. Display all the Projects, with the third letter in JNAME as ‘n’.

mysql> select * from project;
+------+-------------+----------+
| Jnum | Jname       | City     |
+------+-------------+----------+
| 1001 | Mountaineer | San Jose |
| 1002 | Sunrise     | Rome     |
| 1003 | Kingdom     | Berlin   |
| 1004 | Canyon      | London   |
| 1005 | Winner      | Rome     |
+------+-------------+----------+
5 rows in set (0.00 sec)

mysql> SELECT *
    -> FROM Project
    -> WHERE Jname LIKE '__n%';
+------+---------+--------+
| Jnum | Jname   | City   |
+------+---------+--------+
| 1002 | Sunrise | Rome   |
| 1003 | Kingdom | Berlin |
| 1004 | Canyon  | London |
| 1005 | Winner  | Rome   |
+------+---------+--------+
4 rows in set (0.00 sec)
