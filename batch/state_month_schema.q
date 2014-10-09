drop table state200501data;
CREATE EXTERNAL TABLE IF NOT EXISTS state200501data (state STRING,yearCount INT) ROW FORMAT DELIMITED FIELDS TERMINATED BY '\t' STORED AS TEXTFILE;
insert overwrite table state200501data select state, count(state) from tabular_data where dategrant between 20050100 and 20050132 group by state;

drop table state200502data;
CREATE EXTERNAL TABLE IF NOT EXISTS state200502data (state STRING,yearCount INT) ROW FORMAT DELIMITED FIELDS TERMINATED BY '\t' STORED AS TEXTFILE;
insert overwrite table state200502data select state, count(state) from tabular_data where dategrant between 20050200 and 20050232 group by state;

drop table state200503data;
CREATE EXTERNAL TABLE IF NOT EXISTS state200503data (state STRING,yearCount INT) ROW FORMAT DELIMITED FIELDS TERMINATED BY '\t' STORED AS TEXTFILE;
insert overwrite table state200503data select state, count(state) from tabular_data where dategrant between 20050300 and 20050332 group by state;

drop table state200504data;
CREATE EXTERNAL TABLE IF NOT EXISTS state200504data (state STRING,yearCount INT) ROW FORMAT DELIMITED FIELDS TERMINATED BY '\t' STORED AS TEXTFILE;
insert overwrite table state200504data select state, count(state) from tabular_data where dategrant between 20050400 and 20050432 group by state;

drop table state200505data;
CREATE EXTERNAL TABLE IF NOT EXISTS state200505data (state STRING,yearCount INT) ROW FORMAT DELIMITED FIELDS TERMINATED BY '\t' STORED AS TEXTFILE;
insert overwrite table state200505data select state, count(state) from tabular_data where dategrant between 20050500 and 20050532 group by state;

drop table state200506data;
CREATE EXTERNAL TABLE IF NOT EXISTS state200506data (state STRING,yearCount INT) ROW FORMAT DELIMITED FIELDS TERMINATED BY '\t' STORED AS TEXTFILE;
insert overwrite table state200506data select state, count(state) from tabular_data where dategrant between 20050600 and 20050632 group by state;

drop table state200507data;
CREATE EXTERNAL TABLE IF NOT EXISTS state200507data (state STRING,yearCount INT) ROW FORMAT DELIMITED FIELDS TERMINATED BY '\t' STORED AS TEXTFILE;
insert overwrite table state200507data select state, count(state) from tabular_data where dategrant between 20050700 and 20050732 group by state;

drop table state200508data;
CREATE EXTERNAL TABLE IF NOT EXISTS state200508data (state STRING,yearCount INT) ROW FORMAT DELIMITED FIELDS TERMINATED BY '\t' STORED AS TEXTFILE;
insert overwrite table state200508data select state, count(state) from tabular_data where dategrant between 20050800 and 20050832 group by state;

drop table state200509data;
CREATE EXTERNAL TABLE IF NOT EXISTS state200509data (state STRING,yearCount INT) ROW FORMAT DELIMITED FIELDS TERMINATED BY '\t' STORED AS TEXTFILE;
insert overwrite table state200509data select state, count(state) from tabular_data where dategrant between 20050900 and 20050932 group by state;

drop table state200510data;
CREATE EXTERNAL TABLE IF NOT EXISTS state200510data (state STRING,yearCount INT) ROW FORMAT DELIMITED FIELDS TERMINATED BY '\t' STORED AS TEXTFILE;
insert overwrite table state200510data select state, count(state) from tabular_data where dategrant between 20051000 and 20051032 group by state;

drop table state200511data;
CREATE EXTERNAL TABLE IF NOT EXISTS state200511data (state STRING,yearCount INT) ROW FORMAT DELIMITED FIELDS TERMINATED BY '\t' STORED AS TEXTFILE;
insert overwrite table state200511data select state, count(state) from tabular_data where dategrant between 20051100 and 20051132 group by state;

drop table state200512data;
CREATE EXTERNAL TABLE IF NOT EXISTS state200512data (state STRING,yearCount INT) ROW FORMAT DELIMITED FIELDS TERMINATED BY '\t' STORED AS TEXTFILE;
insert overwrite table state200512data select state, count(state) from tabular_data where dategrant between 20051200 and 20051232 group by state;

drop table state200601data;
CREATE EXTERNAL TABLE IF NOT EXISTS state200601data (state STRING,yearCount INT) ROW FORMAT DELIMITED FIELDS TERMINATED BY '\t' STORED AS TEXTFILE;
insert overwrite table state200601data select state, count(state) from tabular_data where dategrant between 20060100 and 20060132 group by state;

drop table state200602data;
CREATE EXTERNAL TABLE IF NOT EXISTS state200602data (state STRING,yearCount INT) ROW FORMAT DELIMITED FIELDS TERMINATED BY '\t' STORED AS TEXTFILE;
insert overwrite table state200602data select state, count(state) from tabular_data where dategrant between 20060200 and 20060232 group by state;

drop table state200603data;
CREATE EXTERNAL TABLE IF NOT EXISTS state200603data (state STRING,yearCount INT) ROW FORMAT DELIMITED FIELDS TERMINATED BY '\t' STORED AS TEXTFILE;
insert overwrite table state200603data select state, count(state) from tabular_data where dategrant between 20060300 and 20060332 group by state;

drop table state200604data;
CREATE EXTERNAL TABLE IF NOT EXISTS state200604data (state STRING,yearCount INT) ROW FORMAT DELIMITED FIELDS TERMINATED BY '\t' STORED AS TEXTFILE;
insert overwrite table state200604data select state, count(state) from tabular_data where dategrant between 20060400 and 20060432 group by state;

drop table state200605data;
CREATE EXTERNAL TABLE IF NOT EXISTS state200605data (state STRING,yearCount INT) ROW FORMAT DELIMITED FIELDS TERMINATED BY '\t' STORED AS TEXTFILE;
insert overwrite table state200605data select state, count(state) from tabular_data where dategrant between 20060500 and 20060532 group by state;

drop table state200606data;
CREATE EXTERNAL TABLE IF NOT EXISTS state200606data (state STRING,yearCount INT) ROW FORMAT DELIMITED FIELDS TERMINATED BY '\t' STORED AS TEXTFILE;
insert overwrite table state200606data select state, count(state) from tabular_data where dategrant between 20060600 and 20060632 group by state;

drop table state200607data;
CREATE EXTERNAL TABLE IF NOT EXISTS state200607data (state STRING,yearCount INT) ROW FORMAT DELIMITED FIELDS TERMINATED BY '\t' STORED AS TEXTFILE;
insert overwrite table state200607data select state, count(state) from tabular_data where dategrant between 20060700 and 20060732 group by state;

