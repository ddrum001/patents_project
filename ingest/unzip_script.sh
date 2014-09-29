# create a directory to temporarily hold the xml files, then unzip the files to that directory

mkdir xml
unzip "./zip/*.zip" -d xml

# clean up the undesired description files

rm xml/*.txt
rm xml/*.html

# next put the unprocessed xml files on HDFS for safe keeping
# new directories are created for each year
# separated by the year that the patent was granted

current_year=2014
cd xml
for ((year=1976;year<=current_year;year=year+1))
do
	hdfs dfs -mkdir -p data/patgrant/xml/year=$year
	hdfs dfs -put $(echo $(ls | grep $year.....xml)) data/patgrant/xml/year=$year/  
done
cd ..

