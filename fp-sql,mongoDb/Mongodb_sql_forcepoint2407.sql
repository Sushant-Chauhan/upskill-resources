Pre Test Link for Databases:
-------------------------------------

https://forms.office.com/r/YZMHkTfN6T

--------------------------------------

Daily Feedback link for mysql:
---------------------------------------------
https://forms.office.com/r/NDmE2e1xZb
---------------------------------------------



mysql> show databases;
+--------------------+
| Database           |
+--------------------+
| bajaj              |
| employees          |
| information_schema |
| mysql              |
| performance_schema |
| sys                |
+--------------------+
6 rows in set (0.00 sec)



create database forcepoint;

create schema forcepoint2;

use forcepoint

create table t1 (id int, name varchar(10));

create table forcepoint2.t2 (prdid int, prdname varchar(10), qty int);

mysql> select table_name from information_schema.tables where table_schema='forcepoint';
+------------+
| TABLE_NAME |
+------------+
| t1         |
+------------+
1 row in set (0.00 sec)

mysql>

desc
mysql> desc forcepoint.t1;
+-------+-------------+------+-----+---------+-------+
| Field | Type        | Null | Key | Default | Extra |
+-------+-------------+------+-----+---------+-------+
| id    | int         | YES  |     | NULL    |       |
| name  | varchar(10) | YES  |     | NULL    |       |
+-------+-------------+------+-----+---------+-------+
2 rows in set (0.01 sec)

mysql>


mysql> select * from emp2;
+-------+--------+-----------+------+------------+---------+---------+--------+
| empno | ename  | job       | mgr  | hiredate   | sal     | comm    | deptno |
+-------+--------+-----------+------+------------+---------+---------+--------+
|  7369 | SMITH  | CLERK     | 7902 | 1980-12-17 |  800.00 |    NULL |     20 |
|  7499 | ALLEN  | SALESMAN  | 7698 | 1981-02-20 | 1600.00 |  300.00 |     30 |
|  7521 | WARD   | SALESMAN  | 7698 | 1981-02-22 | 1250.00 |  500.00 |     30 |
|  7566 | JONES  | MANAGER   | 7839 | 1981-04-02 | 2975.00 |    NULL |     20 |
|  7654 | MARTIN | SALESMAN  | 7698 | 1981-09-28 | 1250.00 | 1400.00 |     30 |
|  7698 | BLAKE  | MANAGER   | 7839 | 1981-05-01 | 2850.00 |    NULL |     30 |
|  7782 | CLARK  | MANAGER   | 7839 | 1981-06-09 | 2450.00 |    NULL |     10 |
|  7788 | SCOTT  | ANALYST   | 7566 | 1982-12-09 | 3000.00 |    NULL |     20 |
|  7839 | KING   | PRESIDENT | NULL | 1981-11-17 | 5000.00 |    NULL |     10 |
|  7844 | TURNER | SALESMAN  | 7698 | 1981-09-08 | 1500.00 |    0.00 |     30 |
|  7876 | ADAMS  | CLERK     | 7788 | 1983-01-12 | 1100.00 |    NULL |     20 |
|  7900 | JAMES  | CLERK     | 7698 | 1981-12-03 |  950.00 |    NULL |     30 |
|  7902 | FORD   | ANALYST   | 7566 | 1981-12-03 | 3000.00 |    NULL |     20 |
|  7934 | MILLER | CLERK     | 7782 | 1982-01-23 | 1300.00 |    NULL |     10 |
|  1001 | Aaron  | Analyst   | 7902 | 2024-01-29 | 1700.00 |    NULL |     50 |
+-------+--------+-----------+------+------------+---------+---------+--------+
15 rows in set (0.00 sec)

mysql> select * from emp2 where comm > 300;
+-------+--------+----------+------+------------+---------+---------+--------+
| empno | ename  | job      | mgr  | hiredate   | sal     | comm    | deptno |
+-------+--------+----------+------+------------+---------+---------+--------+
|  7521 | WARD   | SALESMAN | 7698 | 1981-02-22 | 1250.00 |  500.00 |     30 |
|  7654 | MARTIN | SALESMAN | 7698 | 1981-09-28 | 1250.00 | 1400.00 |     30 |
+-------+--------+----------+------+------------+---------+---------+--------+
2 rows in set (0.00 sec)

mysql> select * from emp2 where comm is null;
+-------+--------+-----------+------+------------+---------+------+--------+
| empno | ename  | job       | mgr  | hiredate   | sal     | comm | deptno |
+-------+--------+-----------+------+------------+---------+------+--------+
|  7369 | SMITH  | CLERK     | 7902 | 1980-12-17 |  800.00 | NULL |     20 |
|  7566 | JONES  | MANAGER   | 7839 | 1981-04-02 | 2975.00 | NULL |     20 |
|  7698 | BLAKE  | MANAGER   | 7839 | 1981-05-01 | 2850.00 | NULL |     30 |
|  7782 | CLARK  | MANAGER   | 7839 | 1981-06-09 | 2450.00 | NULL |     10 |
|  7788 | SCOTT  | ANALYST   | 7566 | 1982-12-09 | 3000.00 | NULL |     20 |
|  7839 | KING   | PRESIDENT | NULL | 1981-11-17 | 5000.00 | NULL |     10 |
|  7876 | ADAMS  | CLERK     | 7788 | 1983-01-12 | 1100.00 | NULL |     20 |
|  7900 | JAMES  | CLERK     | 7698 | 1981-12-03 |  950.00 | NULL |     30 |
|  7902 | FORD   | ANALYST   | 7566 | 1981-12-03 | 3000.00 | NULL |     20 |
|  7934 | MILLER | CLERK     | 7782 | 1982-01-23 | 1300.00 | NULL |     10 |
|  1001 | Aaron  | Analyst   | 7902 | 2024-01-29 | 1700.00 | NULL |     50 |
+-------+--------+-----------+------+------------+---------+------+--------+
11 rows in set (0.00 sec)

mysql> select * from emp2 where comm is not null;
+-------+--------+----------+------+------------+---------+---------+--------+
| empno | ename  | job      | mgr  | hiredate   | sal     | comm    | deptno |
+-------+--------+----------+------+------------+---------+---------+--------+
|  7499 | ALLEN  | SALESMAN | 7698 | 1981-02-20 | 1600.00 |  300.00 |     30 |
|  7521 | WARD   | SALESMAN | 7698 | 1981-02-22 | 1250.00 |  500.00 |     30 |
|  7654 | MARTIN | SALESMAN | 7698 | 1981-09-28 | 1250.00 | 1400.00 |     30 |
|  7844 | TURNER | SALESMAN | 7698 | 1981-09-08 | 1500.00 |    0.00 |     30 |
+-------+--------+----------+------+------------+---------+---------+--------+
4 rows in set (0.00 sec)

mysql>




mysql> select ceil(9.7);
+-----------+
| ceil(9.7) |
+-----------+
|        10 |
+-----------+
1 row in set (0.00 sec)

mysql> select floor(9.7);
+------------+
| floor(9.7) |
+------------+
|          9 |
+------------+
1 row in set (0.00 sec)

