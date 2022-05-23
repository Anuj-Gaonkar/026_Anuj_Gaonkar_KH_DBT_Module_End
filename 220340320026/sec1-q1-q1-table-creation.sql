/*
1. Create table DEPT with the following structure:-
DEPTNO int(2)
DNAME varchar(15)
LOC varchar(10)
Insert the following rows into the DEPT table:-
10 ACCOUNTING NEW YORK
20 RESEARCH DALLAS
30 SALES CHICAGO
40 OPERATIONS BOSTON
*/

create table DEPT
(
DEPTNO int(2),
DNAME varchar(15),
LOC varchar(10)
);

insert into DEPT(DEPTNO, DNAME, LOC) values
(10, 'ACCOUNTING', 'NEW YORK'),
(20, 'RESEARCH', 'DALLAS'),
(30, 'SALES', 'CHICAGO'),
(40, 'OPERATIONS', 'BOSTON');

select * from dept;

/*
2. Create table EMP with the following structure:-
EMPNO int(4)
ENAME varchar(10)
JOB varchar(9)
HIREDATE date
SAL float(7,2)
COMM float(7,2)
DEPTNO int(2)
Insert the following rows into the EMP table:-
7839 KING MANAGER 1991-11-17 5000 NULL 10
7698 BLAKE CLERK 1981-05-01 2850 NULL 30
7782 CLARK MANAGER 1981-06-09 2450 NULL 10
7566 JONES CLERK 1981-04-02 2975 NULL 20
7654 MARTIN SALESMAN 1981-09-28 1250 1400 30
7499 ALLEN SALESMAN 1981-02-20 1600 300 30
*/

create table EMP
(
EMPNO int(4),
ENAME varchar(10),
JOB varchar(9),
HIREDATE date,
SAL float(7,2),
COMM float(7,2),
DEPTNO int(2)
);

insert into emp(empno, ename, job, hiredate, sal, comm, deptno) values
(7839, 'KING', 'MANAGER', '1991-11-17', 5000, NULL, 10),
(7698, 'BLAKE', 'CLERK', '1981-05-01', 2850, NULL, 30),
(7782, 'CLARK', 'MANAGER', '1981-06-09', 2450, NULL, 10),
(7566, 'JONES', 'CLERK', '1981-04-02', 2975, NULL, 20),
(7654, 'MARTIN', 'SALESMAN', '1981-09-28', 1250, 1400, 30),
(7499, 'ALLEN', 'SALESMAN', '1981-02-20', 1600, 300, 30);

select * from emp;
