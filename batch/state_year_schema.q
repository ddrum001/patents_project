drop table state2007data;
drop table state2008data;
CREATE EXTERNAL TABLE IF NOT EXISTS state2007data (state STRING,yearCount INT) ROW FORMAT DELIMITED FIELDS TERMINATED BY '\t' STORED AS TEXTFILE;
insert overwrite table state2007data select state, count(state) from statedata where dateapp between 20070000 and 20080000 group by state;

CREATE EXTERNAL TABLE IF NOT EXISTS state2008data (state STRING,yearCount INT) ROW FORMAT DELIMITED FIELDS TERMINATED BY '\t' STORED AS TEXTFILE;
insert overwrite table state2008data select state, count(state) from statedata where dateapp between 20080000 and 20090000 group by state;