mysql> select ceil(9.2);
+-----------+
| ceil(9.2) |
+-----------+
|        10 |
+-----------+
1 row in set (0.00 sec)

mysql> select round(9.2);
+------------+
| round(9.2) |
+------------+
|          9 |
+------------+
1 row in set (0.00 sec)

mysql> select round(9.7);
+------------+
| round(9.7) |
+------------+
|         10 |
+------------+
1 row in set (0.01 sec)

mysql>


mysql> select truncate(9.220298, 3);
+-----------------------+
| truncate(9.220298, 3) |
+-----------------------+
|                 9.220 |
+-----------------------+
1 row in set (0.00 sec)

mysql> select truncate(9.220298, 1);
+-----------------------+
| truncate(9.220298, 1) |
+-----------------------+
|                   9.2 |
+-----------------------+
1 row in set (0.00 sec)

mysql> select round(truncate(9.220298, 1));
+------------------------------+
| round(truncate(9.220298, 1)) |
+------------------------------+
|                            9 |
+------------------------------+
1 row in set (0.00 sec)

mysql>

mysql> select concat('Wel', 'Come');
+-----------------------+
| concat('Wel', 'Come') |
+-----------------------+
| WelCome               |
+-----------------------+
1 row in set (0.00 sec)

mysql> select concat_ws('-','Wel', 'Come');
+------------------------------+
| concat_ws('-','Wel', 'Come') |
+------------------------------+
| Wel-Come                     |
+------------------------------+
1 row in set (0.00 sec)

mysql>




Day - 2:
=======

mysql> select datediff('2024-06-05', '2024-07-25');
+--------------------------------------+
| datediff('2024-06-05', '2024-07-25') |
+--------------------------------------+
|                                  -50 |
+--------------------------------------+
1 row in set (0.02 sec)

mysql> select format(1000000, '##,##,###');
+------------------------------+
| format(1000000, '##,##,###') |
+------------------------------+
| 1,000,000                    |
+------------------------------+
1 row in set, 1 warning (0.00 sec)

mysql> select datediff('2024-06-05', sysdate);
ERROR 1054 (42S22): Unknown column 'sysdate' in 'field list'
mysql> select datediff('2024-06-05', current_date());
+----------------------------------------+
| datediff('2024-06-05', current_date()) |
+----------------------------------------+
|                                    -50 |
+----------------------------------------+
1 row in set (0.01 sec)

mysql> select datediff('2024-06-05', sysdate());
+-----------------------------------+
| datediff('2024-06-05', sysdate()) |
+-----------------------------------+
|                               -50 |
+-----------------------------------+
1 row in set (0.00 sec)

mysql>

mysql> select date_add('2024-07-25', interval 5 day);
+----------------------------------------+
| date_add('2024-07-25', interval 5 day) |
+----------------------------------------+
| 2024-07-30                             |
+----------------------------------------+
1 row in set (0.00 sec)

mysql> select date_add('2024-07-25', interval 5 month);
+------------------------------------------+
| date_add('2024-07-25', interval 5 month) |
+------------------------------------------+
| 2024-12-25                               |
+------------------------------------------+
1 row in set (0.00 sec)

mysql> select date_add('2024-07-25', interval 5 year);
+-----------------------------------------+
| date_add('2024-07-25', interval 5 year) |
+-----------------------------------------+
| 2029-07-25                              |
+-----------------------------------------+
1 row in set (0.00 sec)

mysql>

mysql> select date_add('2024-07-25', interval -5 day);
+-----------------------------------------+
| date_add('2024-07-25', interval -5 day) |
+-----------------------------------------+
| 2024-07-20                              |
+-----------------------------------------+
1 row in set (0.00 sec)

mysql>

mysql> select database();
+------------+
| database() |
+------------+
| employees  |
+------------+
1 row in set (0.00 sec)

mysql>

mysql> select current_user();
+----------------+
| current_user() |
+----------------+
| root@localhost |
+----------------+
1 row in set (0.00 sec)

mysql>


mysql> select now();
+---------------------+
| now()               |
+---------------------+
| 2022-11-28 11:53:29 |
+---------------------+
1 row in set (0.00 sec)

mysql> select now();
+---------------------+
| now()               |
+---------------------+
| 2022-11-28 11:53:31 |
+---------------------+
1 row in set (0.00 sec)

mysql>

mysql> select curdate();
+------------+
| curdate()  |
+------------+
| 2022-11-28 |
+------------+
1 row in set (0.00 sec)

mysql>

mysql> select day('2022-11-28');
+-------------------+
| day('2022-11-28') |
+-------------------+
|                28 |
+-------------------+
1 row in set (0.00 sec)

mysql> select ename, day(hiredate) day, month(hiredate) month from emp;
+--------+------+-------+
| ename  | day  | month |
+--------+------+-------+
| SMITH  |   17 |    12 |
| ALLEN  |   20 |     2 |
| WARD   |   22 |     2 |
| JONES  |    2 |     4 |
| MARTIN |   28 |     9 |
| BLAKE  |    1 |     5 |
| CLARK  |    9 |     6 |
| SCOTT  |    9 |    12 |
| KING   |   17 |    11 |
| TURNER |    8 |     9 |
| ADAMS  |   12 |     1 |
| JAMES  |    3 |    12 |
| FORD   |    3 |    12 |
| MILLER |   23 |     1 |
+--------+------+-------+
14 rows in set (0.00 sec)

mysql>

mysql> select ename, dayname(hiredate) day, month(hiredate) month from emp;
+--------+-----------+-------+
| ename  | day       | month |
+--------+-----------+-------+
| SMITH  | Wednesday |    12 |
| ALLEN  | Friday    |     2 |
| WARD   | Sunday    |     2 |
| JONES  | Thursday  |     4 |
| MARTIN | Monday    |     9 |

mysql> select ename, dayofweek(hiredate) day, month(hiredate) month from emp;
+--------+------+-------+
| ename  | day  | month |
+--------+------+-------+
| SMITH  |    4 |    12 |
| ALLEN  |    6 |     2 |
| WARD   |    1 |     2 |

mysql> select sysdate();
+---------------------+
| sysdate()           |
+---------------------+
| 2022-11-28 12:00:27 |
+---------------------+
1 row in set (0.00 sec)

mysql>

mysql> select ename, weekday(hiredate) day, month(hiredate) month from emp;
+--------+------+-------+
| ename  | day  | month |
+--------+------+-------+
| SMITH  |    2 |    12 |
| ALLEN  |    4 |     2 |
| WARD   |    6 |     2 |
| JONES  |    3 |     4 |

mysql> select week('2022-11-29');
+--------------------+
| week('2022-11-29') |
+--------------------+
|                 48 |
+--------------------+
1 row in set (0.00 sec)

mysql>

mysql> select date_add('2022-11-29', interval 15 day);
+-----------------------------------------+
| date_add('2022-11-29', interval 15 day) |
+-----------------------------------------+
| 2022-12-14                              |
+-----------------------------------------+
1 row in set (0.00 sec)

mysql>

