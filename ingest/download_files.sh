python patent_link_scraper.py | grep zip | grep -v pba > file_links.txt
wget $(cat file_links.txt)
