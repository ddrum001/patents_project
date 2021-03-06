# script to move the json files onto HDFS, separated by those before
# the schema before 2010, and those afterward

current_year=$(date +%Y)
cd json
for ((year=2002;year<=2010;year=year+1))
do
        hdfs dfs -mkdir -p data/patgrant/json/first_schema
        hdfs dfs -put $(echo $(ls | grep $year.....xml.json)) data/patgrant/json/first_schema/
done
for ((year=2011;year<=current_year;year=year+1))
do
        hdfs dfs -mkdir -p data/patgrant/json/second_schema
        hdfs dfs -put $(echo $(ls | grep $year.....xml.json)) data/patgrant/json/second_schema/
done
cd ..

