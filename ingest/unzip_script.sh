#mkdir xml
#unzip "./zip/*.zip" -d xml

# clean up the undesired description files

#rm xml/*.txt
#rm xml/*.html

current_year=2014
cd xml
for ((year=2014;year<=current_year;year=year+1))
do
	hdfs dfs -mkdir -p data/patgrant/xml/year=$year
	hdfs dfs -put $(echo $(ls | grep $year.....xml)) data/patgrant/xml/year=$year/  
done
cd ..

