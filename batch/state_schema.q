drop table statedata;
CREATE EXTERNAL TABLE IF NOT EXISTS statedata (
state STRING,
city STRING,
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

LOAD DATA LOCAL INPATH '/home/ubuntu/patents_project/batch/year/'
OVERWRITE INTO TABLE statedata;
