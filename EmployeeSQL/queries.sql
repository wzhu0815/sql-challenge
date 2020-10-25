
-- 1. List the following details of each employee: employee number, last name, first name, sex, and salary.
select es.emp_no,es.last_name, es.first_name,es.sex, s.salary 
from  employees as es
inner join salaries as s
on es.emp_no = s.emp_no;

-- 2. List first name, last name, and hire date for employees who were hired in 1986.
select first_name,last_name,hire_date from employees
where hire_date between '1986-01-01' and '1986-12-31';

-- 3. List the manager of each department with the following information: department number, department name, the manager's employee number, last name, first name.

select dm.dept_no, dp.dept_name, dm.emp_no,es.last_name, es.first_name from dept_manager as dm
inner join departments as dp on dm.dept_no=dp.dept_no
inner join employees as es on es.emp_no = dm.emp_no;

--4. List the department of each employee with the following information: employee number, last name, first name, and department name.
select es.emp_no, es.last_name,es.first_name, dp.dept_name
from employees as es
inner join dept_emp as de on es.emp_no = de.emp_no
inner join departments as dp on de.dept_no = dp.dept_no;

-- 5. List first name, last name, and sex for employees whose first name is "Hercules" and last names begin with "B."
select first_name, last_name, sex from employees
where first_name = 'Hercules' and last_name like 'B%';

-- 6. List all employees in the Sales department, including their employee number, last name, first name, and department name.
select es.emp_no, es.last_name,es.first_name, dp.dept_name
from employees as es
inner join dept_emp as de on es.emp_no = de.emp_no
inner join departments as dp on de.dept_no = dp.dept_no
where dept_name = 'Sales';

-- 7. List all employees in the Sales and Development departments, including their employee number, last name, first name, and department name.
select es.emp_no, es.last_name,es.first_name, dp.dept_name
from employees as es
inner join dept_emp as de on es.emp_no = de.emp_no
inner join departments as dp on de.dept_no = dp.dept_no
where dept_name = 'Sales' or dept_name = 'Development';

-- 8. In descending order, list the frequency count of employee last names, i.e., how many employees share each last name.
select last_name, count(*) from employees group by last_name order by last_name;