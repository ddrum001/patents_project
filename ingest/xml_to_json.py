#!/usr/bin/env python

import os
from xmlutils.xml2json import xml2json

# echo $(($(\ls -afq 20140909 | wc -l)-2))
# file_name = "%s%d/%d-%.5d" % ( dir, week, week, file_num ) 
#week = 20140909

#dir = "/home/ubuntu/patents_project/ingest/data/xml"
for file in os.listdir("."):
	if file.startswith("xx"):
		converter = xml2json(file, encoding="utf-8")
		print converter.get_json(pretty=False)
