from xmlutils.xml2json import xml2json

# echo $(($(\ls -afq 20140909 | wc -l)-2))

week = 20140909
dir = "/home/ubuntu/insight_patents/"
for file_num in range(1,5):
	file_name = "%s%d/%d-%.5d" % ( dir, week, week, file_num ) 
	converter = xml2json(file_name, encoding="utf-8")
	print converter.get_json(pretty=True)
