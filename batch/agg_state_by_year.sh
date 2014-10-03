# generate the state year schema and perform the map-reduce
# storing the results in state_year.tsv for easy access

./gen_state_year.sh > state_year_schema.q
hive -f state_year_schema.q > state_year.tsv

# as well as HDFS for redundancy

hdfs dfs -mkdir /user/ubuntu/data/agg/
hdfs dfs -put /home/ubuntu/patents_project/batch/state_year2.tsv /user/ubuntu/data/agg/


