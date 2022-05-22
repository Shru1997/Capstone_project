#execute the following commands
hdfs dfs -rm -r /user/anabig114246/hive/warehouse/departments/*
hdfs dfs -rm -r /user/anabig114246/hive/warehouse/employees/*
hdfs dfs -rm -r /user/anabig114246/hive/warehouse/titles/*
hdfs dfs -rm -r /user/anabig114246/hive/warehouse/salary/*
hdfs dfs -rm -r /user/anabig114246/hive/warehouse/dept_manager/*
hdfs dfs -rm -r /user/anabig114246/hive/warehouse/dept_emp/*

hdfs dfs -rm -r /user/anabig114246/hive/warehouse/departments/
hdfs dfs -rm -r /user/anabig114246/hive/warehouse/employees/
hdfs dfs -rm -r /user/anabig114246/hive/warehouse/titles/
hdfs dfs -rm -r /user/anabig114246/hive/warehouse/salary/
hdfs dfs -rm -r /user/anabig114246/hive/warehouse/dept_manager/
hdfs dfs -rm -r /user/anabig114246/hive/warehouse/dept_emp/

sqoop import-all-tables  --connect jdbc:mysql://ip-10-1-1-204.ap-south-1.compute.internal:3306/anabig114216 --username anabig114216 --password Bigdata123 --compression-codec=snappy --as-avrodatafile --warehouse-dir=/user/anabig114216/hive/warehouse --driver com.mysql.jdbc.Driver

hdfs dfs -rm -r /user/anabig114216/new/*
hdfs dfs -rm -r /user/anabig114216/new/
hdfs dfs -rm -r /user/anabig114216/impala/*
hdfs dfs -rm -r /user/anabig114216/impala/

hadoop fs -put /home/anabig114216/employeee.avsc /user/anabig114216/new/employeee.avsc
hadoop fs -put /home/anabig114216/titles.avsc /user/anabig114216/new/titles.avsc
hadoop fs -put /home/anabig114216/salary.avsc /user/anabig114216/new/salary.avsc
hadoop fs -put /home/anabig114216/department.avsc /user/anabig114216/new/department.avsc
hadoop fs -put /home/anabig114216/dept_manager.avsc /user/anabig114216/new/dept_manager.avsc
hadoop fs -put /home/anabig114216/dept_emp.avsc /user/anabig114216/new/dept_emp.avsc

hadoop fs -chmod +rw /user/anabig114216/new

impala-shell -f command_impala.sql>output.txt
hive -f command_impala.sql > output.txt

#Open impala editor and run the below commands
SELECT t1.emp_no, t1.last_name, t1.first_name, t1.sex, t2.salary
FROM employees t1
JOIN salaries  t2
ON t1.emp_no = t2.emp_no;

SELECT t1.dept_no, t1.dept_name, t2.emp_no, t3.last_name, t3.first_name
FROM department t1 
JOIN dept_manager t2
ON t1.dept_no = t2.dept_no
JOIN employees t3
ON t2.emp_no = t3.emp_no;

SELECT t1.emp_no, t2.last_name, t2.first_name, t3.dept_name
FROM dept_emp t1
JOIN employees t2
ON t1.emp_no = t2.emp_no
JOIN department t3
ON t1.dept_no = t3.dept_no;

SELECT first_name, last_name,sex
FROM employees
WHERE first_name = 'Hercules' AND last_name Like 'B%'

SELECT t3.dept_name, t2.last_name, t2.first_name
FROM dept_emp t1
JOIN employees t2
ON t1.emp_no = t2.emp_no
JOIN department t3
ON t1.dept_no = t3.dept_no
WHERE t3.dept_name = 'Sales';

SELECT t1.emp_no,t1.last_name,t1.first_name,t3.dept_name
from employees t1
JOIN dept_emp t2
ON t1.emp_no = t2.emp_no
JOIN department t3
ON t2.dept_no = t3.dept_no
WHERE t3.dept_name = 'Sales' OR t3.dept_name = 'development'

SELECT last_name,COUNT(last_name) AS Frequency_Count
FROM employees
GROUP BY last_name
ORDER BY
FREQUENCY_Count DESC;

select t3.title, AVG(t1.salary) as avg_salary
            from anabig114216.salary t1
            join anabig114216.employees t2
            on t1.emp_no = t2.emp_no
            join anabig114216.titles t3
            on t2.emp_titles_id =t3.title_id
            group by t3.title;

SELECT
    CASE 
        WHEN t1.salary >= 40000 and t1.salary < 60000 THEN '40000-60000'
        WHEN t1.salary >= 60000 and t1.salary <80000 THEN '60000-80000'
        WHEN t1.salary >= 80000 and t1.salary < 100000 THEN '80000-100000'
        WHEN t1.salary >= 100000 and t1.salary < 120000 THEN '100000-120000'
        WHEN t1.salary >= 120000 and t1.salary < 140000 THEN '120000-140000'
        ELSE 'Nothing'
        END as salary_range
FROM salary t1
JOIN employees t2
on t1.emp_no = t2.emp_no;

SELECT salary_range,count(salary_range) as salaries
from bin
GROUP BY salary_range
ORDER BY salaries DESC
from salaries 
join employees
on salary.emp_no = employees.emp_no
order by avg_salary desc limit 10;

select t3.dept_name,t3.dept_no,t1.emp_no,t1.firstname
from employees t1
join dept_emp t2
on t1.emp_no = t2.emp_no
join departments t3
on t3.dept_no=t2.dept_no
where firstname like '%B'


select t1.first_name,t1.last_name,t2.title,t1.emp_no
from employees t1
Join titles t2
on t1.emp_titles_id = t2.title_id
where title = ''

Select avg(salary) avg_salary,min(salary) min_salary,max(salary) max_salary
from salary
order by avg_salary,min_salary,max_salary

#output of result in Impala.csv