drop table state200608data;
CREATE EXTERNAL TABLE IF NOT EXISTS state200608data (state STRING,yearCount INT) ROW FORMAT DELIMITED FIELDS TERMINATED BY '\t' STORED AS TEXTFILE;
insert overwrite table state200608data select state, count(state) from tabular_data where dategrant between 20060800 and 20060832 group by state;

drop table state200609data;
CREATE EXTERNAL TABLE IF NOT EXISTS state200609data (state STRING,yearCount INT) ROW FORMAT DELIMITED FIELDS TERMINATED BY '\t' STORED AS TEXTFILE;
insert overwrite table state200609data select state, count(state) from tabular_data where dategrant between 20060900 and 20060932 group by state;

drop table state200610data;
CREATE EXTERNAL TABLE IF NOT EXISTS state200610data (state STRING,yearCount INT) ROW FORMAT DELIMITED FIELDS TERMINATED BY '\t' STORED AS TEXTFILE;
insert overwrite table state200610data select state, count(state) from tabular_data where dategrant between 20061000 and 20061032 group by state;

drop table state200611data;
CREATE EXTERNAL TABLE IF NOT EXISTS state200611data (state STRING,yearCount INT) ROW FORMAT DELIMITED FIELDS TERMINATED BY '\t' STORED AS TEXTFILE;
insert overwrite table state200611data select state, count(state) from tabular_data where dategrant between 20061100 and 20061132 group by state;

drop table state200612data;
CREATE EXTERNAL TABLE IF NOT EXISTS state200612data (state STRING,yearCount INT) ROW FORMAT DELIMITED FIELDS TERMINATED BY '\t' STORED AS TEXTFILE;
insert overwrite table state200612data select state, count(state) from tabular_data where dategrant between 20061200 and 20061232 group by state;

drop table state200701data;
CREATE EXTERNAL TABLE IF NOT EXISTS state200701data (state STRING,yearCount INT) ROW FORMAT DELIMITED FIELDS TERMINATED BY '\t' STORED AS TEXTFILE;
insert overwrite table state200701data select state, count(state) from tabular_data where dategrant between 20070100 and 20070132 group by state;

drop table state200702data;
CREATE EXTERNAL TABLE IF NOT EXISTS state200702data (state STRING,yearCount INT) ROW FORMAT DELIMITED FIELDS TERMINATED BY '\t' STORED AS TEXTFILE;
insert overwrite table state200702data select state, count(state) from tabular_data where dategrant between 20070200 and 20070232 group by state;

drop table state200703data;
CREATE EXTERNAL TABLE IF NOT EXISTS state200703data (state STRING,yearCount INT) ROW FORMAT DELIMITED FIELDS TERMINATED BY '\t' STORED AS TEXTFILE;
insert overwrite table state200703data select state, count(state) from tabular_data where dategrant between 20070300 and 20070332 group by state;

drop table state200704data;
CREATE EXTERNAL TABLE IF NOT EXISTS state200704data (state STRING,yearCount INT) ROW FORMAT DELIMITED FIELDS TERMINATED BY '\t' STORED AS TEXTFILE;
insert overwrite table state200704data select state, count(state) from tabular_data where dategrant between 20070400 and 20070432 group by state;

drop table state200705data;
CREATE EXTERNAL TABLE IF NOT EXISTS state200705data (state STRING,yearCount INT) ROW FORMAT DELIMITED FIELDS TERMINATED BY '\t' STORED AS TEXTFILE;
insert overwrite table state200705data select state, count(state) from tabular_data where dategrant between 20070500 and 20070532 group by state;

drop table state200706data;
CREATE EXTERNAL TABLE IF NOT EXISTS state200706data (state STRING,yearCount INT) ROW FORMAT DELIMITED FIELDS TERMINATED BY '\t' STORED AS TEXTFILE;
insert overwrite table state200706data select state, count(state) from tabular_data where dategrant between 20070600 and 20070632 group by state;

drop table state200707data;
CREATE EXTERNAL TABLE IF NOT EXISTS state200707data (state STRING,yearCount INT) ROW FORMAT DELIMITED FIELDS TERMINATED BY '\t' STORED AS TEXTFILE;
insert overwrite table state200707data select state, count(state) from tabular_data where dategrant between 20070700 and 20070732 group by state;

drop table state200708data;
CREATE EXTERNAL TABLE IF NOT EXISTS state200708data (state STRING,yearCount INT) ROW FORMAT DELIMITED FIELDS TERMINATED BY '\t' STORED AS TEXTFILE;
insert overwrite table state200708data select state, count(state) from tabular_data where dategrant between 20070800 and 20070832 group by state;

drop table state200709data;
CREATE EXTERNAL TABLE IF NOT EXISTS state200709data (state STRING,yearCount INT) ROW FORMAT DELIMITED FIELDS TERMINATED BY '\t' STORED AS TEXTFILE;
insert overwrite table state200709data select state, count(state) from tabular_data where dategrant between 20070900 and 20070932 group by state;

drop table state200710data;
CREATE EXTERNAL TABLE IF NOT EXISTS state200710data (state STRING,yearCount INT) ROW FORMAT DELIMITED FIELDS TERMINATED BY '\t' STORED AS TEXTFILE;
insert overwrite table state200710data select state, count(state) from tabular_data where dategrant between 20071000 and 20071032 group by state;

drop table state200711data;
CREATE EXTERNAL TABLE IF NOT EXISTS state200711data (state STRING,yearCount INT) ROW FORMAT DELIMITED FIELDS TERMINATED BY '\t' STORED AS TEXTFILE;
insert overwrite table state200711data select state, count(state) from tabular_data where dategrant between 20071100 and 20071132 group by state;

drop table state200712data;
CREATE EXTERNAL TABLE IF NOT EXISTS state200712data (state STRING,yearCount INT) ROW FORMAT DELIMITED FIELDS TERMINATED BY '\t' STORED AS TEXTFILE;
insert overwrite table state200712data select state, count(state) from tabular_data where dategrant between 20071200 and 20071232 group by state;

drop table state200801data;
CREATE EXTERNAL TABLE IF NOT EXISTS state200801data (state STRING,yearCount INT) ROW FORMAT DELIMITED FIELDS TERMINATED BY '\t' STORED AS TEXTFILE;
insert overwrite table state200801data select state, count(state) from tabular_data where dategrant between 20080100 and 20080132 group by state;

drop table state200802data;
CREATE EXTERNAL TABLE IF NOT EXISTS state200802data (state STRING,yearCount INT) ROW FORMAT DELIMITED FIELDS TERMINATED BY '\t' STORED AS TEXTFILE;
insert overwrite table state200802data select state, count(state) from tabular_data where dategrant between 20080200 and 20080232 group by state;

drop table state200803data;
CREATE EXTERNAL TABLE IF NOT EXISTS state200803data (state STRING,yearCount INT) ROW FORMAT DELIMITED FIELDS TERMINATED BY '\t' STORED AS TEXTFILE;
insert overwrite table state200803data select state, count(state) from tabular_data where dategrant between 20080300 and 20080332 group by state;

