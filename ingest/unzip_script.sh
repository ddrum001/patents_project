# create a directory to temporarily hold the xml and txt files, then unzip the files to that directory
# before 2002 the patents were recorded as txt files, which are moved to their own directory
# these have to be separated from the description files that come with the xml files
# fourtunately, the desired files all have the form year.txt (e.g. 1976.txt) and can be 
# selected with a grep command

mkdir txt
mkdir xml
unzip "./zip/*.zip" -d xml
cd xml
mv $(echo $(ls | grep $.....txt)) ../txt/

# clean up the undesired description files
rm *.txt
rm *.html

# next put the unprocessed xml files on HDFS for safe keeping
# new directories are created for each year
# separated by the year that the patent was granted

current_year=$(date +%Y)
for ((year=1976;year<=current_year;year=year+1))
do
	hdfs dfs -mkdir -p data/patgrant/xml/year=$year
	hdfs dfs -put $(echo $(ls | grep $year.....xml)) data/patgrant/xml/year=$year/  
done
cd ..