mysql> select date_add('2022-11-29', interval 27 hour);
+------------------------------------------+
| date_add('2022-11-29', interval 27 hour) |
+------------------------------------------+
| 2022-11-30 03:00:00                      |
+------------------------------------------+
1 row in set (0.00 sec)

mysql>

mysql> select date_add('2022-11-29', interval 27 month);
+-------------------------------------------+
| date_add('2022-11-29', interval 27 month) |
+-------------------------------------------+
| 2025-02-28                                |
+-------------------------------------------+
1 row in set (0.00 sec)

mysql>
mysql> select date_sub('2022-11-29', interval 27 month);
+-------------------------------------------+
| date_sub('2022-11-29', interval 27 month) |
+-------------------------------------------+
| 2020-08-29                                |
+-------------------------------------------+
1 row in set (0.00 sec)

mysql>

mysql> select datediff('2022-11-29','2022-12-5');
+------------------------------------+
| datediff('2022-11-29','2022-12-5') |
+------------------------------------+
|                                 -6 |
+------------------------------------+
1 row in set (0.00 sec)

mysql> select datediff('2022-12-05','2022-11-29');
+-------------------------------------+
| datediff('2022-12-05','2022-11-29') |
+-------------------------------------+
|                                   6 |
+-------------------------------------+
1 row in set (0.01 sec)

mysql>

mysql> select ename, datediff(curdate(), hiredate) days_since_joined from emp;
+--------+-------------------+
| ename  | days_since_joined |
+--------+-------------------+
| SMITH  |             15321 |
| ALLEN  |             15256 |
| WARD   |             15254 |
| JONES  |             15215 |
| MARTIN |             15036 |
| BLAKE  |             15186 |
| CLARK  |             15147 |
| SCOTT  |             14599 |
| KING   |             14986 |
| TURNER |             15056 |
| ADAMS  |             14565 |
| JAMES  |             14970 |
| FORD   |             14970 |
| MILLER |             14919 |
+--------+-------------------+
14 rows in set (0.00 sec)

mysql>

extract(unit FROM  date);

UNIT:

Day
Day_HOUR
Hour
Minutes
Month
Year
WEEK
year_month
QUARTER

mysql> select last_day('2022-11-29');
+------------------------+
| last_day('2022-11-29') |
+------------------------+
| 2022-11-30             |
+------------------------+
1 row in set (0.00 sec)

mysql>

Date format

Date_format(date, FORMAT)

Format Specifiers
-------------------
%a  3 character Week day
%D day of Month
%j day of year
%W Week day name

%b 3 character Month
%d Day of month with leading 0s
%M Full month name
%m month number with leading 0s
%c month number

%H hour in 24hrs
%h hour in 12hrs
%i Minutes
%S seconds

Examples:

mysql> select date_format(curdate(), '%M');
+------------------------------+
| date_format(curdate(), '%M') |
+------------------------------+
| November                     |
+------------------------------+
1 row in set (0.00 sec)

mysql> select date_format(curdate(), '%a');
+------------------------------+
| date_format(curdate(), '%a') |
+------------------------------+
| Mon                          |
+------------------------------+
1 row in set (0.00 sec)

mysql> select date_format(curdate(), '%A');
+------------------------------+
| date_format(curdate(), '%A') |
+------------------------------+
| A                            |
+------------------------------+
1 row in set (0.00 sec)

mysql> select date_format(curdate(), '%b');
+------------------------------+
| date_format(curdate(), '%b') |
+------------------------------+
| Nov                          |
+------------------------------+
1 row in set (0.00 sec)

mysql> select date_format(curdate(), '%c');
+------------------------------+
| date_format(curdate(), '%c') |
+------------------------------+
| 11                           |
+------------------------------+
1 row in set (0.00 sec)

mysql> select date_format(curdate(), '%D');
+------------------------------+
| date_format(curdate(), '%D') |
+------------------------------+
| 28th                         |
+------------------------------+
1 row in set (0.00 sec)

mysql> select date_format(curdate(), '%W');
+------------------------------+
| date_format(curdate(), '%W') |
+------------------------------+
| Monday                       |
+------------------------------+
1 row in set (0.00 sec)



sTRING fUNCTIONS:

String functions:
-----------------

mysql> select 'hello' ' all';
+-----------+
| hello     |
+-----------+
| hello all |
+-----------+
1 row in set (0.00 sec)

mysql>

mysql> select empno, concat ('Mr. ', ename) as ename  from emp;
mysql> select concat('cat', ' dog', ' rabbit') pets;
+----------------+
| pets           |
+----------------+
| cat dog rabbit |
+----------------+
1 row in set (0.00 sec)

mysql> select concat_ws(',','cat', ' dog', ' rabbit') pets;
+------------------+
| pets             |
+------------------+
| cat, dog, rabbit |
+------------------+
1 row in set (0.00 sec)

mysql>

mysql> select empno, ename, length(ename) as name_length from emp;
+-------+--------+-------------+
| empno | ename  | name_length |
+-------+--------+-------------+
|  7369 | SMITH  |           5 |
|  7499 | ALLEN  |           5 |
|  7521 | WARD   |           4 |

mysql> select empno, ename, length(ename) as name_length from emp where length(ename) >= 5;
+-------+--------+-------------+
| empno | ename  | name_length |
+-------+--------+-------------+
|  7369 | SMITH  |           5 |
|  7499 | ALLEN  |           5 |
|  7566 | JONES  |           5 |
|  7654 | MARTIN |           6 |
|  7698 | BLAKE  |           5 |
|  7782 | CLARK  |           5 |
|  7788 | SCOTT  |           5 |
|  7844 | TURNER |           6 |
|  7876 | ADAMS  |           5 |
|  7900 | JAMES  |           5 |
|  7934 | MILLER |           6 |
+-------+--------+-------------+
11 rows in set (0.00 sec)

mysql>

mysql> select  left('Welcome',3);
+-------------------+
| left('Welcome',3) |
+-------------------+
| Wel               |
+-------------------+
1 row in set (0.01 sec)

mysql>

mysql> select empno, ename, left(ename,1) First_letter from emp;
+-------+--------+--------------+
| empno | ename  | First_letter |
+-------+--------+--------------+
|  7369 | SMITH  | S            |
|  7499 | ALLEN  | A            |
|  7521 | WARD   | W            |
|  7566 | JONES  | J            |
|  7654 | MARTIN | M            |
|  7698 | BLAKE  | B            |


mysql> select empno, ename, right(ename,1) Last_letter from emp;
+-------+--------+-------------+
| empno | ename  | Last_letter |
+-------+--------+-------------+
|  7369 | SMITH  | H           |
|  7499 | ALLEN  | N           |
|  7521 | WARD   | D           |
|  7566 | JONES  | S           |
|  7654 | MARTIN | N           |

mysql> select right('welcome',4);
+--------------------+
| right('welcome',4) |
+--------------------+
| come               |
+--------------------+
1 row in set (0.00 sec)

mysql>

mysql> select substring('welcome',3,4);
+--------------------------+
| substring('welcome',3,4) |
+--------------------------+
| lcom                     |
+--------------------------+
1 row in set (0.00 sec)

