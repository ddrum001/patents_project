#!/bin/bash

# script to split xml files and remove hyphen (for proper json)
# note that an empty file is always created called xx00000
# the thousands of files are deleted after they are added to 
# the appropriate json file

for arg in "$@"
do
	csplit -n 5 $arg '/xml version/' {*}
	rm xx00000
	../xml_to_json.py | tr -d '-' > ../json/$arg.json
	rm xx*
done

