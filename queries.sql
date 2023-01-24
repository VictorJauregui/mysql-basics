
INSERT INTO 
    employees (emp_no, birth_date , first_name, last_name, gender, hire_date) 
VALUES 
(1, '1988-06-12', 'Miquel', 'Abella', 'M', '2022-01-19'),
(2, '1975-04-09', 'Sergi', 'Clemente', 'M', '2022-01-19'),
(3, '1987-05-10', 'Lucia', 'del Cacho', 'F', '2022-01-19'),
(4, '1991-01-11', 'Kenny', 'Naranjo', 'M', '2022-01-19'),
(5, '1998-03-23', 'Ynohé', 'Sandoval', 'M', '2022-01-19'),
(6, '1987-12-21', 'Berta', 'Garcia', 'F', '2022-01-19'),
(7, '1990-11-05', 'Monica', 'Reverte', 'F', '2022-01-19'),
(8, '1986-11-04', 'Marian', 'Roibu', 'M', '2022-01-19'),
(9, '1988-01-18', 'Iñaki', 'García', 'M', '2022-01-19'),
(10, '1988-01-18', 'Iñaki', 'García', 'M', '2022-01-19'),
(11, '1988-01-18', 'Iñaki', 'García', 'M', '2022-01-19'),
(12, '1976-01-14', 'Dayan', 'Álvarez', 'M', '2022-01-19'),
(13, '1976-01-14', 'Dayan', 'Álvarez', 'M', '2022-01-19'),
(14, '1974-07-20', 'Ruben', 'Zafra', 'M', '2022-01-19'),
(15, '1974-07-20', 'Ruben', 'Zafra', 'M', '2022-01-19');

SELECT * FROM employees;


------


INSERT INTO 
	salaries (emp_no, salary, from_date, to_date)
VALUES 
(1, 40000, '2020-11-01', '2021-11-01'),
(1, 46000, '2021-11-05', '2022-11-05'),
(2, 35000, '2020-12-01', '2021-12-01'),
(2, 45000, '2021-12-01', '2022-12-01'),
(3, 41200, '2021-12-01', '2022-12-01'),
(4, 33500, '2020-10-15', '2021-10-15'),
(4, 43000, '2021-10-15', '2022-10-15'),
(5, 41200, '2021-11-01', '2022-11-01'),
(6, 33000, '2020-11-01', '2021-11-01'),
(6, 45000, '2021-11-01', '2022-11-01'),
(7, 25000, '2021-05-01', '2022-05-01'),
(8, 28000, '2021-11-03', '2022-11-03'),
(9, 28000, '2021-09-09', '2022-09-09'),
(10, 33000, '2020-12-01', '2021-12-01'),
(10, 39000, '2021-12-01', '2022-12-01'),
(11, 33000, '2021-12-01', '2022-12-01'),
(12, 33000, '2021-12-01', '2022-12-01'),
(13, 33000, '2021-12-01', '2022-12-01'),
(14, 33000, '2021-12-01', '2022-12-01'),
(15, 33000, '2021-12-01', '2022-12-01');


SELECT * FROM salaries;
UPDATE salaries SET salary = 40000 where emp_no=1 and from_date='2020-11-01';

------

INSERT INTO 
	departments (dept_no, dept_name)
VALUES 
	(1, 'administration'),
    (2, 'seo'),
    (3, 'marketing'),
    (4, 'design'),
    (5, 'sales');

SELECT * FROM departments;
UPDATE departments set dept_name = 'seo' where dept_no = 2;
DELETE FROM departments where dept_no = 1;


----

INSERT INTO dept_emp (emp_no, dept_no, from_date, to_date)
VALUES
(1, 1, '2021-06-15', '2023-01-20'),
(1, 3, '2021-08-20', '2023-01-20'),
(2, 2, '2020-03-19', '2022-02-23'),
(2, 5, '2020-12-13', '2023-01-20'),
(3, 1, '2018-09-19', '2022-02-20'),
(3, 4, '2020-03-19', '2023-01-23'),
(4, 1, '2020-03-19', '2022-01-23'),
(4, 3, '2020-03-19', '2022-01-23'),
(5, 5, '2020-03-19', '2022-01-23'),
(5, 4, '2020-03-19', '2022-01-23'),
(6, 3, '2021-03-19', '2022-01-23'),
(6, 5, '2020-03-19', '2022-01-23'),
(7, 2, '2018-03-19', '2022-01-23'),
(7, 3, '2020-03-19', '2022-01-23'),
(8, 1, '2019-03-19', '2022-01-23'),
(8, 2, '2020-03-19', '2022-01-23'),
(9, 5, '2019-02-19', '2022-01-23'),
(9, 3, '2021-04-19', '2022-01-23'),
(10, 4, '2017-01-19', '2022-01-23'),
(10, 3, '2022-04-19', '2022-01-23');


select * from dept_emp;

----


INSERT INTO dept_manager (emp_no, dept_no, from_date, to_date)
VALUES 
(11, 5, '2019-02-19', '2023-01-23'),
(12, 3, '2015-04-17', '2021-01-20'),
(13, 1, '2018-10-15', '2022-01-23'),
(14, 2, '2013-04-19', '2019-01-22'),
(15, 4, '2018-03-19', '2022-01-23');
 
