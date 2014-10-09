# quick script to create table schemata with the JSON Hive SerDe
# for the first and second schema

# these scripts create the tables with their specified schemata

#hive -f first_schema_class.q
hive -f second_schema_class.q

# then these scripts load the data from HDFS into the tables
# the output is placed in a tsv file for simple viewing

#mkdir clean
#hive -f clean_first_schema.q > clean/clean_first_class_schema.tsv
hive -f clean_second_schema.q > clean/clean_second_class_schema.tsv

# as well as HDFS for distributed redundancy

#hdfs dfs -mkdir /user/ubuntu/data/clean
#hdfs dfs -put /home/ubuntu/patents_project/batch/clean/clean_first_schema.tsv /user/ubuntu/data/clean/
#hdfs dfs -put /home/ubuntu/patents_project/batch/clean/clean_second_schema.tsv /user/ubuntu/data/clean/

# finally a tabular schema is written and data is loaded

#hive -f tab_schema.q
