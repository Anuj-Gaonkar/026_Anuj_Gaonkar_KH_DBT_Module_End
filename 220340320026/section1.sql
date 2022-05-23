-- 3. Display all the employees where SAL between 2500 and 5000 (inclusive of both).
select * from emp
where sal between 2500 and 5000;



-- 4. Display all the ENAMEs in descending order of ENAME.
select ename "Employee Name" from emp
order by 1 desc;

-- 5. Display all the JOBs in lowercase.
select lower(job) "Jobs in lower case" from emp;


-- 6. Display the ENAMEs and the lengths of the ENAMEs.
select ename "Employee Name", length(ename) "length of employee names" from emp;


-- 7. Display the DEPTNO and the count of employees who belong to that DEPTNO .
select deptno "DEPT No", count(*) "Count of employees per dept" from emp
group by deptno;

-- 8.Display the DNAMEs and the ENAMEs who belong to that DNAME.
select ename "Employee Name", dname "Department Name" from emp, dept
where (emp.deptno = dept.deptno);

-- 9. Display the position at which the string ‘AR’ occurs in the ename.
select ename "Employee Name", instr(ename, 'AR') "Position of 'AR'" from emp;


-- 10. Display the HRA for each employee given that HRA is 20% of SAL
select empno "Employee No", ename "Employee Name", sal "Salary", sal*0.2 "HRA" from emp;

