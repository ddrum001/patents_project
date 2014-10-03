drop table state2005data;
CREATE EXTERNAL TABLE IF NOT EXISTS state2005data (state STRING,yearCount INT) ROW FORMAT DELIMITED FIELDS TERMINATED BY '\t' STORED AS TEXTFILE;
insert overwrite table state2005data select state, count(state) from tabular_data where dategrant between 20050000 and 20060000 group by state;

drop table state2006data;
CREATE EXTERNAL TABLE IF NOT EXISTS state2006data (state STRING,yearCount INT) ROW FORMAT DELIMITED FIELDS TERMINATED BY '\t' STORED AS TEXTFILE;
insert overwrite table state2006data select state, count(state) from tabular_data where dategrant between 20060000 and 20070000 group by state;

drop table state2007data;
CREATE EXTERNAL TABLE IF NOT EXISTS state2007data (state STRING,yearCount INT) ROW FORMAT DELIMITED FIELDS TERMINATED BY '\t' STORED AS TEXTFILE;
insert overwrite table state2007data select state, count(state) from tabular_data where dategrant between 20070000 and 20080000 group by state;

drop table state2008data;
CREATE EXTERNAL TABLE IF NOT EXISTS state2008data (state STRING,yearCount INT) ROW FORMAT DELIMITED FIELDS TERMINATED BY '\t' STORED AS TEXTFILE;
insert overwrite table state2008data select state, count(state) from tabular_data where dategrant between 20080000 and 20090000 group by state;

drop table state2009data;
CREATE EXTERNAL TABLE IF NOT EXISTS state2009data (state STRING,yearCount INT) ROW FORMAT DELIMITED FIELDS TERMINATED BY '\t' STORED AS TEXTFILE;
insert overwrite table state2009data select state, count(state) from tabular_data where dategrant between 20090000 and 20100000 group by state;

drop table state2010data;
CREATE EXTERNAL TABLE IF NOT EXISTS state2010data (state STRING,yearCount INT) ROW FORMAT DELIMITED FIELDS TERMINATED BY '\t' STORED AS TEXTFILE;
insert overwrite table state2010data select state, count(state) from tabular_data where dategrant between 20100000 and 20110000 group by state;

drop table state2011data;
CREATE EXTERNAL TABLE IF NOT EXISTS state2011data (state STRING,yearCount INT) ROW FORMAT DELIMITED FIELDS TERMINATED BY '\t' STORED AS TEXTFILE;
insert overwrite table state2011data select state, count(state) from tabular_data where dategrant between 20110000 and 20120000 group by state;

drop table state2012data;
CREATE EXTERNAL TABLE IF NOT EXISTS state2012data (state STRING,yearCount INT) ROW FORMAT DELIMITED FIELDS TERMINATED BY '\t' STORED AS TEXTFILE;
insert overwrite table state2012data select state, count(state) from tabular_data where dategrant between 20120000 and 20130000 group by state;

drop table state2013data;
CREATE EXTERNAL TABLE IF NOT EXISTS state2013data (state STRING,yearCount INT) ROW FORMAT DELIMITED FIELDS TERMINATED BY '\t' STORED AS TEXTFILE;
insert overwrite table state2013data select state, count(state) from tabular_data where dategrant between 20130000 and 20140000 group by state;

drop table state2014data;
CREATE EXTERNAL TABLE IF NOT EXISTS state2014data (state STRING,yearCount INT) ROW FORMAT DELIMITED FIELDS TERMINATED BY '\t' STORED AS TEXTFILE;
insert overwrite table state2014data select state, count(state) from tabular_data where dategrant between 20140000 and 20150000 group by state;

SELECT state2005data.state, state2005data.yearCount, state2006data.yearCount, state2007data.yearCount, state2008data.yearCount, state2009data.yearCount, state2010data.yearCount, state2011data.yearCount, state2012data.yearCount, state2013data.yearCount, state2014data.yearCount
FROM state2005data FULL OUTER JOIN state2006data ON (state2006data.state = state2005data.state) FULL OUTER JOIN state2007data ON (state2007data.state = state2005data.state) FULL OUTER JOIN state2008data ON (state2008data.state = state2005data.state) FULL OUTER JOIN state2009data ON (state2009data.state = state2005data.state) FULL OUTER JOIN state2010data ON (state2010data.state = state2005data.state) FULL OUTER JOIN state2011data ON (state2011data.state = state2005data.state) FULL OUTER JOIN state2012data ON (state2012data.state = state2005data.state) FULL OUTER JOIN state2013data ON (state2013data.state = state2005data.state) FULL OUTER JOIN state2014data ON (state2014data.state = state2005data.state);
