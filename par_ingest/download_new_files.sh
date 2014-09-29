# start off by running beautiful soup python scraper to get all the urls
# from the USPTO site, filtering out the non-zip and weekly pba files,
# storing them in updated_file_links.txt, then comparing to file_links.txt to
# get the new links.

#python patent_link_scraper.py | grep zip | grep -v pba > updated_file_links.txt
#diff updated_file_links.txt file_links.txt | grep zip | cut -f2 -d ' ' > new_file_links.txt

# next use wget to download all the new files from the urls in 
# new_file_links.txt and put them in  a tmp directory for staging
# note: the -q option can be used to suppress output in quiet mode

mkdir new_zip
cd new_zip
wget $(cat ../new_file_links.txt)

# the raw, full-fidelity, zip file are immediately put into HDFS for safe
# storage, after creating the required directories

hdfs dfs -put *.zip /user/ubuntu/data/raw_patents

# Unfortunately, the zip format is not splittable and we will have 
# to stage the files on the local system for some pre-processing 
# end with some clean up

cd ..
rm -r new_zip