mysql>

mysql> select lower('WELcome');
+------------------+
| lower('WELcome') |
+------------------+
| welcome          |
+------------------+
1 row in set (0.02 sec)

mysql> select upper('WELcome');
+------------------+
| upper('WELcome') |
+------------------+
| WELCOME          |
+------------------+
1 row in set (0.00 sec)

mysql>


mysql> select replace('welcome','o','0')
    -> ;
+----------------------------+
| replace('welcome','o','0') |
+----------------------------+
| welc0me                    |
+----------------------------+
1 row in set (0.00 sec)

mysql> select replace('welcome','e','!');
+----------------------------+
| replace('welcome','e','!') |
+----------------------------+
| w!lcom!                    |
+----------------------------+
1 row in set (0.00 sec)

mysql>


mysql> select substring_index('welcome','l',1);
+----------------------------------+
| substring_index('welcome','l',1) |
+----------------------------------+
| we                               |
+----------------------------------+
1 row in set (0.00 sec)

mysql> select substring_index('welcome','e',1);
+----------------------------------+
| substring_index('welcome','e',1) |
+----------------------------------+
| w                                |
+----------------------------------+
1 row in set (0.00 sec)

mysql> select substring_index('welcome','e',2);
+----------------------------------+
| substring_index('welcome','e',2) |
+----------------------------------+
| welcom                           |
+----------------------------------+
1 row in set (0.00 sec)

mysql>

mysql> select ltrim('   hello');
+-------------------+
| ltrim('   hello') |
+-------------------+
| hello             |
+-------------------+
1 row in set (0.00 sec)

mysql> select ('   hello');
+----------+
| hello    |
+----------+
|    hello |
+----------+
1 row in set (0.00 sec)

mysql> select rtrim('hello   ');
+-------------------+
| rtrim('hello   ') |
+-------------------+
| hello             |
+-------------------+
1 row in set (0.00 sec)

mysql> select trim('    hello   ');
+----------------------+
| trim('    hello   ') |
+----------------------+
| hello                |
+----------------------+
1 row in set (0.00 sec)

mysql>

------------------------

mysql> select count(*) from emp2;
+----------+
| count(*) |
+----------+
|       15 |
+----------+
1 row in set (0.00 sec)

mysql> select sum(sal) from emp2;
+----------+
| sum(sal) |
+----------+
| 30725.00 |
+----------+
1 row in set (0.00 sec)

mysql> select sum(comm) from emp2;
+-----------+
| sum(comm) |
+-----------+
|   2200.00 |
+-----------+
1 row in set (0.00 sec)

mysql> select count(comm) from emp2;
+-------------+
| count(comm) |
+-------------+
|           4 |
+-------------+
1 row in set (0.00 sec)

mysql>

mysql> select distinct job from emp2;
+-----------+
| job       |
+-----------+
| CLERK     |
| SALESMAN  |
| MANAGER   |
| ANALYST   |
| PRESIDENT |
+-----------+
5 rows in set (0.00 sec)

mysql>

mysql> select  count(*), job from emp2 group by job;
+----------+-----------+
| count(*) | job       |
+----------+-----------+
|        4 | CLERK     |
|        4 | SALESMAN  |
|        3 | MANAGER   |
|        3 | ANALYST   |
|        1 | PRESIDENT |
+----------+-----------+
5 rows in set (0.00 sec)

mysql>

mysql> select  group_concat(ename), job from emp2 group by job;
+--------------------------+-----------+
| group_concat(ename)      | job       |
+--------------------------+-----------+
| SCOTT,FORD,Aaron         | ANALYST   |
| SMITH,ADAMS,JAMES,MILLER | CLERK     |
| JONES,BLAKE,CLARK        | MANAGER   |
| KING                     | PRESIDENT |
| ALLEN,WARD,MARTIN,TURNER | SALESMAN  |
+--------------------------+-----------+
5 rows in set (0.00 sec)

mysql> select  count(*),group_concat(ename), job from emp2 group by job;
+----------+--------------------------+-----------+
| count(*) | group_concat(ename)      | job       |
+----------+--------------------------+-----------+
|        3 | SCOTT,FORD,Aaron         | ANALYST   |
|        4 | SMITH,ADAMS,JAMES,MILLER | CLERK     |
|        3 | JONES,BLAKE,CLARK        | MANAGER   |
|        1 | KING                     | PRESIDENT |
|        4 | ALLEN,WARD,MARTIN,TURNER | SALESMAN  |
+----------+--------------------------+-----------+
5 rows in set (0.00 sec)

mysql>

mysql> select  count(*),group_concat(ename), dname from emp2 join dept on emp2.deptno
= dept.deptno  group by dname;
+----------+--------------------------------------+------------+
| count(*) | group_concat(ename)                  | dname      |
+----------+--------------------------------------+------------+
|        3 | CLARK,KING,MILLER                    | ACCOUNTING |
|        5 | SMITH,JONES,SCOTT,ADAMS,FORD         | RESEARCH   |
|        6 | ALLEN,WARD,MARTIN,BLAKE,TURNER,JAMES | SALES      |
+----------+--------------------------------------+------------+
3 rows in set (0.00 sec)

mysql>

mysql> select * from emp2 limit 2;
+-------+-------+----------+------+------------+---------+--------+--------+
| empno | ename | job      | mgr  | hiredate   | sal     | comm   | deptno |
+-------+-------+----------+------+------------+---------+--------+--------+
|  7369 | SMITH | CLERK    | 7902 | 1980-12-17 |  800.00 |   NULL |     20 |
|  7499 | ALLEN | SALESMAN | 7698 | 1981-02-20 | 1600.00 | 300.00 |     30 |
+-------+-------+----------+------+------------+---------+--------+--------+
2 rows in set (0.00 sec)

mysql> select * from emp2 limit 5, 2;
+-------+-------+---------+------+------------+---------+------+--------+
| empno | ename | job     | mgr  | hiredate   | sal     | comm | deptno |
+-------+-------+---------+------+------------+---------+------+--------+
|  7698 | BLAKE | MANAGER | 7839 | 1981-05-01 | 2850.00 | NULL |     30 |
|  7782 | CLARK | MANAGER | 7839 | 1981-06-09 | 2450.00 | NULL |     10 |
+-------+-------+---------+------+------------+---------+------+--------+
2 rows in set (0.01 sec)

mysql>

mysql> select  count(*) No_of_employees,group_concat(e.ename) Employee_names, d.dname
dept_name from emp2 e join dept d on e.deptno = d.deptno  group by dname;
+-----------------+--------------------------------------+------------+
| No_of_employees | Employee_names                       | dept_name  |
+-----------------+--------------------------------------+------------+
|               3 | CLARK,KING,MILLER                    | ACCOUNTING |
|               5 | SMITH,JONES,SCOTT,ADAMS,FORD         | RESEARCH   |
|               6 | ALLEN,WARD,MARTIN,BLAKE,TURNER,JAMES | SALES      |
+-----------------+--------------------------------------+------------+
3 rows in set (0.00 sec)

