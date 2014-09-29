from bs4 import BeautifulSoup
import urllib2

# the patent office has changed the format of their links several times
# and the file names are labeled by date, so scraping the files is the easiest way
# to get the url for wget.  From 1976 to 2001 they have BibAPS, from 2001 to 2004
# they have BibXML, and from 2005 onward they  use BibICEXML

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
