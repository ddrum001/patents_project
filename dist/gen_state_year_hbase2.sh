# create table by entering hbase shell and typing the line below:
# create 'st_yr4','pop','yCt'

current_year=$(date +%Y)
first_year=2000

echo -n 'hbase org.apache.hadoop.hbase.mapreduce.ImportTsv -Dimporttsv.columns=HBASE_ROW_KEY'
echo -n ',pop:p'
for ((year=first_year;year<=current_year;year=year+1))
do
	echo -n ',yCt:y_'
	echo -n "${year}"
done
echo  ' st_yr4 /user/ubuntu/data/agg4/state_year4.tsv'
