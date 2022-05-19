use db_vishvak;
CREATE EXTERNAL TABLE departments
ROW FORMAT SERDE 'org.apache.hadoop.hive.serde2.avro.AvroSerDe'
STORED AS INPUTFORMAT 'org.apache.hadoop.hive.ql.io.avro.AvroContainerInputFormat'
OUTPUTFORMAT 'org.apache.hadoop.hive.ql.io.avro.AvroContainerOutputFormat'
location "/user/anabig11428/exl_capstone/departments"
TBLPROPERTIES ('avro.schema.url'='/user/anabig11428/BuidingSchema/departments.avsc');

CREATE EXTERNAL TABLE dept_emp
ROW FORMAT SERDE 'org.apache.hadoop.hive.serde2.avro.AvroSerDe'
STORED AS INPUTFORMAT 'org.apache.hadoop.hive.ql.io.avro.AvroContainerInputFormat'
OUTPUTFORMAT 'org.apache.hadoop.hive.ql.io.avro.AvroContainerOutputFormat'
location "/user/anabig11428/exl_capstone/dept_emp"
TBLPROPERTIES ('avro.schema.url'='/user/anabig11428/BuidingSchema/dept_emp.avsc');

CREATE EXTERNAL TABLE dept_manager
ROW FORMAT SERDE 'org.apache.hadoop.hive.serde2.avro.AvroSerDe'
STORED AS INPUTFORMAT 'org.apache.hadoop.hive.ql.io.avro.AvroContainerInputFormat'
OUTPUTFORMAT 'org.apache.hadoop.hive.ql.io.avro.AvroContainerOutputFormat'
location "/user/anabig11428/exl_capstone/dept_manager"
TBLPROPERTIES ('avro.schema.url'='/user/anabig11428/BuidingSchema/dept_manager.avsc');

CREATE EXTERNAL TABLE employees
ROW FORMAT SERDE 'org.apache.hadoop.hive.serde2.avro.AvroSerDe'
STORED AS INPUTFORMAT 'org.apache.hadoop.hive.ql.io.avro.AvroContainerInputFormat'
OUTPUTFORMAT 'org.apache.hadoop.hive.ql.io.avro.AvroContainerOutputFormat'
location "/user/anabig11428/exl_capstone/employees"
TBLPROPERTIES ('avro.schema.url'='/user/anabig11428/BuidingSchema/employees.avsc');

CREATE EXTERNAL TABLE salaries
ROW FORMAT SERDE 'org.apache.hadoop.hive.serde2.avro.AvroSerDe'
STORED AS INPUTFORMAT 'org.apache.hadoop.hive.ql.io.avro.AvroContainerInputFormat'
OUTPUTFORMAT 'org.apache.hadoop.hive.ql.io.avro.AvroContainerOutputFormat'
location "/user/anabig11428/exl_capstone/salaries"
TBLPROPERTIES ('avro.schema.url'='/user/anabig11428/BuidingSchema/salaries.avsc');

CREATE EXTERNAL TABLE titles
ROW FORMAT SERDE 'org.apache.hadoop.hive.serde2.avro.AvroSerDe'
STORED AS INPUTFORMAT 'org.apache.hadoop.hive.ql.io.avro.AvroContainerInputFormat'
OUTPUTFORMAT 'org.apache.hadoop.hive.ql.io.avro.AvroContainerOutputFormat'
location "/user/anabig11428/exl_capstone/titles"
TBLPROPERTIES ('avro.schema.url'='/user/anabig11428/BuidingSchema/titles.avsc');