mysql>

mysql> select ename, sal, grade from emp2 join salgrade on sal between losal and hisal;
+--------+---------+-------+
| ename  | sal     | grade |
+--------+---------+-------+
| SMITH  |  800.00 |     1 |
| JAMES  |  950.00 |     1 |
| ADAMS  | 1100.00 |     1 |
| WARD   | 1250.00 |     2 |
| MARTIN | 1250.00 |     2 |
| MILLER | 1300.00 |     2 |
| TURNER | 1500.00 |     3 |
| ALLEN  | 1600.00 |     3 |
| Aaron  | 1700.00 |     3 |
| CLARK  | 2450.00 |     4 |
| BLAKE  | 2850.00 |     4 |
| JONES  | 2975.00 |     4 |
| SCOTT  | 3000.00 |     4 |
| FORD   | 3000.00 |     4 |
| KING   | 5000.00 |     5 |
+--------+---------+-------+
15 rows in set (0.00 sec)

mysql> select ename, sal, grade from emp2 join salgrade on sal >= losal and sal <= hisal;
+--------+---------+-------+
| ename  | sal     | grade |
+--------+---------+-------+
| SMITH  |  800.00 |     1 |
| JAMES  |  950.00 |     1 |
| ADAMS  | 1100.00 |     1 |
| WARD   | 1250.00 |     2 |
| MARTIN | 1250.00 |     2 |
| MILLER | 1300.00 |     2 |
| TURNER | 1500.00 |     3 |
| ALLEN  | 1600.00 |     3 |
| Aaron  | 1700.00 |     3 |
| CLARK  | 2450.00 |     4 |
| BLAKE  | 2850.00 |     4 |
| JONES  | 2975.00 |     4 |
| SCOTT  | 3000.00 |     4 |
| FORD   | 3000.00 |     4 |
| KING   | 5000.00 |     5 |
+--------+---------+-------+
15 rows in set (0.00 sec)

mysql>
mysql> select e.ename, m.ename from emp2 e join emp2 m on e.mgr=m.empno;
+--------+-------+
| ename  | ename |
+--------+-------+
| FORD   | JONES |
| SCOTT  | JONES |
| JAMES  | BLAKE |
| TURNER | BLAKE |
| MARTIN | BLAKE |
| WARD   | BLAKE |
| ALLEN  | BLAKE |
| MILLER | CLARK |
| ADAMS  | SCOTT |
| CLARK  | KING  |
| BLAKE  | KING  |
| JONES  | KING  |
| Aaron  | FORD  |
| SMITH  | FORD  |
+--------+-------+
14 rows in set (0.00 sec)

mysql> select e.ename, m.ename, e.sal  from emp2 e join emp2 m on e.mgr=m.empno order
by e.sal;
+--------+-------+---------+
| ename  | ename | sal     |
+--------+-------+---------+
| SMITH  | FORD  |  800.00 |
| JAMES  | BLAKE |  950.00 |
| ADAMS  | SCOTT | 1100.00 |
| MARTIN | BLAKE | 1250.00 |
| WARD   | BLAKE | 1250.00 |
| MILLER | CLARK | 1300.00 |
| TURNER | BLAKE | 1500.00 |
| ALLEN  | BLAKE | 1600.00 |
| Aaron  | FORD  | 1700.00 |
| CLARK  | KING  | 2450.00 |
| BLAKE  | KING  | 2850.00 |
| JONES  | KING  | 2975.00 |
| FORD   | JONES | 3000.00 |
| SCOTT  | JONES | 3000.00 |
+--------+-------+---------+
14 rows in set (0.00 sec)

mysql>

mysql> select * from emp2 oe where sal = (select max(sal) from emp2 ie where ie.job =
oe.job);
+-------+--------+-----------+------+------------+---------+--------+--------+
| empno | ename  | job       | mgr  | hiredate   | sal     | comm   | deptno |
+-------+--------+-----------+------+------------+---------+--------+--------+
|  7499 | ALLEN  | SALESMAN  | 7698 | 1981-02-20 | 1600.00 | 300.00 |     30 |
|  7566 | JONES  | MANAGER   | 7839 | 1981-04-02 | 2975.00 |   NULL |     20 |
|  7788 | SCOTT  | ANALYST   | 7566 | 1982-12-09 | 3000.00 |   NULL |     20 |
|  7839 | KING   | PRESIDENT | NULL | 1981-11-17 | 5000.00 |   NULL |     10 |
|  7902 | FORD   | ANALYST   | 7566 | 1981-12-03 | 3000.00 |   NULL |     20 |
|  7934 | MILLER | CLERK     | 7782 | 1982-01-23 | 1300.00 |   NULL |     10 |
+-------+--------+-----------+------+------------+---------+--------+--------+
6 rows in set (0.00 sec)

mysql>




sample data:
------------

create database employees;
use employees;
DROP TABLE IF EXISTS emp;

CREATE TABLE emp (
  empno int NOT NULL,
  ename varchar(10) default NULL,
  job varchar(9) default NULL,
  mgr int default NULL,
  hiredate date default NULL,
  sal decimal(7,2) default NULL,
  comm decimal(7,2) default NULL,
  deptno int default NULL
);

DROP TABLE IF EXISTS dept;

CREATE TABLE dept (
  deptno int default NULL,
  dname varchar(14) default NULL,
  loc varchar(13) default NULL
);


DROP TABLE IF EXISTS salgrade;

CREATE TABLE salgrade(
  grade int,
  losal decimal(7,2),
  hisal decimal(7,2)
);

DROP TABLE IF EXISTS bonus;

CREATE TABLE bonus(
  ename VARCHAR(10),
  job   VARCHAR(9),
  sal   decimal(7,2),
  comm  decimal(7,2)
);


INSERT INTO emp VALUES ('7369','SMITH','CLERK','7902','1980-12-17','800.00',NULL,'20');
INSERT INTO emp VALUES ('7499','ALLEN','SALESMAN','7698','1981-02-20','1600.00','300.00','30');
INSERT INTO emp VALUES ('7521','WARD','SALESMAN','7698','1981-02-22','1250.00','500.00','30');
INSERT INTO emp VALUES ('7566','JONES','MANAGER','7839','1981-04-02','2975.00',NULL,'20');
INSERT INTO emp VALUES ('7654','MARTIN','SALESMAN','7698','1981-09-28','1250.00','1400.00','30');
INSERT INTO emp VALUES ('7698','BLAKE','MANAGER','7839','1981-05-01','2850.00',NULL,'30');
INSERT INTO emp VALUES ('7782','CLARK','MANAGER','7839','1981-06-09','2450.00',NULL,'10');
INSERT INTO emp VALUES ('7788','SCOTT','ANALYST','7566','1982-12-09','3000.00',NULL,'20');
INSERT INTO emp VALUES ('7839','KING','PRESIDENT',NULL,'1981-11-17','5000.00',NULL,'10');
INSERT INTO emp VALUES ('7844','TURNER','SALESMAN','7698','1981-09-08','1500.00','0.00','30');
INSERT INTO emp VALUES ('7876','ADAMS','CLERK','7788','1983-01-12','1100.00',NULL,'20');
INSERT INTO emp VALUES ('7900','JAMES','CLERK','7698','1981-12-03','950.00',NULL,'30');
INSERT INTO emp VALUES ('7902','FORD','ANALYST','7566','1981-12-03','3000.00',NULL,'20');
INSERT INTO emp VALUES ('7934','MILLER','CLERK','7782','1982-01-23','1300.00',NULL,'10');

