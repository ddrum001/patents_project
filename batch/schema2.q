drop table citydata;
CREATE TABLE IF NOT EXISTS citydata (
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

LOAD DATA LOCAL INPATH '/home/ubuntu/insight_patents/city_test.tsv'
OVERWRITE INTO TABLE citydata;
