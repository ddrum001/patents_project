# script to move the json files onto HDFS, separated by year

current_year=$(date +%Y)
cd json
for ((year=2002;year<=current_year;year=year+1))
do
        hdfs dfs -mkdir -p data/patgrant/json/year=$year
        hdfs dfs -put $(echo $(ls | grep $year.....xml.json)) data/patgrant/json/year=$year/
done
cd ..

