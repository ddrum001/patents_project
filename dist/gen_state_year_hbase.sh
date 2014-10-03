# create table by entering hbase shell and typing the line below:
# create 'st_yr', 'yCt'

current_year=$(date +%Y)
first_year=2004

echo -n 'hbase org.apache.hadoop.hbase.mapreduce.ImportTsv -Dimporttsv.columns=HBASE_ROW_KEY'
for ((year=first_year;year<=current_year;year=year+1))
do
	echo -n ',yCt:y_'
	echo -n "${year}"
done
echo  ' st_yr /user/ubuntu/data/agg/state_year.tsv'
