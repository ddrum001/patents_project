# A script to generate the necessary tables and schema for aggregations for states over years
# this script should be outputted to state_year_schema.q with >

# First we aggregate the states for each year

current_year=$(date +%Y%m)
first_year=200501
for ((year=first_year;year<=current_year;year=year+100))
do
	for ((month=0;month<12;month=month+1))
	do
		dat=$(($year+$month))
		echo "drop table state${dat}data;"
		echo "CREATE EXTERNAL TABLE IF NOT EXISTS state${dat}data (state STRING,yearCount INT) ROW FORMAT DELIMITED FIELDS TERMINATED BY '\t' STORED AS TEXTFILE;"
		echo "insert overwrite table state${dat}data select state, count(state) from tabular_data where dategrant between ${dat}00 and ${dat}32 group by state;"
		echo ""
	done
done

# followed by a query from the big joined table

echo -n "SELECT state${first_year}data.state"
for ((year=first_year;year<=current_year;year=year+100))
do
        for ((month=0;month<12;month=month+1))
        do
		dat=$(($year+$month))
		echo -n ", state${dat}data.yearCount" 
	done
done
echo ""
echo -n "FROM state${first_year}data"
for ((year=first_year;year<=current_year;year=year+100))
do
        for ((month=0;month<12;month=month+1))
        do
                dat=$(($year+$month))
	        echo -n " FULL OUTER JOIN state${dat}data ON (state${dat}data.state = state${first_year}data.state)" 
	done
done
echo ';'



