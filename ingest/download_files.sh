# start off by running beautiful soup python scraper to get all the urls
# from the USPTO site, filtering out the non-zip and weekly pba files,
# storing the links in the file_links text
 
python patent_link_scraper.py | grep zip | grep -v pba > file_links.txt

# next use wget to download all the files from the urls in file_links.txt
# note: the -q option can be used to suppress output in quiet mode

wget $(cat file_links.txt)

# the raw, full-fidelity, zip file are immediately put into HDFS for safe
# storage

hdfs dfs -put *.zip /user/ubuntu/data/raw_patents

# Unfortunately, the zip format is not splittable and we will
# have to stage the files on the local system for some pre-processing 
