# generate the state year schema and perform the map-reduce

./gen_state_year.sh > state_year_schema.q
hive -f state_year_schema.q