INSERT INTO dept VALUES ('10','ACCOUNTING','NEW YORK');
INSERT INTO dept VALUES ('20','RESEARCH','DALLAS');
INSERT INTO dept VALUES ('30','SALES','CHICAGO');
INSERT INTO dept VALUES ('40','OPERATIONS','BOSTON');

INSERT INTO salgrade VALUES (1, 700, 1200);
INSERT INTO salgrade VALUES (2, 1201, 1400);
INSERT INTO salgrade VALUES (3, 1401, 2000);
INSERT INTO salgrade VALUES (4, 2001, 3000);
INSERT INTO salgrade VALUES (5, 3001, 9999);


MongoDB:

Day 3:

> show dbs
admin   0.000GB
config  0.000GB
local   0.000GB
> show dbs
admin   0.000GB
config  0.000GB
local   0.000GB
> use forcepoint
switched to db forcepoint
> show collections
> db.myfirst_col.insert({name:"sami", job:"Trainer"})
WriteResult({ "nInserted" : 1 })
> show collections
myfirst_col
> show dbs
admin       0.000GB
config      0.000GB
forcepoint  0.000GB
lodb.myfirst_col.insertMany([{name:"scott", salary:35000},{name:"Raj", salary:40000, job:"Manabger"},{name:"Aaron"}])
{
        "acknowledged" : true,
        "insertedIds" : [
                ObjectId("66a3551f3bbd9bbfcacbbcae"),
                ObjectId("66a3551f3bbd9bbfcacbbcaf"),
                ObjectId("66a3551f3bbd9bbfcacbbcb0")
        ]
}
> db.myfirst_col.find();
{ "_id" : ObjectId("66a354113bbd9bbfcacbbcad"), "name" : "sami", "job" : "Trainer" }
{ "_id" : ObjectId("66a3551f3bbd9bbfcacbbcae"), "name" : "scott", "salary" : 35000 }
{ "_id" : ObjectId("66a3551f3bbd9bbfcacbbcaf"), "name" : "Raj", "salary" : 40000, "job" : "Manabger" }
{ "_id" : ObjectId("66a3551f3bbd9bbfcacbbcb0"), "name" : "Aaron" }
>



Day 4: (MongoDB)

{rating:5}

db.emp.find({job: {$in: ["CLERK","SALESMAN"]}})
{ "_id" : 7369, "ename" : "SMITH", "job" : "CLERK", "mgr" : 7902, "hiredate" : ISODate("1980-12-17T00:00:00Z"), "sal" : 800, "deptno" : 20 }
{ "_id" : 7499, "ename" : "ALLEN", "job" : "SALESMAN", "mgr" : 7698, "hiredate" : ISODate("1981-02-20T00:00:00Z"), "sal" : 1600, "comm" : 300, "deptno" : 30 }
{ "_id" : 7521, "ename" : "WARD", "job" : "SALESMAN", "mgr" : 7698, "hiredate" : ISODate("1981-02-22T00:00:00Z"), "sal" : 1250, "comm" : 500, "deptno" : 30 }
{ "_id" : 7654, "ename" : "MARTIN", "job" : "SALESMAN", "mgr" : 7698, "hiredate" : ISODate("1981-09-28T00:00:00Z"), "sal" : 1250, "comm" : 1400, "deptno" : 30 }
{ "_id" : 7844, "ename" : "TURNER", "job" : "SALESMAN", "mgr" : 7698, "hiredate" : ISODate("1981-09-08T00:00:00Z"), "sal" : 1500, "deptno" : 30 }
{ "_id" : 7876, "ename" : "ADAMS", "job" : "CLERK", "mgr" : 7788, "hiredate" : ISODate("1983-01-12T00:00:00Z"), "sal" : 1100, "deptno" : 20 }
{ "_id" : 7900, "ename" : "JAMES", "job" : "CLERK", "mgr" : 7698, "hiredate" : ISODate("1981-12-03T00:00:00Z"), "sal" : 950, "deptno" : 30 }
{ "_id" : 7934, "ename" : "MILLER", "job" : "CLERK", "mgr" : 7782, "hiredate" : ISODate("1982-01-23T00:00:00Z"), "sal" : 1300, "deptno" : 10 }



{ ename: { $regex: /^[^ABC]/ } }

{ ename: { $regex: /^[ABC]/ } , job: "MANAGER"}

db.emp.find({ ename: { $regex: /^[ABC]/ } , job: "MANAGER"})

{salary: {$exists: true } }

db.emp.find( {$or:[{ ename:"BLAKE" } , { job: "CLERK"}  ]} ) 

{salary: {$exists: false } }

{salary: null }

db.emp.find( {}, {ename:1, sal:1})

db.emp.find( {}, {_id:0, ename:1, sal:1}) 

db.emp.find( {}, {_id:0, ename:1, sal:1}).sort({ename:1})

db.emp.find( {}, {_id:0, ename:1, sal:1}).sort({ename:-1})

db.emp.find( {}, {_id:0, ename:1, sal:1}).skip(3).limit(5)

db.emp.find( {}, {_id:0, ename:1, sal:1}).count()

-------
QUERY : 
-------

GUI
{"job": {$in:["SALESMAN", "CLERK"]}}
{ename: {$regex: /^M/}}     - ename starting with M
{ename: {$regex: /^J/}}
{ename: {$regex: /..../}}   - Return all ename
{ ename: { $regex: /T$/ } }   - ename ending with T
{ ename: { $regex: /^[ABC]/ } } - ename starting with A or B or C
{ ename: { $regex: /^[^ABC]/ } }  - ename not starting with A or B or C
{ ename: { $regex: /^[ABC]/ } , job: "MANAGER" }   - this or this

{ $or :  [{ename:"BLAKE"}, {job:"CLERK"} ]  }   - 


MONGOSH:
db.emp.find({"job": {$in:["SALESMAN", "CLERK"]}})
------------------------------------------------

Sample Data:
============

