Enter password: *********
Welcome to the MySQL monitor.  Commands end with ; or \g.
Your MySQL connection id is 8
Server version: 8.0.34 MySQL Community Server - GPL

Copyright (c) 2000, 2023, Oracle and/or its affiliates.

Oracle is a registered trademark of Oracle Corporation and/or its
affiliates. Other names may be trademarks of their respective
owners.

Type 'help;' or '\h' for help. Type '\c' to clear the current input statement.

mysql> show databases;
+--------------------+
| Database           |
+--------------------+
| information_schema |
| mysql              |
| performance_schema |
| prolifics          |
| sys                |
+--------------------+
5 rows in set (0.11 sec)

mysql> use prolifics;
Database changed
mysql> show tables ;
+---------------------+
| Tables_in_prolifics |
+---------------------+
| address             |
| employee            |
| person              |
| users               |
+---------------------+
4 rows in set (0.06 sec)

mysql> select from * employee;
ERROR 1064 (42000): You have an error in your SQL syntax; check the manual that corresponds to your MySQL server version for the right syntax to use near 'from * employee' at line 1
mysql> select * from  employee;
+-----+-------------+--------+--------+
| id  | ename       | salary | deptno |
+-----+-------------+--------+--------+
| 101 | Aman Gupta  |   1000 |     10 |
| 102 | Babu Raj    |   1000 |     10 |
| 103 | Rahul Gupta |   2000 |     11 |
+-----+-------------+--------+--------+
3 rows in set (0.04 sec)

mysql> insert into employee values
    -> (107,"Arjun kumar" , 2202 , 20);
Query OK, 1 row affected (0.06 sec)

mysql> create table department(deptno int , deptname text, location);
ERROR 1064 (42000): You have an error in your SQL syntax; check the manual that corresponds to your MySQL server version for the right syntax to use near ')' at line 1
mysql> create table department(deptno int , deptname text, location location);
ERROR 1064 (42000): You have an error in your SQL syntax; check the manual that corresponds to your MySQL server version for the right syntax to use near 'location)' at line 1
mysql> use prolifics;
Database changed
mysql> show tables;
+---------------------+
| Tables_in_prolifics |
+---------------------+
| address             |
| course              |
| employee            |
| person              |
| users               |
+---------------------+
5 rows in set (0.20 sec)

mysql> desc employee;
+--------+--------------+------+-----+---------+-------+
| Field  | Type         | Null | Key | Default | Extra |
+--------+--------------+------+-----+---------+-------+
| id     | int          | NO   | PRI | NULL    |       |
| ename  | varchar(255) | YES  |     | NULL    |       |
| salary | double       | YES  |     | NULL    |       |
| deptno | int          | YES  |     | NULL    |       |
+--------+--------------+------+-----+---------+-------+
4 rows in set (0.07 sec)

mysql> create table employee(emp_id int , emp_name text,emp_type varchar(11), salary double , no_hours int , rate_hour double);
ERROR 1050 (42S01): Table 'employee' already exists
mysql> drop table employee;
Query OK, 0 rows affected (0.66 sec)

mysql> create table employee(emp_id int , emp_name text,emp_type varchar(11), salary double , no_hours int , rate_hour double);
Query OK, 0 rows affected (0.30 sec)

mysql> desc employee;
+-----------+-------------+------+-----+---------+-------+
| Field     | Type        | Null | Key | Default | Extra |
+-----------+-------------+------+-----+---------+-------+
| emp_id    | int         | YES  |     | NULL    |       |
| emp_name  | text        | YES  |     | NULL    |       |
| emp_type  | varchar(11) | YES  |     | NULL    |       |
| salary    | double      | YES  |     | NULL    |       |
| no_hours  | int         | YES  |     | NULL    |       |
| rate_hour | double      | YES  |     | NULL    |       |
+-----------+-------------+------+-----+---------+-------+
6 rows in set (0.01 sec)

mysql> desc employee;
+-----------+-------------+------+-----+---------+-------+
| Field     | Type        | Null | Key | Default | Extra |
+-----------+-------------+------+-----+---------+-------+
| emp_id    | int         | YES  |     | NULL    |       |
| emp_name  | text        | YES  |     | NULL    |       |
| emp_type  | varchar(11) | YES  |     | NULL    |       |
| salary    | double      | YES  |     | NULL    |       |
| no_hours  | int         | YES  |     | NULL    |       |
| rate_hour | double      | YES  |     | NULL    |       |
+-----------+-------------+------+-----+---------+-------+
6 rows in set (0.00 sec)

