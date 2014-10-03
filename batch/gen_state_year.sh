# A script to generate the necessary tables and schema for aggregations for states over years
# this script should be outputted to state_year_schema.q with >

# First we aggregate the states for each year

current_year=$(date +%Y)
first_year=2005
for ((year=first_year;year<=current_year;year=year+1))
do
	echo "drop table state${year}data;"
	echo "CREATE EXTERNAL TABLE IF NOT EXISTS state${year}data (state STRING,yearCount INT) ROW FORMAT DELIMITED FIELDS TERMINATED BY '\t' STORED AS TEXTFILE;"
	echo "insert overwrite table state${year}data select state, count(state) from tabular_data where dategrant between ${year}0000 and $(($year+1))0000 group by state;"
	echo ""
done

# followed by a query from the big joined table

echo -n "SELECT state${first_year}data.state"
for ((year=first_year;year<=current_year;year=year+1))
do
	echo -n ", state${year}data.yearCount" 
done
echo ""
echo -n "FROM state${first_year}data"
for ((year=first_year+1;year<=current_year;year=year+1))
do
        echo -n " FULL OUTER JOIN state${year}data ON (state${year}data.state = state${first_year}data.state)" 
done
echo ';'