drop table state200804data;
CREATE EXTERNAL TABLE IF NOT EXISTS state200804data (state STRING,yearCount INT) ROW FORMAT DELIMITED FIELDS TERMINATED BY '\t' STORED AS TEXTFILE;
insert overwrite table state200804data select state, count(state) from tabular_data where dategrant between 20080400 and 20080432 group by state;

drop table state200805data;
CREATE EXTERNAL TABLE IF NOT EXISTS state200805data (state STRING,yearCount INT) ROW FORMAT DELIMITED FIELDS TERMINATED BY '\t' STORED AS TEXTFILE;
insert overwrite table state200805data select state, count(state) from tabular_data where dategrant between 20080500 and 20080532 group by state;

drop table state200806data;
CREATE EXTERNAL TABLE IF NOT EXISTS state200806data (state STRING,yearCount INT) ROW FORMAT DELIMITED FIELDS TERMINATED BY '\t' STORED AS TEXTFILE;
insert overwrite table state200806data select state, count(state) from tabular_data where dategrant between 20080600 and 20080632 group by state;

drop table state200807data;
CREATE EXTERNAL TABLE IF NOT EXISTS state200807data (state STRING,yearCount INT) ROW FORMAT DELIMITED FIELDS TERMINATED BY '\t' STORED AS TEXTFILE;
insert overwrite table state200807data select state, count(state) from tabular_data where dategrant between 20080700 and 20080732 group by state;

drop table state200808data;
CREATE EXTERNAL TABLE IF NOT EXISTS state200808data (state STRING,yearCount INT) ROW FORMAT DELIMITED FIELDS TERMINATED BY '\t' STORED AS TEXTFILE;
insert overwrite table state200808data select state, count(state) from tabular_data where dategrant between 20080800 and 20080832 group by state;

drop table state200809data;
CREATE EXTERNAL TABLE IF NOT EXISTS state200809data (state STRING,yearCount INT) ROW FORMAT DELIMITED FIELDS TERMINATED BY '\t' STORED AS TEXTFILE;
insert overwrite table state200809data select state, count(state) from tabular_data where dategrant between 20080900 and 20080932 group by state;

drop table state200810data;
CREATE EXTERNAL TABLE IF NOT EXISTS state200810data (state STRING,yearCount INT) ROW FORMAT DELIMITED FIELDS TERMINATED BY '\t' STORED AS TEXTFILE;
insert overwrite table state200810data select state, count(state) from tabular_data where dategrant between 20081000 and 20081032 group by state;

drop table state200811data;
CREATE EXTERNAL TABLE IF NOT EXISTS state200811data (state STRING,yearCount INT) ROW FORMAT DELIMITED FIELDS TERMINATED BY '\t' STORED AS TEXTFILE;
insert overwrite table state200811data select state, count(state) from tabular_data where dategrant between 20081100 and 20081132 group by state;

drop table state200812data;
CREATE EXTERNAL TABLE IF NOT EXISTS state200812data (state STRING,yearCount INT) ROW FORMAT DELIMITED FIELDS TERMINATED BY '\t' STORED AS TEXTFILE;
insert overwrite table state200812data select state, count(state) from tabular_data where dategrant between 20081200 and 20081232 group by state;

drop table state200901data;
CREATE EXTERNAL TABLE IF NOT EXISTS state200901data (state STRING,yearCount INT) ROW FORMAT DELIMITED FIELDS TERMINATED BY '\t' STORED AS TEXTFILE;
insert overwrite table state200901data select state, count(state) from tabular_data where dategrant between 20090100 and 20090132 group by state;

drop table state200902data;
CREATE EXTERNAL TABLE IF NOT EXISTS state200902data (state STRING,yearCount INT) ROW FORMAT DELIMITED FIELDS TERMINATED BY '\t' STORED AS TEXTFILE;
insert overwrite table state200902data select state, count(state) from tabular_data where dategrant between 20090200 and 20090232 group by state;

drop table state200903data;
CREATE EXTERNAL TABLE IF NOT EXISTS state200903data (state STRING,yearCount INT) ROW FORMAT DELIMITED FIELDS TERMINATED BY '\t' STORED AS TEXTFILE;
insert overwrite table state200903data select state, count(state) from tabular_data where dategrant between 20090300 and 20090332 group by state;

drop table state200904data;
CREATE EXTERNAL TABLE IF NOT EXISTS state200904data (state STRING,yearCount INT) ROW FORMAT DELIMITED FIELDS TERMINATED BY '\t' STORED AS TEXTFILE;
insert overwrite table state200904data select state, count(state) from tabular_data where dategrant between 20090400 and 20090432 group by state;

drop table state200905data;
CREATE EXTERNAL TABLE IF NOT EXISTS state200905data (state STRING,yearCount INT) ROW FORMAT DELIMITED FIELDS TERMINATED BY '\t' STORED AS TEXTFILE;
insert overwrite table state200905data select state, count(state) from tabular_data where dategrant between 20090500 and 20090532 group by state;

drop table state200906data;
CREATE EXTERNAL TABLE IF NOT EXISTS state200906data (state STRING,yearCount INT) ROW FORMAT DELIMITED FIELDS TERMINATED BY '\t' STORED AS TEXTFILE;
insert overwrite table state200906data select state, count(state) from tabular_data where dategrant between 20090600 and 20090632 group by state;

drop table state200907data;
CREATE EXTERNAL TABLE IF NOT EXISTS state200907data (state STRING,yearCount INT) ROW FORMAT DELIMITED FIELDS TERMINATED BY '\t' STORED AS TEXTFILE;
insert overwrite table state200907data select state, count(state) from tabular_data where dategrant between 20090700 and 20090732 group by state;

drop table state200908data;
CREATE EXTERNAL TABLE IF NOT EXISTS state200908data (state STRING,yearCount INT) ROW FORMAT DELIMITED FIELDS TERMINATED BY '\t' STORED AS TEXTFILE;
insert overwrite table state200908data select state, count(state) from tabular_data where dategrant between 20090800 and 20090832 group by state;

drop table state200909data;
CREATE EXTERNAL TABLE IF NOT EXISTS state200909data (state STRING,yearCount INT) ROW FORMAT DELIMITED FIELDS TERMINATED BY '\t' STORED AS TEXTFILE;
insert overwrite table state200909data select state, count(state) from tabular_data where dategrant between 20090900 and 20090932 group by state;

drop table state200910data;
CREATE EXTERNAL TABLE IF NOT EXISTS state200910data (state STRING,yearCount INT) ROW FORMAT DELIMITED FIELDS TERMINATED BY '\t' STORED AS TEXTFILE;
insert overwrite table state200910data select state, count(state) from tabular_data where dategrant between 20091000 and 20091032 group by state;

