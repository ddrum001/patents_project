drop table tabular_data;
CREATE EXTERNAL TABLE IF NOT EXISTS tabular_data (
city STRING,
state STRING,
country STRING,
orgname STRING,
dategrant INT,
patno INT,
dateapp INT,
appno INT
)
ROW FORMAT DELIMITED
FIELDS TERMINATED BY '\t'
STORED AS TEXTFILE;

LOAD DATA INPATH '/user/ubuntu/data/clean/'
OVERWRITE INTO TABLE tabular_data;
