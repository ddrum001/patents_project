# start off by running beautiful soup python scraper to get all the urls
# from the USPTO site, filtering out the non-zip and weekly pba files,
# storing the links in the file_links text
 
python patent_link_scraper.py | grep zip | grep -v pba > new_file_links.txt

# next use wget to download all the files from the urls in 
# file_links.txt and put them in  a tmp directory for staging
# note: the -q option can be used to suppress output in quiet mode

#mkdir -p /home/ubuntu/patents_project/par_ingest/zip
#cd zip
#wget $(cat file_links.txt)

# the raw, full-fidelity, zip file are immediately put into HDFS for safe
# storage, after creating the required directories

#hdfs dfs -mkdir -p /user/ubuntu/data/raw_patents
#hdfs dfs -put *.zip /user/ubuntu/data/raw_patents

# Unfortunately, the zip format is not splittable and we will have 
# to stage the files on the local system for some pre-processing 
