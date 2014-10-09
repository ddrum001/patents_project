drop table state_pop_data;
CREATE EXTERNAL TABLE IF NOT EXISTS state_pop_data (
state STRING,
pop INT
)
ROW FORMAT DELIMITED
FIELDS TERMINATED BY '\t'
STORED AS TEXTFILE;

LOAD DATA INPATH '/user/ubuntu/data/pop/'
OVERWRITE INTO TABLE state_pop_data;
