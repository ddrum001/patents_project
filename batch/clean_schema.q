drop table regiondata;
CREATE TABLE IF NOT EXISTS regiondata (
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
LOCATION '/user/ubuntu/data/clean/2014/';