drop table state200911data;
CREATE EXTERNAL TABLE IF NOT EXISTS state200911data (state STRING,yearCount INT) ROW FORMAT DELIMITED FIELDS TERMINATED BY '\t' STORED AS TEXTFILE;
insert overwrite table state200911data select state, count(state) from tabular_data where dategrant between 20091100 and 20091132 group by state;

drop table state200912data;
CREATE EXTERNAL TABLE IF NOT EXISTS state200912data (state STRING,yearCount INT) ROW FORMAT DELIMITED FIELDS TERMINATED BY '\t' STORED AS TEXTFILE;
insert overwrite table state200912data select state, count(state) from tabular_data where dategrant between 20091200 and 20091232 group by state;

drop table state201001data;
CREATE EXTERNAL TABLE IF NOT EXISTS state201001data (state STRING,yearCount INT) ROW FORMAT DELIMITED FIELDS TERMINATED BY '\t' STORED AS TEXTFILE;
insert overwrite table state201001data select state, count(state) from tabular_data where dategrant between 20100100 and 20100132 group by state;

drop table state201002data;
CREATE EXTERNAL TABLE IF NOT EXISTS state201002data (state STRING,yearCount INT) ROW FORMAT DELIMITED FIELDS TERMINATED BY '\t' STORED AS TEXTFILE;
insert overwrite table state201002data select state, count(state) from tabular_data where dategrant between 20100200 and 20100232 group by state;

drop table state201003data;
CREATE EXTERNAL TABLE IF NOT EXISTS state201003data (state STRING,yearCount INT) ROW FORMAT DELIMITED FIELDS TERMINATED BY '\t' STORED AS TEXTFILE;
insert overwrite table state201003data select state, count(state) from tabular_data where dategrant between 20100300 and 20100332 group by state;

drop table state201004data;
CREATE EXTERNAL TABLE IF NOT EXISTS state201004data (state STRING,yearCount INT) ROW FORMAT DELIMITED FIELDS TERMINATED BY '\t' STORED AS TEXTFILE;
insert overwrite table state201004data select state, count(state) from tabular_data where dategrant between 20100400 and 20100432 group by state;

drop table state201005data;
CREATE EXTERNAL TABLE IF NOT EXISTS state201005data (state STRING,yearCount INT) ROW FORMAT DELIMITED FIELDS TERMINATED BY '\t' STORED AS TEXTFILE;
insert overwrite table state201005data select state, count(state) from tabular_data where dategrant between 20100500 and 20100532 group by state;

drop table state201006data;
CREATE EXTERNAL TABLE IF NOT EXISTS state201006data (state STRING,yearCount INT) ROW FORMAT DELIMITED FIELDS TERMINATED BY '\t' STORED AS TEXTFILE;
insert overwrite table state201006data select state, count(state) from tabular_data where dategrant between 20100600 and 20100632 group by state;

drop table state201007data;
CREATE EXTERNAL TABLE IF NOT EXISTS state201007data (state STRING,yearCount INT) ROW FORMAT DELIMITED FIELDS TERMINATED BY '\t' STORED AS TEXTFILE;
insert overwrite table state201007data select state, count(state) from tabular_data where dategrant between 20100700 and 20100732 group by state;

drop table state201008data;
CREATE EXTERNAL TABLE IF NOT EXISTS state201008data (state STRING,yearCount INT) ROW FORMAT DELIMITED FIELDS TERMINATED BY '\t' STORED AS TEXTFILE;
insert overwrite table state201008data select state, count(state) from tabular_data where dategrant between 20100800 and 20100832 group by state;

drop table state201009data;
CREATE EXTERNAL TABLE IF NOT EXISTS state201009data (state STRING,yearCount INT) ROW FORMAT DELIMITED FIELDS TERMINATED BY '\t' STORED AS TEXTFILE;
insert overwrite table state201009data select state, count(state) from tabular_data where dategrant between 20100900 and 20100932 group by state;

drop table state201010data;
CREATE EXTERNAL TABLE IF NOT EXISTS state201010data (state STRING,yearCount INT) ROW FORMAT DELIMITED FIELDS TERMINATED BY '\t' STORED AS TEXTFILE;
insert overwrite table state201010data select state, count(state) from tabular_data where dategrant between 20101000 and 20101032 group by state;

drop table state201011data;
CREATE EXTERNAL TABLE IF NOT EXISTS state201011data (state STRING,yearCount INT) ROW FORMAT DELIMITED FIELDS TERMINATED BY '\t' STORED AS TEXTFILE;
insert overwrite table state201011data select state, count(state) from tabular_data where dategrant between 20101100 and 20101132 group by state;

drop table state201012data;
CREATE EXTERNAL TABLE IF NOT EXISTS state201012data (state STRING,yearCount INT) ROW FORMAT DELIMITED FIELDS TERMINATED BY '\t' STORED AS TEXTFILE;
insert overwrite table state201012data select state, count(state) from tabular_data where dategrant between 20101200 and 20101232 group by state;

drop table state201101data;
CREATE EXTERNAL TABLE IF NOT EXISTS state201101data (state STRING,yearCount INT) ROW FORMAT DELIMITED FIELDS TERMINATED BY '\t' STORED AS TEXTFILE;
insert overwrite table state201101data select state, count(state) from tabular_data where dategrant between 20110100 and 20110132 group by state;

drop table state201102data;
CREATE EXTERNAL TABLE IF NOT EXISTS state201102data (state STRING,yearCount INT) ROW FORMAT DELIMITED FIELDS TERMINATED BY '\t' STORED AS TEXTFILE;
insert overwrite table state201102data select state, count(state) from tabular_data where dategrant between 20110200 and 20110232 group by state;

drop table state201103data;
CREATE EXTERNAL TABLE IF NOT EXISTS state201103data (state STRING,yearCount INT) ROW FORMAT DELIMITED FIELDS TERMINATED BY '\t' STORED AS TEXTFILE;
insert overwrite table state201103data select state, count(state) from tabular_data where dategrant between 20110300 and 20110332 group by state;

drop table state201104data;
CREATE EXTERNAL TABLE IF NOT EXISTS state201104data (state STRING,yearCount INT) ROW FORMAT DELIMITED FIELDS TERMINATED BY '\t' STORED AS TEXTFILE;
insert overwrite table state201104data select state, count(state) from tabular_data where dategrant between 20110400 and 20110432 group by state;

drop table state201105data;
CREATE EXTERNAL TABLE IF NOT EXISTS state201105data (state STRING,yearCount INT) ROW FORMAT DELIMITED FIELDS TERMINATED BY '\t' STORED AS TEXTFILE;
insert overwrite table state201105data select state, count(state) from tabular_data where dategrant between 20110500 and 20110532 group by state;

drop table state201106data;
CREATE EXTERNAL TABLE IF NOT EXISTS state201106data (state STRING,yearCount INT) ROW FORMAT DELIMITED FIELDS TERMINATED BY '\t' STORED AS TEXTFILE;
insert overwrite table state201106data select state, count(state) from tabular_data where dategrant between 20110600 and 20110632 group by state;

