A--Exercise 3:

1. Display all the Supplier names with the initial letter capital.

mysql> SELECT CONCAT(UCASE(LEFT(Cname, 1)), 
	-> LCASE(SUBSTRING(Cname, 2))) AS SupplierName FROM Supplier;
+--------------+
| SupplierName |
+--------------+
| Hoffman      |
| Giovanni     |
| Liu          |
| Grass        |
| Clemens      |
| Pereira      |
| Cisneros     |
+--------------+
7 rows in set (0.01 sec)


2. Display all the Supplier names in upper case.

mysql> SELECT UPPER(Cname) AS SupplierName FROM Supplier;
+--------------+
| SupplierName |
+--------------+
| HOFFMAN      |
| GIOVANNI     |
| LIU          |
| GRASS        |
| CLEMENS      |
| PEREIRA      |
| CISNEROS     |
+--------------+
7 rows in set (0.00 sec)



3. Display all the Supplier names in lower case.

mysql> SELECT LOWER(Cname) AS SupplierName FROM Supplier;
+--------------+
| SupplierName |
+--------------+
| hoffman      |
| giovanni     |
| liu          |
| grass        |
| clemens      |
| pereira      |
| cisneros     |
+--------------+
7 rows in set (0.00 sec)



4. Display all the Supplier names padded to 25 characters, with spaces on the left.

mysql> select LPAD(Cname, 25, ' ') as paddedSupplierName from Supplier;
+---------------------------+
| paddedSupplierName        |
+---------------------------+
|                   Hoffman |
|                  Giovanni |
|                       Liu |
|                     Grass |
|                   Clemens |
|                   Pereira |
|                  Cisneros |
+---------------------------+
7 rows in set (0.03 sec)



5. Display all the Supplier names (with ‘la’ replaced by ‘ro’).
HINT: REPLACE.

mysql> SELECT REPLACE(Cname, 'la', 'ro') AS ReplacedSupplierName FROM Supplier;
+----------------------+
| ReplacedSupplierName |
+----------------------+
| Hoffman              |
| Giovanni             |
| Liu                  |
| Grass                |
| Clemens              |
| Pereira              |
| Cisneros             |
+----------------------+
7 rows in set (0.01 sec)



6. Implement the above command such that ‘l’ is replaced with ‘r’ and ‘a’ is replaced with ‘o’.

mysql> SELECT REPLACE(REPLACE(Cname, 'l', 'r'), 'a', 'o') AS ModifiedSupplierName FROM Supplier;
+----------------------+
| ModifiedSupplierName |
+----------------------+
| Hoffmon              |
| Giovonni             |
| Liu                  |
| Gross                |
| Cremens              |
| Pereiro              |
| Cisneros             |
+----------------------+
7 rows in set (0.01 sec)


7. Display the Supplier names and the lengths of the names.

mysql> SELECT Cname, LENGTH(Cname) AS NameLength FROM Supplier;
+----------+------------+
| Cname    | NameLength |
+----------+------------+
| Hoffman  |          7 |
| Giovanni |          8 |
| Liu      |          3 |
| Grass    |          5 |
| Clemens  |          7 |
| Pereira  |          7 |
| Cisneros |          8 |
+----------+------------+
7 rows in set (0.01 sec)



8. Use the soundex function to search for a supplier by the name of ‘BLOKE’.

mysql> SELECT * FROM Supplier WHERE SOUNDEX(Cname) = SOUNDEX('BLOKE');
Empty set (0.01 sec)



9. Display the Supplier name and the status (as Ten, Twenty, Thirty, etc.).

mysql> select Cname,
    ->  Case status
    ->    when 10 then 'Ten'
    ->    when 20 then 'Twenty'
    ->    when 30 then 'Thirty'
    ->    else 'unknown'
    -> end as stutasText
    -> from supplier;
+----------+------------+
| Cname    | stutasText |
+----------+------------+
| Hoffman  | unknown    |
| Giovanni | unknown    |
| Liu      | unknown    |
| Grass    | Twenty     |
| Clemens  | unknown    |
| Pereira  | unknown    |
| Cisneros | unknown    |
+----------+------------+
7 rows in set (0.00 sec)


10. Display the current day (e.g. Thursday).

mysql> select curdate() from dual;
+------------+
| curdate()  |
+------------+
| 2024-10-21 |
+------------+
1 row in set (0.00 sec)
