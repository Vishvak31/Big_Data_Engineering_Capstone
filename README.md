# Big_Data_Engineering_Capstone
Integration of MySQL with Hive using Sqoop. Using PySpark for SparkML modelling


Run the following Commands in the given order

1)Login to mysql
mysql -u anabig11428 -pBigdata123

2)show databases;
use anabig11428;

3) Create tables for retail data using codes
a. upload createdatabase.sql to ftp (https://npbdh.cloudloka.com/ftp)

b. run the below command to create tables and lead data into them under:
source creation_loading_of_table_mysql.sql 

d.exit from mysql by using below given command:
quit

4. create a directory in hdfs and a directory in local to store the dataset as well as tables schema which will be import from mysql by using below commands:
creating directory in hdfs. 
hdfs dfs -mkdir exl_capstone
creating directory in local
mkdir BuidingSchema

5. copy the export_database_using_sqoop.sh to exlboot_camp:
cp sqoop.sh BuidingSchema

6.change the directory to exlboot_camp we have created:
cd BuidingSchema 

6. Run the following command:
sh Sqoooooooop.sh 

7. cd the directory back to local:
cd ..

8. Run the command to cpoy the achema file to hdfs:
hdfs dfs -put exl_capstone

9) Run the following command to create hive table:
hive -f hive_eda.hql

10) Run the following command to run the analysis on the tables we have created in hive and the save the query in output_hive_tables.txt:
hive -f hive_eda.hql > output_hive_tables.txt

11) Open the Capstone SparkML.ipynb file for running all the spark and ML commands
