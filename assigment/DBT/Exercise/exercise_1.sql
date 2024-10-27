--Exercise 1
--Q1:
mysql> CREATE TABLE SEMP(
    -> EMPNO CHAR(4),
    -> EMPNAME CHAR(20),
    -> BASIC FLOAT,
    -> DEPTNO CHAR(2),
    -> DEPTHEAD CHAR(4));
Query OK, 0 rows affected (0.15 sec)

--Q2:
mysql> CREATE TABLE SDEPT(
    -> DEPTNO CHAR(2),
    -> DEPTNAME CHAR(15));
Query OK, 0 rows affected (0.05 sec)

--Q3:
mysql> INSERT INTO SDEPT(DEPTNO, DEPTNAME) VALUES
    -> ( 10, 'DEVELOPMENT'),
    -> ( 10, 'TRAINING');
Query OK, 2 rows affected (0.02 sec)
Records: 2  Duplicates: 0  Warnings: 0

--Q4:
mysql> select * from semp;
+-------+---------+-------+--------+----------+
| EMPNO | EMPNAME | BASIC | DEPTNO | DEPTHEAD |
+-------+---------+-------+--------+----------+
| 0001  | SUNIL   |  6000 | 10     | NULL     |
| 0002  | HIREN   |  8000 | 20     | NULL     |
| 0003  | ALI     |  4000 | 10     | 0001     |
| 0004  | GEOGRE  |  6000 | NULL   | 0002     |
+-------+---------+-------+--------+----------+
4 rows in set (0.00 sec)

mysql> CREATE TABLE S (
    ->     `S#` CHAR(2),
    ->     Sname CHAR(20),
    ->     Status INT,
    ->     City CHAR(15)
    -> );
Query OK, 0 rows affected (0.02 sec)


mysql> INSERT INTO S(`S#`, Sname, Status, City)
    -> VALUES
    -> ('S1', 'Supplier1', 10, 'London'),
    -> ('S2', 'Supplier2', 20, 'Paris'),
    -> ('S3', 'Supplier3', 30, 'New York');
Query OK, 3 rows affected (0.01 sec)
Records: 3  Duplicates: 0  Warnings: 0

mysql> DROP TABLE IF EXISTS P;
Query OK, 0 rows affected (0.03 sec)

mysql> CREATE TABLE P(
    -> `P#` CHAR(2),
    -> Pname CHAR(20),
    ->     Color CHAR(10),
    ->     Weight FLOAT,
    ->     City CHAR(15)
    -> );
Query OK, 0 rows affected (0.02 sec)

mysql> INSERT INTO P (`p#`, Pname, Color, Weight, City)
    -> VALUES
    -> ('P1', 'Part1', 'Red', 12.5, 'London'),
    -> ('P2', 'Part2', 'Blue', 18.0, 'Paris'),
    -> ('P3', 'Part3', 'Green', 10.0, 'New York');
Query OK, 3 rows affected (0.01 sec)
Records: 3  Duplicates: 0  Warnings: 0

mysql> CREATE TABLE J(
    -> `J#` CHAR(2),
    -> Jname CHAR(20),
    -> City CHAR(15));
Query OK, 0 rows affected (0.06 sec)

mysql> INSERT INTO J(`J#`, Jname, City) values
    -> ('J1', 'Project1', 'London'),
    -> ('J2', 'Project2', 'Paris'),
    -> ('J3', 'Project3', 'New York');
Query OK, 3 rows affected (0.01 sec)
Records: 3  Duplicates: 0  Warnings: 0


mysql> create table SPJ(
    ->  `S#` CHAR(2),
    ->  `P#` CHAR(2),
    ->  `J#` CHAR(2),
    -> Qty INT);
Query OK, 0 rows affected (0.03 sec)

mysql> INSERT INTO SPJ (`S#`, `P#`, `J#`, Qty) values
    -> ('S1', 'P1', 'J1',300 ),
    -> ('S2', 'P2', 'J2',200 ),
    -> ('S3', 'P3', 'J3',150 );
