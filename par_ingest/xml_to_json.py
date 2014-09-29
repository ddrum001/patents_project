#!/usr/bin/env python

import os
from xmlutils.xml2json import xml2json

# each of the split-up xml files in the current directory, which start with "xx" are converted to json 

for file in os.listdir("."):
	if file.startswith("xx"):
		converter = xml2json(file, encoding="utf-8")
		print converter.get_json(pretty=False)