drop table state201107data;
CREATE EXTERNAL TABLE IF NOT EXISTS state201107data (state STRING,yearCount INT) ROW FORMAT DELIMITED FIELDS TERMINATED BY '\t' STORED AS TEXTFILE;
insert overwrite table state201107data select state, count(state) from tabular_data where dategrant between 20110700 and 20110732 group by state;

drop table state201108data;
CREATE EXTERNAL TABLE IF NOT EXISTS state201108data (state STRING,yearCount INT) ROW FORMAT DELIMITED FIELDS TERMINATED BY '\t' STORED AS TEXTFILE;
insert overwrite table state201108data select state, count(state) from tabular_data where dategrant between 20110800 and 20110832 group by state;

drop table state201109data;
CREATE EXTERNAL TABLE IF NOT EXISTS state201109data (state STRING,yearCount INT) ROW FORMAT DELIMITED FIELDS TERMINATED BY '\t' STORED AS TEXTFILE;
insert overwrite table state201109data select state, count(state) from tabular_data where dategrant between 20110900 and 20110932 group by state;

drop table state201110data;
CREATE EXTERNAL TABLE IF NOT EXISTS state201110data (state STRING,yearCount INT) ROW FORMAT DELIMITED FIELDS TERMINATED BY '\t' STORED AS TEXTFILE;
insert overwrite table state201110data select state, count(state) from tabular_data where dategrant between 20111000 and 20111032 group by state;

drop table state201111data;
CREATE EXTERNAL TABLE IF NOT EXISTS state201111data (state STRING,yearCount INT) ROW FORMAT DELIMITED FIELDS TERMINATED BY '\t' STORED AS TEXTFILE;
insert overwrite table state201111data select state, count(state) from tabular_data where dategrant between 20111100 and 20111132 group by state;

drop table state201112data;
CREATE EXTERNAL TABLE IF NOT EXISTS state201112data (state STRING,yearCount INT) ROW FORMAT DELIMITED FIELDS TERMINATED BY '\t' STORED AS TEXTFILE;
insert overwrite table state201112data select state, count(state) from tabular_data where dategrant between 20111200 and 20111232 group by state;

drop table state201201data;
CREATE EXTERNAL TABLE IF NOT EXISTS state201201data (state STRING,yearCount INT) ROW FORMAT DELIMITED FIELDS TERMINATED BY '\t' STORED AS TEXTFILE;
insert overwrite table state201201data select state, count(state) from tabular_data where dategrant between 20120100 and 20120132 group by state;

drop table state201202data;
CREATE EXTERNAL TABLE IF NOT EXISTS state201202data (state STRING,yearCount INT) ROW FORMAT DELIMITED FIELDS TERMINATED BY '\t' STORED AS TEXTFILE;
insert overwrite table state201202data select state, count(state) from tabular_data where dategrant between 20120200 and 20120232 group by state;

drop table state201203data;
CREATE EXTERNAL TABLE IF NOT EXISTS state201203data (state STRING,yearCount INT) ROW FORMAT DELIMITED FIELDS TERMINATED BY '\t' STORED AS TEXTFILE;
insert overwrite table state201203data select state, count(state) from tabular_data where dategrant between 20120300 and 20120332 group by state;

drop table state201204data;
CREATE EXTERNAL TABLE IF NOT EXISTS state201204data (state STRING,yearCount INT) ROW FORMAT DELIMITED FIELDS TERMINATED BY '\t' STORED AS TEXTFILE;
insert overwrite table state201204data select state, count(state) from tabular_data where dategrant between 20120400 and 20120432 group by state;

drop table state201205data;
CREATE EXTERNAL TABLE IF NOT EXISTS state201205data (state STRING,yearCount INT) ROW FORMAT DELIMITED FIELDS TERMINATED BY '\t' STORED AS TEXTFILE;
insert overwrite table state201205data select state, count(state) from tabular_data where dategrant between 20120500 and 20120532 group by state;

drop table state201206data;
CREATE EXTERNAL TABLE IF NOT EXISTS state201206data (state STRING,yearCount INT) ROW FORMAT DELIMITED FIELDS TERMINATED BY '\t' STORED AS TEXTFILE;
insert overwrite table state201206data select state, count(state) from tabular_data where dategrant between 20120600 and 20120632 group by state;

drop table state201207data;
CREATE EXTERNAL TABLE IF NOT EXISTS state201207data (state STRING,yearCount INT) ROW FORMAT DELIMITED FIELDS TERMINATED BY '\t' STORED AS TEXTFILE;
insert overwrite table state201207data select state, count(state) from tabular_data where dategrant between 20120700 and 20120732 group by state;

drop table state201208data;
CREATE EXTERNAL TABLE IF NOT EXISTS state201208data (state STRING,yearCount INT) ROW FORMAT DELIMITED FIELDS TERMINATED BY '\t' STORED AS TEXTFILE;
insert overwrite table state201208data select state, count(state) from tabular_data where dategrant between 20120800 and 20120832 group by state;

drop table state201209data;
CREATE EXTERNAL TABLE IF NOT EXISTS state201209data (state STRING,yearCount INT) ROW FORMAT DELIMITED FIELDS TERMINATED BY '\t' STORED AS TEXTFILE;
insert overwrite table state201209data select state, count(state) from tabular_data where dategrant between 20120900 and 20120932 group by state;

drop table state201210data;
CREATE EXTERNAL TABLE IF NOT EXISTS state201210data (state STRING,yearCount INT) ROW FORMAT DELIMITED FIELDS TERMINATED BY '\t' STORED AS TEXTFILE;
insert overwrite table state201210data select state, count(state) from tabular_data where dategrant between 20121000 and 20121032 group by state;

drop table state201211data;
CREATE EXTERNAL TABLE IF NOT EXISTS state201211data (state STRING,yearCount INT) ROW FORMAT DELIMITED FIELDS TERMINATED BY '\t' STORED AS TEXTFILE;
insert overwrite table state201211data select state, count(state) from tabular_data where dategrant between 20121100 and 20121132 group by state;

drop table state201212data;
CREATE EXTERNAL TABLE IF NOT EXISTS state201212data (state STRING,yearCount INT) ROW FORMAT DELIMITED FIELDS TERMINATED BY '\t' STORED AS TEXTFILE;
insert overwrite table state201212data select state, count(state) from tabular_data where dategrant between 20121200 and 20121232 group by state;

drop table state201301data;
CREATE EXTERNAL TABLE IF NOT EXISTS state201301data (state STRING,yearCount INT) ROW FORMAT DELIMITED FIELDS TERMINATED BY '\t' STORED AS TEXTFILE;
insert overwrite table state201301data select state, count(state) from tabular_data where dategrant between 20130100 and 20130132 group by state;

