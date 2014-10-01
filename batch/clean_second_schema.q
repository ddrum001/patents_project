-- INSERT OVERWRITE DIRECTORY '/user/ubuntu/data/clean/2014'
select 	uspatentgrant.usbibliographicdatagrant.usparties.usapplicants.usapplicant.addressbook.address.state,
	uspatentgrant.usbibliographicdatagrant.usparties.usapplicants.usapplicant.addressbook.address.city,
	uspatentgrant.usbibliographicdatagrant.usparties.usapplicants.usapplicant.addressbook.address.country,
	uspatentgrant.usbibliographicdatagrant.usparties.usapplicants.usapplicant.addressbook.orgname,	
	uspatentgrant.usbibliographicdatagrant.publicationreference.documentid.date,
	uspatentgrant.usbibliographicdatagrant.publicationreference.documentid.docnumber,
	uspatentgrant.usbibliographicdatagrant.applicationreference.documentid.date,
	uspatentgrant.usbibliographicdatagrant.applicationreference.documentid.docnumber
from second_schema_table; 


