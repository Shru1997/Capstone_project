
DROP DATABASE IF EXISTS anabig114216;
create database anabig114216;
use anabig114216;


drop table if exists employees;
CREATE EXTERNAL TABLE employeee STORED AS AVRO LOCATION '/user/anabig114216/hive/warehouse/employeee' TBLPROPERTIES ('avro.schema.url'='/user/anabig114216/new/employeee.avsc');

drop table if exists titles;
CREATE EXTERNAL TABLE titles STORED AS AVRO LOCATION '/user/anabig114216/hive/warehouse/titles' TBLPROPERTIES ('avro.schema.url'='/user/anabig114216/new/titles.avsc');

drop table if exists salary;
CREATE EXTERNAL TABLE salary STORED AS AVRO LOCATION '/user/anabig114216/hive/warehouse/salary' TBLPROPERTIES ('avro.schema.url'='/user/anabig114216/new/salary.avsc');

drop table if exists department;
CREATE EXTERNAL TABLE department STORED AS AVRO LOCATION '/user/anabig114216/hive/warehouse/department' TBLPROPERTIES ('avro.schema.url'='/user/anabig114216/new/department.avsc');

drop table if exists dept_manager;
CREATE EXTERNAL TABLE dept_manager STORED AS AVRO LOCATION '/user/anabig114216/hive/warehouse/dept_manager' TBLPROPERTIES ('avro.schema.url'='/user/anabig114216/new/dept_manager.avsc');

drop table if exists dept_emp;
CREATE EXTERNAL TABLE dept_emp STORED AS AVRO LOCATION '/user/anabig114216/hive/warehouse/dept_emp' TBLPROPERTIES ('avro.schema.url'='/user/anabig114216/new/dept_emp.avsc');