mysql> select * from employee;
+--------+----------+-------------+--------+----------+-----------+
| emp_id | emp_name | emp_type    | salary | no_hours | rate_hour |
+--------+----------+-------------+--------+----------+-----------+
|    101 | ajay     | Salaried    |      0 |     NULL |      NULL |
|      0 | NULL     | HourlyWages |   NULL |       45 |       500 |
+--------+----------+-------------+--------+----------+-----------+
2 rows in set (0.00 sec)

mysql> drop table employee;
Query OK, 0 rows affected (0.03 sec)

mysql> create table employee(emp_id int , emp_name text);_
Query OK, 0 rows affected (0.11 sec)

    -> create table salariedemployee(emp_id int  , salary double);
ERROR 1064 (42000): You have an error in your SQL syntax; check the manual that corresponds to your MySQL server version for the right syntax to use near '_
create table salariedemployee(emp_id int  , salary double)' at line 1
mysql> create table salariedemployee(emp_id int  , salary double);
Query OK, 0 rows affected (0.16 sec)

mysql> create table salariedemployee(emp_id int , no_hours int  , rate_hour double);
ERROR 1050 (42S01): Table 'salariedemployee' already exists
mysql> create table hourlywagesemployee(emp_id int , no_hours int  , rate_hour double);
Query OK, 0 rows affected (0.15 sec)

mysql> desc employee;
+----------+------+------+-----+---------+-------+
| Field    | Type | Null | Key | Default | Extra |
+----------+------+------+-----+---------+-------+
| emp_id   | int  | YES  |     | NULL    |       |
| emp_name | text | YES  |     | NULL    |       |
+----------+------+------+-----+---------+-------+
2 rows in set (0.00 sec)

mysql> desc salariedemployee;
+--------+--------+------+-----+---------+-------+
| Field  | Type   | Null | Key | Default | Extra |
+--------+--------+------+-----+---------+-------+
| emp_id | int    | YES  |     | NULL    |       |
| salary | double | YES  |     | NULL    |       |
+--------+--------+------+-----+---------+-------+
2 rows in set (0.00 sec)

mysql> ddesc hourlywagesemployee;
ERROR 1064 (42000): You have an error in your SQL syntax; check the manual that corresponds to your MySQL server version for the right syntax to use near 'ddesc hourlywagesemployee' at line 1
mysql> desc hourlywagesemployee;
+-----------+--------+------+-----+---------+-------+
| Field     | Type   | Null | Key | Default | Extra |
+-----------+--------+------+-----+---------+-------+
| emp_id    | int    | YES  |     | NULL    |       |
| no_hours  | int    | YES  |     | NULL    |       |
| rate_hour | double | YES  |     | NULL    |       |
+-----------+--------+------+-----+---------+-------+
3 rows in set (0.00 sec)

mysql> select * ffrom employee;
ERROR 1064 (42000): You have an error in your SQL syntax; check the manual that corresponds to your MySQL server version for the right syntax to use near 'ffrom employee' at line 1
mysql> select * from employee;
+--------+----------+
| emp_id | emp_name |
+--------+----------+
|    101 | ajay     |
|      0 | NULL     |
+--------+----------+
2 rows in set (0.00 sec)

mysql> desc hourlywagesemployee;
+-----------+--------+------+-----+---------+-------+
| Field     | Type   | Null | Key | Default | Extra |
+-----------+--------+------+-----+---------+-------+
| emp_id    | int    | YES  |     | NULL    |       |
| no_hours  | int    | YES  |     | NULL    |       |
| rate_hour | double | YES  |     | NULL    |       |
+-----------+--------+------+-----+---------+-------+
3 rows in set (0.00 sec)

mysql> select * from  hourlywagesemployee;
+--------+----------+-----------+
| emp_id | no_hours | rate_hour |
+--------+----------+-----------+
|      0 |       45 |       500 |
+--------+----------+-----------+
1 row in set (0.00 sec)

mysql> drop table employee ;
Query OK, 0 rows affected (0.07 sec)

mysql> drop table salariedemployee ;
Query OK, 0 rows affected (0.06 sec)

mysql> drop table dailywagesemployee ;
ERROR 1051 (42S02): Unknown table 'prolifics.dailywagesemployee'
mysql> drop table hourlywagesemployee ;
Query OK, 0 rows affected (0.08 sec)

mysql> create table salariedemployee(emp_id int  , emp_name text , emp_sal double);
Query OK, 0 rows affected (0.12 sec)

mysql> create table hourlywagesemployee(emp_id int  , emp_name int , no_hours int  ,rate_hour double );
Query OK, 0 rows affected (0.13 sec)

mysql>
