# generate the state year schema and perform the map-reduce
# storing the results in state_year.tsv for easy access
# being careful to eliminate NULL rows generated by the outer join

./gen_state_month.sh > state_month_schema.q
hive -f state_month_schema.q > state_month.tsv | grep -v ^NULL

# as well as HDFS for redundancy

hdfs dfs -mkdir /user/ubuntu/data/agg2/
hdfs dfs -put /home/ubuntu/patents_project/batch/state_month.tsv /user/ubuntu/data/agg2/