EMP Collection:
---------------
[{
  "_id": 7369,
  "ename": "SMITH",
  "job": "CLERK",
  "mgr": 7902,
  "hiredate": {
    "$date": {
      "$numberLong": "345859200000"
    }
  },
  "sal": 800,
  "deptno": 20
},{
  "_id": 7499,
  "ename": "ALLEN",
  "job": "SALESMAN",
  "mgr": 7698,
  "hiredate": {
    "$date": {
      "$numberLong": "351475200000"
    }
  },
  "sal": 1600,
  "comm": 300,
  "deptno": 30
},{
  "_id": 7521,
  "ename": "WARD",
  "job": "SALESMAN",
  "mgr": 7698,
  "hiredate": {
    "$date": {
      "$numberLong": "351648000000"
    }
  },
  "sal": 1250,
  "comm": 500,
  "deptno": 30
},{
  "_id": 7566,
  "ename": "JONES",
  "job": "MANAGER",
  "mgr": 7839,
  "hiredate": {
    "$date": {
      "$numberLong": "355017600000"
    }
  },
  "sal": 2975,
  "deptno": 20
},{
  "_id": 7654,
  "ename": "MARTIN",
  "job": "SALESMAN",
  "mgr": 7698,
  "hiredate": {
    "$date": {
      "$numberLong": "370483200000"
    }
  },
  "sal": 1250,
  "comm": 1400,
  "deptno": 30
},{
  "_id": 7698,
  "ename": "BLAKE",
  "job": "MANAGER",
  "mgr": 7839,
  "hiredate": {
    "$date": {
      "$numberLong": "357523200000"
    }
  },
  "sal": 2850,
  "deptno": 30
},{
  "_id": 7782,
  "ename": "CLARK",
  "job": "MANAGER",
  "mgr": 7839,
  "hiredate": {
    "$date": {
      "$numberLong": "360892800000"
    }
  },
  "sal": 2450,
  "deptno": 10
},{
  "_id": 7788,
  "ename": "SCOTT",
  "job": "ANALYST",
  "mgr": 7566,
  "hiredate": {
    "$date": {
      "$numberLong": "408240000000"
    }
  },
  "sal": 3000,
  "deptno": 20
},{
  "_id": 7839,
  "ename": "KING",
  "job": "PRESIDENT",
  "hiredate": {
    "$date": {
      "$numberLong": "374803200000"
    }
  },
  "sal": 5000,
  "deptno": 10
},{
  "_id": 7844,
  "ename": "TURNER",
  "job": "SALESMAN",
  "mgr": 7698,
  "hiredate": {
    "$date": {
      "$numberLong": "368755200000"
    }
  },
  "sal": 1500,
  "deptno": 30
},{
  "_id": 7876,
  "ename": "ADAMS",
  "job": "CLERK",
  "mgr": 7788,
  "hiredate": {
    "$date": {
      "$numberLong": "411177600000"
    }
  },
  "sal": 1100,
  "deptno": 20
},{
  "_id": 7900,
  "ename": "JAMES",
  "job": "CLERK",
  "mgr": 7698,
  "hiredate": {
    "$date": {
      "$numberLong": "376185600000"
    }
  },
  "sal": 950,
  "deptno": 30
},{
  "_id": 7902,
  "ename": "FORD",
  "job": "ANALYST",
  "mgr": 7566,
  "hiredate": {
    "$date": {
      "$numberLong": "376185600000"
    }
  },
  "sal": 3000,
  "deptno": 20
},{
  "_id": 7934,
  "ename": "MILLER",
  "job": "CLERK",
  "mgr": 7782,
  "hiredate": {
    "$date": {
      "$numberLong": "380592000000"
    }
  },
  "sal": 1300,
  "deptno": 10
}]


Dept Collection:
----------------
[{
  "_id": 10,
  "dname": "ACCOUNTING",
  "loc": "NEW YORK"
},{
  "_id": 20,
  "dname": "RESEARCH",
  "loc": "DALLAS"
},{
  "_id": 30,
  "dname": "SALES",
  "loc": "CHICAGO"
},{
  "_id": 40,
  "dname": "OPERATIONS",
  "loc": "BOSTON"
}]

Agggregation Pipelines:

db.emp.aggregate([ { $match: { job:"MANAGER" } } ])

db.emp.aggregate([ {$group:{ _id:"$job", tot_sal:{$sum:"$sal"}}}, {  $match: { tot_sal : {$gt : 5000  } } } ])




========================================================================
Sample Restaurants Data for Exercise:
-------------------------------------



================ End of Sample Restaurant Data ===================


1. Write a MongoDB query to display all the documents in the collection restaurants.


2. Write a MongoDB query to display the fields restaurant_id, name, borough and cuisine for all the documents in the collection restaurant.


3. Write a MongoDB query to display the fields restaurant_id, name, borough and cuisine, but exclude the field _id for all the documents in the collection restaurant.


4. Write a MongoDB query to display the fields restaurant_id, name, borough and zip code, but exclude the field _id for all the documents in the collection restaurant.


5. Write a MongoDB query to display all the restaurant which is in the borough Bronx.


6. Write a MongoDB query to display the first 5 restaurant which is in the borough Bronx.


7.Write a MongoDB query to display the next 5 restaurants after skipping first 5 which are in the borough Bronx.


8. Write a MongoDB query to find the restaurants who achieved a score more than 90.


9. Write a MongoDB query to find the restaurants that achieved a score, more than 80 but less than 100.


10. Write a MongoDB query to find the restaurants which locate in latitude value less than -95.754168.


11. Write a MongoDB query to find the restaurants that do not prepare any cuisine of 'American' and their grade score more than 70 and latitude less than -65.754168.


12. Write a MongoDB query to find the restaurants which do not prepare any cuisine of 'American' and achieved a score more than 70 and located in the longitude less than -65.754168.
Note : Do this query without using $and operator.


13. Write a MongoDB query to find the restaurants which do not prepare any cuisine of 'American ' and achieved a grade point 'A' not belongs to the borough Brooklyn. The document must be displayed according to the cuisine in descending order.


14. Write a MongoDB query to find the restaurant Id, name, borough and cuisine for those restaurants which contain 'Wil' as first three letters for its name.


15. Write a MongoDB query to find the restaurant Id, name, borough and cuisine for those restaurants which contain 'ces' as last three letters for its name.


16. Write a MongoDB query to find the restaurant Id, name, borough and cuisine for those restaurants which contain 'Reg' as three letters somewhere in its name.


17. Write a MongoDB query to find the restaurants which belong to the borough Bronx and prepared either American or Chinese dish.


18. Write a MongoDB query to find the restaurant Id, name, borough and cuisine for those restaurants which belong to the borough Staten Island or Queens or Bronxor Brooklyn.


19. Write a MongoDB query to find the restaurant Id, name, borough and cuisine for those restaurants which are not belonging to the borough Staten Island or Queens or Bronxor Brooklyn.


20. Write a MongoDB query to find the restaurant Id, name, borough and cuisine for those restaurants which achieved a score which is not more than 10.


21. Write a MongoDB query to find the restaurant Id, name, borough and cuisine for those restaurants which prepared dish except 'American' and 'Chinees' or restaurant's name begins with letter 'Wil'.


22. Write a MongoDB query to find the restaurant Id, name, and grades for those restaurants which achieved a grade of "A" and scored 11 on an ISODate "2014-08-11T00:00:00Z" among many of survey dates..


23. Write a MongoDB query to find the restaurant Id, name and grades for those restaurants where the 2nd element of grades array contains a grade of "A" and score 9 on an ISODate "2014-08-11T00:00:00Z".


24. Write a MongoDB query to find the restaurant Id, name, address and geographical location for those restaurants where 2nd element of coord array contains a value which is more than 42 and upto 52..


