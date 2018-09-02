Section III. Get information
Use HR database
Write a query to get the department name (Departments.DEPARTMENT_NAME) 
and number of employees (COUNT) in each department.

mysql> SELECT Departments.DEPARTMENT_NAME, COUNT(Employees.EMPLOYEE_ID) AS TOTAL_EMPLOYEES FROM Departments LEFT JOIN Employees ON Employees.DEPARTMENT_ID = Departments.DEPARTMENT_ID GROUP BY DEPARTMENT_NAME;
+----------------------+-----------------+
| DEPARTMENT_NAME      | TOTAL_EMPLOYEES |
+----------------------+-----------------+
| Accounting           |               2 |
| Administration       |               1 |
| Benefits             |               0 |
| Construction         |               0 |
| Contracting          |               0 |
| Control And Credit   |               0 |
| Corporate Tax        |               0 |
| Executive            |               3 |
| Finance              |               6 |
| Government Sales     |               0 |
| Human Resources      |               1 |
27 rows in set (0.09 sec)

Write a query to find the employee ID (Employees.EMPLOYEE_ID), 
job title (Jobs.JOB_TITLE), number of days between ending date and starting date (JobsHistory.END_DATE - JobsHistory.START_DATE) for all jobs in department 90 (DEPARTMENT_ID) from job history (JobsHistory).



Write a query to display the department name (Departments.
DEPARTMENT_NAME), manager name (Employees.FIRST_NAME), 
and city (Locations.CITY).

SELECT Departments.DEPARTMENT_NAME, Employees.FIRST_NAME, Locations.CITY FROM Departments
    -> INNER JOIN Employees ON Employees.MANAGER_ID = Departments.MANAGER_ID
    -> INNER JOIN Locations ON Locations.LOCATION_ID = Departments.LOCATION_ID
    -> WHERE Employees.MANAGER_ID <> 0;

Write a query to display the job title (Jobs.JOBS_TITLE) 
and average salary (Employees.SALARY) of employees.

SELECT Jobs.JOB_TITLE, CAST(AVG(Employees.SALARY) AS DECIMAL(10,2)) AS AVERAGE_SALARY FROM Employees
    -> INNER JOIN Jobs ON Jobs.JOB_ID = Employees.JOB_ID
    -> GROUP BY Employees.JOB_ID;

EXTRA BONUS Write a query to display the job history (JobsHistory) 
that were done by any employee (Employees) who is currently earning 
more than 10000 of salary (Employees.SALARY).
