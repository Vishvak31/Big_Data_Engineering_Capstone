mkdir BuidingSchema

cd BuidingSchema

sqoop import-all-tables --m 1 --connect jdbc:mysql://ip-10-1-1-204.ap-south-1.compute.internal:3306/anabig11428 --username anabig11428 --password Bigdata123 --compression-codec=snappy --as-avrodatafile --warehouse-dir '/user/anabig11428/exl_capstone/' --driver com.mysql.jdbc.Driver