select * from dept_manager;

----

INSERT INTO titles (emp_no, title, from_date, to_date)
VALUES 

(1, 'degree of design', '2016-03-19', '2019-01-23'),
(2, 'degree of marketing', '2018-03-19', '2022-01-23'),
(3, 'degree of marketing', '2020-03-20', '2023-01-23'),
(4, 'degree of UX', '2020-03-19', '2022-01-23'),
(5, 'degree of developer', '2012-03-19', '2016-01-23'),
(6, 'degree of sales', '2020-03-19', '2023-01-23'),
(7, 'degree of developer', '2016-03-19', '2019-01-23'),
(8, 'degree of administration', '2018-03-19', '2022-01-23'),
(9, 'degree of science of education', '2017-03-19', '2021-01-23'),
(10, 'degree of administration', '2014-03-19', '2018-01-23'),
(11, 'degree of marketing', '2017-03-19', '2021-01-23'),
(12, 'degree of UX', '2019-03-20', '2023-01-23'),
(13, 'degree of developer', '2020-03-20', '2023-01-23'),
(14, 'degree of sales', '2020-03-20', '2023-01-23'),
(15, 'degree of marketing', '2020-03-20', '2023-01-23');

select * from titles;


-------


-- UPDATE DATA;
-- Change the name of an employee. To do this, generate a query that affects only a certain employee based on their name, surname and date of birth; 


UPDATE employees set first_name = 'Victor' where emp_no = 3;
UPDATE employees set last_name = 'Jauregui' where emp_no = 3;
UPDATE employees set birth_date = '1991-10-28' where emp_no = 3;
UPDATE employees set gender = 'M' where emp_no = 3;


-- Change the name of all departments;

UPDATE departments set dept_name = 'comercial' where dept_no = 1;
UPDATE departments set dept_name = 'finance' where dept_no = 2;
UPDATE departments set dept_name = 'general direction' where dept_no = 3;
UPDATE departments set dept_name = 'Purchasing' where dept_no = 4;
UPDATE departments set dept_name = 'Public Relations' where dept_no = 5;








-- GET DATA;
-- Select all employees with a salary greater than 40,000, you must list all employees data and the salary;

SELECT e.emp_no, e.first_name, e.last_name, e.gender, e.hire_date , s.salary FROM employees e LEFT JOIN salaries s ON e.emp_no = s.emp_no WHERE s.salary >= 40000;



-- Select all employees with a salary below 30,000, you must list all employees data and the salary;

SELECT e.emp_no, e.first_name, e.last_name, e.gender, e.hire_date , s.salary FROM employees e LEFT JOIN salaries s ON e.emp_no = s.emp_no WHERE s.salary < 30000;




-- Select all employees who have a salary between 35,000 and 50,000, you must list all employees data and the salary;


SELECT e.emp_no, e.first_name, e.last_name, e.gender, e.hire_date , s.salary FROM employees e LEFT JOIN salaries s ON e.emp_no = s.emp_no WHERE s.salary between 35000 and 50000;



-- Select the total number of employees;


SELECT COUNT(emp_no) FROM employees;


-- Select the total number of employees who have worked in more than one department;

WITH doubleEmployees As
(
    SELECT emp_no
    FROM dept_emp
    GROUP BY emp_no
    HAVING COUNT(*)>1
)
SELECT COUNT(*) FROM doubleEmployees;


-- Select the titles of the year 2020;

SELECT title, from_date from titles where year (from_date) between 2020 and 2021;



-- Select the name of all employees with capital letters;


SELECT UPPER(first_name) FROM employees;


-- Select the name, surname and name of the current department of each employee; *********************


SELECT e.first_name, e.last_name, d.dept_name
  FROM employees e
  JOIN (
    SELECT emp_no, dept_no, from_date 
    FROM dept_emp 
    WHERE from_date IN (
      SELECT MAX(from_date) 
      FROM dept_emp 
      GROUP BY emp_no
    )
  ) recent_depts ON e.emp_no = recent_depts.emp_no 
  JOIN departments d ON recent_depts.dept_no = d.dept_no 
  ORDER BY e.emp_no;


-- Select the name, surname and number of times the employee has worked as a manager;

SELECT e.first_name, e.last_name, COUNT(*) as times FROM employees e JOIN dept_manager dpm ON e.emp_no = dpm.emp_no GROUP BY e.emp_no;



-- Select the name of employees without any being repeated;

SELECT DISTINCT first_name, last_name, birth_date  FROM employees;







-- DELETE DATA
-- Delete all employees with a salary greater than 40,000;

DELETE e FROM employees e INNER JOIN salaries s ON e.emp_no = s.emp_no  WHERE s.salary > 40000;


-- Remove the department that has more employees;

DELETE FROM departments WHERE dept_no = (SELECT dept_no 
    FROM dept_emp 
    WHERE to_date >= 2023-01-01 
    GROUP BY dept_no
    ORDER BY COUNT(DISTINCT emp_no) DESC 
    LIMIT 1
  );
