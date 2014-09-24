#!/bin/bash

# script to split xml files

for arg in "$@"
do
	csplit -n 5 $arg '/xml version/' {*}
	rm xx00000
	../xml_to_json.py | tr -d '-' > ../json/$arg.json
	rm xx*
done

