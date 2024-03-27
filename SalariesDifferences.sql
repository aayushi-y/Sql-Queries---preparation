/*
Salaries Differences

Interview Question Date: November 2020

LinkedIn
Dropbox
Easy
ID 10308

Write a query that calculates the difference between the highest salaries found in the marketing and engineering departments. 
Output just the absolute difference in salaries.  
Tables: db_employee, db_dept */

With CTE1 as 
(select max(emp.salary) as marketing_salary
    from db_employee emp inner join db_dept dept 
    on emp.department_id = dept.id 
    where dept.department = "marketing"),
CTE2 as 
(select max(emp.salary) as eng_salary
    from db_employee emp inner join db_dept dept 
    on emp.department_id = dept.id 
    where dept.department = "engineering")
select (marketing_salary - eng_salary) as salary_difference from CTE1 join CTE2;
