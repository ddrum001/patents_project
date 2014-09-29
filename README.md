Patently Innovative
======================================

## Finding where innovation lives!
[www.patentlyinnovative.net](http://www.patentlyinnovative.net)

Patently Innovative is a tool to track innovation in different regions 
by collecting, cleaning, and aggregating patent information from the 
United States Patent and Trademark Office (USPTO) using technologies from the
 Hadoop ecosystem.

# What Patently Innovative Does
Patently Innovative allows users to easily check and compare the patent 
production trends of various states.  The user interface, built with
Highmaps, allows the user to click on as many states as desired and
see the trends for patent production.  Patent production can be viewed 
as a raw total or per capita.  

![Patently Innovative Demo](figures/demo.png)

# How Patently Innovative Works
Patently Innovative uses a technology stack consisting of Beautiful Soup web-scraping, 
Bash and Python
 scripts, Hadoop Streaming, JSON Serialization with Hive, HBase, Flask, and Highcharts Java Script.

## Data Ingestion
Patently Innovative works by pulling public data from the United States Patent and Trademark Office (USPTO) 
and statistics from the Census Bureau, placing the files on the name node 
of a Amazon Web Services (AWS) cluster of Elastic Compute Cloud(EC2).  Specifically, a collection of Bash and Python 
scripts use Beautiful Soup to scrape the USPTO website to find the links to 
the relevant zip files.  The patent office releases new data weekly, which are
downloaded and updated with cron jobs.
  
The full fidelity zip files are immediately stored on the Hadoop Distributed File
 System (HDFS) for safe keeping via redundancy.  Some of the data is in simple 
Tab Separated Values (TSV) files, but the most recent patent information is
stored in highly nested XML files.  Semi-structured data like XML allows flexibile 
formatting, but can be tricky to parse on distributed systems.

![Raw XML File](figures/xml-multi.png)
 

![Data Pipeline](figures/pipeline.png) 
