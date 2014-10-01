# script to move the json files onto HDFS, separated by those before
# the schema before 2013, and those afterward

current_year=$(date +%Y)
cd json
for ((year=2005;year<=2012;year=year+1))
do
        hdfs dfs -mkdir -p data/patgrant/json/first_schema
        hdfs dfs -put $(echo $(ls | grep $year.....xml.json)) /user/ubuntu/data/patgrant/json/first_schema
done
for ((year=2013;year<=current_year;year=year+1))
do
        hdfs dfs -mkdir -p data/patgrant/json/second_schema
        hdfs dfs -put $(echo $(ls | grep $year.....xml.json)) data/patgrant/json/second_schema/
done
cd ..
# the december entries of 2012 are of the second schema and need to be moved

hdfs dfs -mv /user/ubuntu/data/patgrant/json/first_schema/ipgb20121204.xml.json /user/ubuntu/data/patgrant/json/second_schema/
hdfs dfs -mv /user/ubuntu/data/patgrant/json/first_schema/ipgb20121211.xml.json  /user/ubuntu/data/patgrant/json/second_schema/
hdfs dfs -mv /user/ubuntu/data/patgrant/json/first_schema/ipgb20121218.xml.json /user/ubuntu/data/patgrant/json/second_schema/
hdfs dfs -mv /user/ubuntu/data/patgrant/json/first_schema/ipgb20121225.xml.json /user/ubuntu/data/patgrant/json/second_schema/