Query OK, 3 rows affected (0.01 sec)


--Q5: Display all the data from the S table.
mysql> select * from s;
+------+-----------+--------+----------+
| S#   | Sname     | Status | City     |
+------+-----------+--------+----------+
| S1   | Supplier1 |     10 | London   |
| S2   | Supplier2 |     20 | Paris    |
| S3   | Supplier3 |     30 | New York |
+------+-----------+--------+----------+
3 rows in set (0.00 sec)


--Q6: Display only the S# and SNAME fields from the S table.
mysql> select `S#`, Sname from s;
+------+-----------+
| S#   | Sname     |
+------+-----------+
| S1   | Supplier1 |
| S2   | Supplier2 |
| S3   | Supplier3 |
+------+-----------+
3 rows in set (0.00 sec)


--Q7: Display the PNAME and COLOR from the P table for the CITY=”London”.
mysql> select `PNAME`, `COLOR` from p
    -> where city = "London";
+-------+-------+
| PNAME | COLOR |
+-------+-------+
| Part1 | Red   |
+-------+-------+
1 row in set (0.00 sec)


--Q8: Display all the Suppliers from London.
mysql> select * from s
    -> where City = "London";
+------+-----------+--------+--------+
| S#   | Sname     | Status | City   |
+------+-----------+--------+--------+
| S1   | Supplier1 |     10 | London |
+------+-----------+--------+--------+
1 row in set (0.00 sec)


--Q9: Display all the Suppliers from Paris or Athens.
mysql> select * from s
    -> where City = "Paris" or City = "Athens";
+------+-----------+--------+-------+
| S#   | Sname     | Status | City  |
+------+-----------+--------+-------+
| S2   | Supplier2 |     20 | Paris |
+------+-----------+--------+-------+
1 row in set (0.01 sec)


Q10: Display all the Projects in Athens.
mysql> select * from j
    -> where City = 'Athens';
Empty set (0.00 sec)

--Q11:Display all the Partnames with the weight between 12 and 14 (inclusive of both).
mysql> SELECT Pname FROM P 
	-> where weight between 12 AND 14;
+-------+
| Pname |
+-------+
| Part1 |
+-------+
1 row in set (0.00 sec)


--Q12:Display all the Suppliers with a Status greater than or equal to 20.
mysql> select * from s
    -> where status >= 20;
+------+-----------+--------+----------+
| S#   | Sname     | Status | City     |
+------+-----------+--------+----------+
| S2   | Supplier2 |     20 | Paris    |
| S3   | Supplier3 |     30 | New York |
+------+-----------+--------+----------+
2 rows in set (0.00 sec)


--Q13: Display all the Suppliers except the Suppliers from London.
mysql> select * from s
    -> where City != 'London';
+------+-----------+--------+----------+
| S#   | Sname     | Status | City     |
+------+-----------+--------+----------+
| S2   | Supplier2 |     20 | Paris    |
| S3   | Supplier3 |     30 | New York |
+------+-----------+--------+----------+
2 rows in set (0.00 sec)


--Q14: Display only the Cities from where the Suppliers come from.
mysql> select DISTINCT City from s;
+----------+
| City     |
+----------+
| London   |
| Paris    |
| New York |
+----------+
3 rows in set (0.01 sec)


--Q15: Assuming that the Part Weight is in GRAMS, display the same in MILLIGRAMS and KILOGRAMS.
mysql> select Pname,
    -> weight * 1000 as Weight_Milligrams,
    -> weight / 1000 as Weight_Kiograms
    -> from p;
+-------+-------------------+-----------------+
| Pname | Weight_Milligrams | Weight_Kiograms |
+-------+-------------------+-----------------+
| Part1 |             12500 |          0.0125 |
| Part2 |             18000 |           0.018 |
| Part3 |             10000 |            0.01 |
+-------+-------------------+-----------------+
3 rows in set (0.01 sec)