drop table state201302data;
CREATE EXTERNAL TABLE IF NOT EXISTS state201302data (state STRING,yearCount INT) ROW FORMAT DELIMITED FIELDS TERMINATED BY '\t' STORED AS TEXTFILE;
insert overwrite table state201302data select state, count(state) from tabular_data where dategrant between 20130200 and 20130232 group by state;

drop table state201303data;
CREATE EXTERNAL TABLE IF NOT EXISTS state201303data (state STRING,yearCount INT) ROW FORMAT DELIMITED FIELDS TERMINATED BY '\t' STORED AS TEXTFILE;
insert overwrite table state201303data select state, count(state) from tabular_data where dategrant between 20130300 and 20130332 group by state;

drop table state201304data;
CREATE EXTERNAL TABLE IF NOT EXISTS state201304data (state STRING,yearCount INT) ROW FORMAT DELIMITED FIELDS TERMINATED BY '\t' STORED AS TEXTFILE;
insert overwrite table state201304data select state, count(state) from tabular_data where dategrant between 20130400 and 20130432 group by state;

drop table state201305data;
CREATE EXTERNAL TABLE IF NOT EXISTS state201305data (state STRING,yearCount INT) ROW FORMAT DELIMITED FIELDS TERMINATED BY '\t' STORED AS TEXTFILE;
insert overwrite table state201305data select state, count(state) from tabular_data where dategrant between 20130500 and 20130532 group by state;

drop table state201306data;
CREATE EXTERNAL TABLE IF NOT EXISTS state201306data (state STRING,yearCount INT) ROW FORMAT DELIMITED FIELDS TERMINATED BY '\t' STORED AS TEXTFILE;
insert overwrite table state201306data select state, count(state) from tabular_data where dategrant between 20130600 and 20130632 group by state;

drop table state201307data;
CREATE EXTERNAL TABLE IF NOT EXISTS state201307data (state STRING,yearCount INT) ROW FORMAT DELIMITED FIELDS TERMINATED BY '\t' STORED AS TEXTFILE;
insert overwrite table state201307data select state, count(state) from tabular_data where dategrant between 20130700 and 20130732 group by state;

drop table state201308data;
CREATE EXTERNAL TABLE IF NOT EXISTS state201308data (state STRING,yearCount INT) ROW FORMAT DELIMITED FIELDS TERMINATED BY '\t' STORED AS TEXTFILE;
insert overwrite table state201308data select state, count(state) from tabular_data where dategrant between 20130800 and 20130832 group by state;

drop table state201309data;
CREATE EXTERNAL TABLE IF NOT EXISTS state201309data (state STRING,yearCount INT) ROW FORMAT DELIMITED FIELDS TERMINATED BY '\t' STORED AS TEXTFILE;
insert overwrite table state201309data select state, count(state) from tabular_data where dategrant between 20130900 and 20130932 group by state;

drop table state201310data;
CREATE EXTERNAL TABLE IF NOT EXISTS state201310data (state STRING,yearCount INT) ROW FORMAT DELIMITED FIELDS TERMINATED BY '\t' STORED AS TEXTFILE;
insert overwrite table state201310data select state, count(state) from tabular_data where dategrant between 20131000 and 20131032 group by state;

drop table state201311data;
CREATE EXTERNAL TABLE IF NOT EXISTS state201311data (state STRING,yearCount INT) ROW FORMAT DELIMITED FIELDS TERMINATED BY '\t' STORED AS TEXTFILE;
insert overwrite table state201311data select state, count(state) from tabular_data where dategrant between 20131100 and 20131132 group by state;

drop table state201312data;
CREATE EXTERNAL TABLE IF NOT EXISTS state201312data (state STRING,yearCount INT) ROW FORMAT DELIMITED FIELDS TERMINATED BY '\t' STORED AS TEXTFILE;
insert overwrite table state201312data select state, count(state) from tabular_data where dategrant between 20131200 and 20131232 group by state;

drop table state201401data;
CREATE EXTERNAL TABLE IF NOT EXISTS state201401data (state STRING,yearCount INT) ROW FORMAT DELIMITED FIELDS TERMINATED BY '\t' STORED AS TEXTFILE;
insert overwrite table state201401data select state, count(state) from tabular_data where dategrant between 20140100 and 20140132 group by state;

drop table state201402data;
CREATE EXTERNAL TABLE IF NOT EXISTS state201402data (state STRING,yearCount INT) ROW FORMAT DELIMITED FIELDS TERMINATED BY '\t' STORED AS TEXTFILE;
insert overwrite table state201402data select state, count(state) from tabular_data where dategrant between 20140200 and 20140232 group by state;

drop table state201403data;
CREATE EXTERNAL TABLE IF NOT EXISTS state201403data (state STRING,yearCount INT) ROW FORMAT DELIMITED FIELDS TERMINATED BY '\t' STORED AS TEXTFILE;
insert overwrite table state201403data select state, count(state) from tabular_data where dategrant between 20140300 and 20140332 group by state;

drop table state201404data;
CREATE EXTERNAL TABLE IF NOT EXISTS state201404data (state STRING,yearCount INT) ROW FORMAT DELIMITED FIELDS TERMINATED BY '\t' STORED AS TEXTFILE;
insert overwrite table state201404data select state, count(state) from tabular_data where dategrant between 20140400 and 20140432 group by state;

drop table state201405data;
CREATE EXTERNAL TABLE IF NOT EXISTS state201405data (state STRING,yearCount INT) ROW FORMAT DELIMITED FIELDS TERMINATED BY '\t' STORED AS TEXTFILE;
insert overwrite table state201405data select state, count(state) from tabular_data where dategrant between 20140500 and 20140532 group by state;

drop table state201406data;
CREATE EXTERNAL TABLE IF NOT EXISTS state201406data (state STRING,yearCount INT) ROW FORMAT DELIMITED FIELDS TERMINATED BY '\t' STORED AS TEXTFILE;
insert overwrite table state201406data select state, count(state) from tabular_data where dategrant between 20140600 and 20140632 group by state;

drop table state201407data;
CREATE EXTERNAL TABLE IF NOT EXISTS state201407data (state STRING,yearCount INT) ROW FORMAT DELIMITED FIELDS TERMINATED BY '\t' STORED AS TEXTFILE;
insert overwrite table state201407data select state, count(state) from tabular_data where dategrant between 20140700 and 20140732 group by state;

drop table state201408data;
CREATE EXTERNAL TABLE IF NOT EXISTS state201408data (state STRING,yearCount INT) ROW FORMAT DELIMITED FIELDS TERMINATED BY '\t' STORED AS TEXTFILE;
insert overwrite table state201408data select state, count(state) from tabular_data where dategrant between 20140800 and 20140832 group by state;

drop table state201409data;
CREATE EXTERNAL TABLE IF NOT EXISTS state201409data (state STRING,yearCount INT) ROW FORMAT DELIMITED FIELDS TERMINATED BY '\t' STORED AS TEXTFILE;
insert overwrite table state201409data select state, count(state) from tabular_data where dategrant between 20140900 and 20140932 group by state;

