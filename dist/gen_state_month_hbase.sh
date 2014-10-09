# create table by entering hbase shell and typing the line below:
# create 'st_mo', 'mCt'

echo -n 'hbase org.apache.hadoop.hbase.mapreduce.ImportTsv -Dimporttsv.columns=HBASE_ROW_KEY'

current_date=$(date +%Y%m)
first_date=200501
for ((year=first_date;year<=current_date;year=year+100))
do
        for ((month=0;month<12;month=month+1))
        do
                dat=$(($year+$month))
		echo -n ',mCt:y_'
		echo -n "${dat}"
	done
done
echo  ' st_mo /user/ubuntu/data/agg/state_month.tsv'
