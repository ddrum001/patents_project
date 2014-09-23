from bs4 import BeautifulSoup
import urllib2

current_year = 2014
url_base = 'https://eipweb.uspto.gov'
url_dir_02_04 = 'PatentGrantBibXML'
url_dir_76_01 = 'PatentGrantBibAPS'
url_dir = 'PatentGrantBibICEXML'

for year in range(1976, current_year + 1):
	if year <= 2001:
		url = "%s/%d/%s" % ( url_base, year, url_dir_76_01 )				
	elif year > 2001 and year <= 2004:
		url = "%s/%d/%s" % ( url_base, year, url_dir_02_04 )				
	else:
		url = "%s/%d/%s" % ( url_base, year, url_dir )
	page = urllib2.urlopen(url)
	soup = BeautifulSoup(page.read())
	for link in soup.find_all('a'):
		file_name = "%s/%s" % ( url , link.get('href') )
		print(file_name)