drop table state201410data;
CREATE EXTERNAL TABLE IF NOT EXISTS state201410data (state STRING,yearCount INT) ROW FORMAT DELIMITED FIELDS TERMINATED BY '\t' STORED AS TEXTFILE;
insert overwrite table state201410data select state, count(state) from tabular_data where dategrant between 20141000 and 20141032 group by state;

drop table state201411data;
CREATE EXTERNAL TABLE IF NOT EXISTS state201411data (state STRING,yearCount INT) ROW FORMAT DELIMITED FIELDS TERMINATED BY '\t' STORED AS TEXTFILE;
insert overwrite table state201411data select state, count(state) from tabular_data where dategrant between 20141100 and 20141132 group by state;

drop table state201412data;
CREATE EXTERNAL TABLE IF NOT EXISTS state201412data (state STRING,yearCount INT) ROW FORMAT DELIMITED FIELDS TERMINATED BY '\t' STORED AS TEXTFILE;
insert overwrite table state201412data select state, count(state) from tabular_data where dategrant between 20141200 and 20141232 group by state;

SELECT state200500data.state, state200501data.yearCount, state200502data.yearCount, state200503data.yearCount, state200504data.yearCount, state200505data.yearCount, state200506data.yearCount, state200507data.yearCount, state200508data.yearCount, state200509data.yearCount, state200510data.yearCount, state200511data.yearCount, state200512data.yearCount, state200601data.yearCount, state200602data.yearCount, state200603data.yearCount, state200604data.yearCount, state200605data.yearCount, state200606data.yearCount, state200607data.yearCount, state200608data.yearCount, state200609data.yearCount, state200610data.yearCount, state200611data.yearCount, state200612data.yearCount, state200701data.yearCount, state200702data.yearCount, state200703data.yearCount, state200704data.yearCount, state200705data.yearCount, state200706data.yearCount, state200707data.yearCount, state200708data.yearCount, state200709data.yearCount, state200710data.yearCount, state200711data.yearCount, state200712data.yearCount, state200801data.yearCount, state200802data.yearCount, state200803data.yearCount, state200804data.yearCount, state200805data.yearCount, state200806data.yearCount, state200807data.yearCount, state200808data.yearCount, state200809data.yearCount, state200810data.yearCount, state200811data.yearCount, state200812data.yearCount, state200901data.yearCount, state200902data.yearCount, state200903data.yearCount, state200904data.yearCount, state200905data.yearCount, state200906data.yearCount, state200907data.yearCount, state200908data.yearCount, state200909data.yearCount, state200910data.yearCount, state200911data.yearCount, state200912data.yearCount, state201001data.yearCount, state201002data.yearCount, state201003data.yearCount, state201004data.yearCount, state201005data.yearCount, state201006data.yearCount, state201007data.yearCount, state201008data.yearCount, state201009data.yearCount, state201010data.yearCount, state201011data.yearCount, state201012data.yearCount, state201101data.yearCount, state201102data.yearCount, state201103data.yearCount, state201104data.yearCount, state201105data.yearCount, state201106data.yearCount, state201107data.yearCount, state201108data.yearCount, state201109data.yearCount, state201110data.yearCount, state201111data.yearCount, state201112data.yearCount, state201201data.yearCount, state201202data.yearCount, state201203data.yearCount, state201204data.yearCount, state201205data.yearCount, state201206data.yearCount, state201207data.yearCount, state201208data.yearCount, state201209data.yearCount, state201210data.yearCount, state201211data.yearCount, state201212data.yearCount, state201301data.yearCount, state201302data.yearCount, state201303data.yearCount, state201304data.yearCount, state201305data.yearCount, state201306data.yearCount, state201307data.yearCount, state201308data.yearCount, state201309data.yearCount, state201310data.yearCount, state201311data.yearCount, state201312data.yearCount, state201401data.yearCount, state201402data.yearCount, state201403data.yearCount, state201404data.yearCount, state201405data.yearCount, state201406data.yearCount, state201407data.yearCount, state201408data.yearCount, state201409data.yearCount, state201410data.yearCount, state201411data.yearCount, state201412data.yearCount
FROM state200500data FULL OUTER JOIN state200501data ON (state200501data.state = state200500data.state) FULL OUTER JOIN state200502data ON (state200502data.state = state200500data.state) FULL OUTER JOIN state200503data ON (state200503data.state = state200500data.state) FULL OUTER JOIN state200504data ON (state200504data.state = state200500data.state) FULL OUTER JOIN state200505data ON (state200505data.state = state200500data.state) FULL OUTER JOIN state200506data ON (state200506data.state = state200500data.state) FULL OUTER JOIN state200507data ON (state200507data.state = state200500data.state) FULL OUTER JOIN state200508data ON (state200508data.state = state200500data.state) FULL OUTER JOIN state200509data ON (state200509data.state = state200500data.state) FULL OUTER JOIN state200510data ON (state200510data.state = state200500data.state) FULL OUTER JOIN state200511data ON (state200511data.state = state200500data.state) FULL OUTER JOIN state200512data ON (state200512data.state = state200500data.state) FULL OUTER JOIN state200601data ON (state200601data.state = state200500data.state) FULL OUTER JOIN state200602data ON (state200602data.state = state200500data.state) FULL OUTER JOIN state200603data ON (state200603data.state = state200500data.state) FULL OUTER JOIN state200604data ON (state200604data.state = state200500data.state) FULL OUTER JOIN state200605data ON (state200605data.state = state200500data.state) FULL OUTER JOIN state200606data ON (state200606data.state = state200500data.state) FULL OUTER JOIN state200607data ON (state200607data.state = state200500data.state) FULL OUTER JOIN state200608data ON (state200608data.state = state200500data.state) FULL OUTER JOIN state200609data ON (state200609data.state = state200500data.state) FULL OUTER JOIN state200610data ON (state200610data.state = state200500data.state) FULL OUTER JOIN state200611data ON (state200611data.state = state200500data.state) FULL OUTER JOIN state200612data ON (state200612data.state = state200500data.state) FULL OUTER JOIN state200701data ON (state200701data.state = state200500data.state) FULL OUTER JOIN state200702data ON (state200702data.state = state200500data.state) FULL OUTER JOIN state200703data ON (state200703data.state = state200500data.state) FULL OUTER JOIN state200704data ON (state200704data.state = state200500data.state) FULL OUTER JOIN state200705data ON (state200705data.state = state200500data.state) FULL OUTER JOIN state200706data ON (state200706data.state = state200500data.state) FULL OUTER JOIN state200707data ON (state200707data.state = state200500data.state) FULL OUTER JOIN state200708data ON (state200708data.state = state200500data.state) FULL OUTER JOIN state200709data ON (state200709data.state = state200500data.state) FULL OUTER JOIN state200710data ON (state200710data.state = state200500data.state) FULL OUTER JOIN state200711data ON (state200711data.state = state200500data.state) FULL OUTER JOIN state200712data ON (state200712data.state = state200500data.state) FULL OUTER JOIN state200801data ON (state200801data.state = state200500data.state) FULL OUTER JOIN state200802data ON (state200802data.state = state200500data.state) FULL OUTER JOIN state200803data ON (state200803data.state = state200500data.state) FULL OUTER JOIN state200804data ON (state200804data.state = state200500data.state) FULL OUTER JOIN state200805data ON (state200805data.state = state200500data.state) FULL OUTER JOIN state200806data ON (state200806data.state = state200500data.state) FULL OUTER JOIN state200807data ON (state200807data.state = state200500data.state) FULL OUTER JOIN state200808data ON (state200808data.state = state200500data.state) FULL OUTER JOIN state200809data ON (state200809data.state = state200500data.state) FULL OUTER JOIN state200810data ON (state200810data.state = state200500data.state) FULL OUTER JOIN state200811data ON (state200811data.state = state200500data.state) FULL OUTER JOIN state200812data ON (state200812data.state = state200500data.state) FULL OUTER JOIN state200901data ON (state200901data.state = state200500data.state) FULL OUTER JOIN state200902data ON (state200902data.state = state200500data.state) FULL OUTER JOIN state200903data ON (state200903data.state = state200500data.state) FULL OUTER JOIN state200904data ON (state200904data.state = state200500data.state) FULL OUTER JOIN state200905data ON (state200905data.state = state200500data.state) FULL OUTER JOIN state200906data ON (state200906data.state = state200500data.state) FULL OUTER JOIN state200907data ON (state200907data.state = state200500data.state) FULL OUTER JOIN state200908data ON (state200908data.state = state200500data.state) FULL OUTER JOIN state200909data ON (state200909data.state = state200500data.state) FULL OUTER JOIN state200910data ON (state200910data.state = state200500data.state) FULL OUTER JOIN state200911data ON (state200911data.state = state200500data.state) FULL OUTER JOIN state200912data ON (state200912data.state = state200500data.state) FULL OUTER JOIN state201001data ON (state201001data.state = state200500data.state) FULL OUTER JOIN state201002data ON (state201002data.state = state200500data.state) FULL OUTER JOIN state201003data ON (state201003data.state = state200500data.state) FULL OUTER JOIN state201004data ON (state201004data.state = state200500data.state) FULL OUTER JOIN state201005data ON (state201005data.state = state200500data.state) FULL OUTER JOIN state201006data ON (state201006data.state = state200500data.state) FULL OUTER JOIN state201007data ON (state201007data.state = state200500data.state) FULL OUTER JOIN state201008data ON (state201008data.state = state200500data.state) FULL OUTER JOIN state201009data ON (state201009data.state = state200500data.state) FULL OUTER JOIN state201010data ON (state201010data.state = state200500data.state) FULL OUTER JOIN state201011data ON (state201011data.state = state200500data.state) FULL OUTER JOIN state201012data ON (state201012data.state = state200500data.state) FULL OUTER JOIN state201101data ON (state201101data.state = state200500data.state) FULL OUTER JOIN state201102data ON (state201102data.state = state200500data.state) FULL OUTER JOIN state201103data ON (state201103data.state = state200500data.state) FULL OUTER JOIN state201104data ON (state201104data.state = state200500data.state) FULL OUTER JOIN state201105data ON (state201105data.state = state200500data.state) FULL OUTER JOIN state201106data ON (state201106data.state = state200500data.state) FULL OUTER JOIN state201107data ON (state201107data.state = state200500data.state) FULL OUTER JOIN state201108data ON (state201108data.state = state200500data.state) FULL OUTER JOIN state201109data ON (state201109data.state = state200500data.state) FULL OUTER JOIN state201110data ON (state201110data.state = state200500data.state) FULL OUTER JOIN state201111data ON (state201111data.state = state200500data.state) FULL OUTER JOIN state201112data ON (state201112data.state = state200500data.state) FULL OUTER JOIN state201201data ON (state201201data.state = state200500data.state) FULL OUTER JOIN state201202data ON (state201202data.state = state200500data.state) FULL OUTER JOIN state201203data ON (state201203data.state = state200500data.state) FULL OUTER JOIN state201204data ON (state201204data.state = state200500data.state) FULL OUTER JOIN state201205data ON (state201205data.state = state200500data.state) FULL OUTER JOIN state201206data ON (state201206data.state = state200500data.state) FULL OUTER JOIN state201207data ON (state201207data.state = state200500data.state) FULL OUTER JOIN state201208data ON (state201208data.state = state200500data.state) FULL OUTER JOIN state201209data ON (state201209data.state = state200500data.state) FULL OUTER JOIN state201210data ON (state201210data.state = state200500data.state) FULL OUTER JOIN state201211data ON (state201211data.state = state200500data.state) FULL OUTER JOIN state201212data ON (state201212data.state = state200500data.state) FULL OUTER JOIN state201301data ON (state201301data.state = state200500data.state) FULL OUTER JOIN state201302data ON (state201302data.state = state200500data.state) FULL OUTER JOIN state201303data ON (state201303data.state = state200500data.state) FULL OUTER JOIN state201304data ON (state201304data.state = state200500data.state) FULL OUTER JOIN state201305data ON (state201305data.state = state200500data.state) FULL OUTER JOIN state201306data ON (state201306data.state = state200500data.state) FULL OUTER JOIN state201307data ON (state201307data.state = state200500data.state) FULL OUTER JOIN state201308data ON (state201308data.state = state200500data.state) FULL OUTER JOIN state201309data ON (state201309data.state = state200500data.state) FULL OUTER JOIN state201310data ON (state201310data.state = state200500data.state) FULL OUTER JOIN state201311data ON (state201311data.state = state200500data.state) FULL OUTER JOIN state201312data ON (state201312data.state = state200500data.state) FULL OUTER JOIN state201401data ON (state201401data.state = state200500data.state) FULL OUTER JOIN state201402data ON (state201402data.state = state200500data.state) FULL OUTER JOIN state201403data ON (state201403data.state = state200500data.state) FULL OUTER JOIN state201404data ON (state201404data.state = state200500data.state) FULL OUTER JOIN state201405data ON (state201405data.state = state200500data.state) FULL OUTER JOIN state201406data ON (state201406data.state = state200500data.state) FULL OUTER JOIN state201407data ON (state201407data.state = state200500data.state) FULL OUTER JOIN state201408data ON (state201408data.state = state200500data.state) FULL OUTER JOIN state201409data ON (state201409data.state = state200500data.state) FULL OUTER JOIN state201410data ON (state201410data.state = state200500data.state) FULL OUTER JOIN state201411data ON (state201411data.state = state200500data.state) FULL OUTER JOIN state201412data ON (state201412data.state = state200500data.state);
