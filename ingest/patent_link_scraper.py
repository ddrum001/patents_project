from bs4 import BeautifulSoup
import urllib2

current_year = 2014
url_base = 'https://eipweb.uspto.gov'
url_dir_02_04 = 'PatentGrantBibXML'
url_dir = 'PatentGrantBibICEXML'

for year in range(2002, current_year):
	if year < 2005:
		url = "%s/%d/%s" % ( url_base, year, url_dir_02_04 )				
	else:
		url = "%s/%d/%s" % ( url_base, year, url_dir )
	page = urllib2.urlopen(url)
	soup = BeautifulSoup(page.read())
	for link in soup.find_all('a'):
		file_name = "%s/%s" % ( url , link.get('href') )
		print(file_name)