25. Write a MongoDB query to arrange the name of the restaurants in ascending order along with all the columns.


26. Write a MongoDB query to arrange the name of the restaurants in descending along with all the columns.


27. Write a MongoDB query to arranged the name of the cuisine in ascending order and for that same cuisine borough should be in descending order.


28. Write a MongoDB query to know whether all the addresses contains the street or not.


29. Write a MongoDB query which will select all documents in the restaurants collection where the coord field value is Double.


30. Write a MongoDB query which will select the restaurant Id, name and grades for those restaurants which returns 0 as a remainder after dividing the score by 7.


31. Write a MongoDB query to find the restaurant name, borough, longitude and attitude and cuisine for those restaurants which contains 'mon' as three letters somewhere in its name.


32. Write a MongoDB query to find the restaurant name, borough, longitude and latitude and cuisine for those restaurants which contain 'Mad' as first three letters of its name.



 Answers:

 1.  db.restaurants.find();


 2.
 db.restaurants.find({},{"restaurant_id" : 1,"name":1,"borough":1,"cuisine" :1});

 3. db.restaurants.find({},{"restaurant_id" : 1,"name":1,"borough":1,"cuisine" :1,"_id":0});

 4. db.restaurants.find({},{"restaurant_id" : 1,"name":1,"borough":1,"address.zipcode" :1,"_id":0});

 5. db.restaurants.find({"borough": "Bronx"});

 6. db.restaurants.find({"borough": "Bronx"}).limit(5);

 7. db.restaurants.find({"borough": "Bronx"}).skip(5).limit(5);

 8. db.restaurants.find({grades : { $elemMatch:{"score":{$gt : 90}}}});

 9. db.restaurants.find({grades : { $elemMatch:{"score":{$gt : 80 , $lt :100}}}});

 10. db.restaurants.find({"address.coord" : {$lt : -95.754168}});

 11. db.restaurants.find(
               {$and:
                    [
                       {"cuisine" : {$ne :"American "}},
                       {"grades.score" : {$gt : 70}},
                       {"address.coord" : {$lt : -65.754168}}
                    ]
                }
                    );

 12. db.restaurants.find(
                           {
                             "cuisine" : {$ne : "American "},
                             "grades.score" :{$gt: 70},
                             "address.coord" : {$lt : -65.754168}
                            }
                     );

 13. db.restaurants.find( {
                             "cuisine" : {$ne : "American "},
                             "grades.grade" :"A",
                             "borough": {$ne : "Brooklyn"}
                       }
                    ).sort({"cuisine":-1});

 14. db.restaurants.find(
{name: /^Wil/},
{
"restaurant_id" : 1,
"name":1,"borough":1,
"cuisine" :1
}
);

 15. db.restaurants.find(
{name: /ces$/},
{
"restaurant_id" : 1,
"name":1,"borough":1,
"cuisine" :1
}
);

 16. db.restaurants.find(
{"name": /.*Reg.*/},
{
"restaurant_id" : 1,
"name":1,"borough":1,
"cuisine" :1
}
);

 17. db.restaurants.find(
{
"borough": "Bronx" ,
$or : [
{ "cuisine" : "American " },
{ "cuisine" : "Chinese" }
]
}
);

 18. db.restaurants.find(
{"borough" :{$in :["Staten Island","Queens","Bronx","Brooklyn"]}},
{
"restaurant_id" : 1,
"name":1,"borough":1,
"cuisine" :1
}
);

 19. db.restaurants.find(
{"borough" :{$nin :["Staten Island","Queens","Bronx","Brooklyn"]}},
{
"restaurant_id" : 1,
"name":1,"borough":1,
"cuisine" :1
}
);

 20. db.restaurants.find(
{"grades.score" :
{ $not:
{$gt : 10}
}
},
{
"restaurant_id" : 1,
"name":1,"borough":1,
"cuisine" :1
}
);

 21. db.restaurants.find(
{$or: [
  {name: /^Wil/},
  {"$and": [
       {"cuisine" : {$ne :"American "}},
       {"cuisine" : {$ne :"Chinees"}}
   ]}
]}
,{"restaurant_id" : 1,"name":1,"borough":1,"cuisine" :1}
);

 22. db.restaurants.find(
                {
                 "grades.date": ISODate("2014-08-11T00:00:00Z"),
                 "grades.grade":"A" ,
                 "grades.score" : 11
                },
                {"restaurant_id" : 1,"name":1,"grades":1}
             );

 23. db.restaurants.find(
                      { "grades.1.date": ISODate("2014-08-11T00:00:00Z"),
                        "grades.1.grade":"A" ,
                        "grades.1.score" : 9
                      },
                       {"restaurant_id" : 1,"name":1,"grades":1}
                   );

 24. db.restaurants.find(
                      {
                        "address.coord.1": {$gt : 42, $lte : 52}
                      },
                        {"restaurant_id" : 1,"name":1,"address":1,"coord":1}
                   );

 25. db.restaurants.find().sort({"name":1});

 26. db.restaurants.find().sort(
                          {"name":-1}
                          );

 27. db.restaurants.find().sort(
                           {"cuisine":1,"borough" : -1,}
                          );

 28. db.restaurants.find(
                     {"address.street" :
                         { $exists : true }
                     }
                   );

 29. db.restaurants.find(
                    {"address.coord" :
                       {$type : 1}
                    }
                   );

 30. db.restaurants.find(
                      {"grades.score" :
                         {$mod : [7,0]}
                      },
                         {"restaurant_id" : 1,"name":1,"grades":1}
                    );

 31. db.restaurants.find(
                   { name :
                     { $regex : "mon.*", $options: "i" }
                   },
                       {
                         "name":1,
                         "borough":1,
                         "address.coord":1,
                         "cuisine" :1
                        }
                   );

 32. db.restaurants.find(
                   { name :
                     { $regex : /^Mad/i, }
                   },
                       {
                         "name":1,
                         "borough":1,
                         "address.coord":1,
                         "cuisine" :1
                        }
                   );










Session 1: TypeScript & JavaScrip
Session 2: Setting up React Environment
		   Introduction to React
		   First React App
		   Components in React
		   JSX 
		   Functional Component vs Class Component
		   Working with DevTools
Session 3: Passing Props 
		   Managing State in React
		   Handling Events in React
		   2-Way Binding
		   Lifting State up
Session 4: Component lifecycle in React
		   Conditional Rendering
		   Rendering Lists of Data
		   Working with Styles (Styled Components)
Session 5: Component Composition
           Higher Order Components
		   The children props
Session 6 & 7: Working with Forms
           Event handlers
		   Working with Refs
		   Validating form data
		   using FormData to retrieve data
		   Hooks in React
		   UseEffect Hooks
		   useForm Hook
		   Custom Hooks
		   
Session 8: Creating Multi-Page Applications,
		   React Routing API
		   MicroFront-End Architecture (Single SPA architecture)
Session 9: Context API
			Redux, Redux Toolkit and RTK query
		   The useReducer Hook
Session 10: Integration with Backend Applications
