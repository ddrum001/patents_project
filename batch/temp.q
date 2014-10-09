drop table state201212data;
CREATE EXTERNAL TABLE IF NOT EXISTS state201212data (state STRING,yearCount INT) ROW FORMAT DELIMITED FIELDS TERMINATED BY '\t' STORED AS TEXTFILE;
insert overwrite table state201212data select state, count(state) from tabular_data where dategrant between 20121200 and 20121232 group by state;
