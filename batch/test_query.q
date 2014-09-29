select 	uspatentgrant.usbibliographicdatagrant.assignees.assignee.addressbook.address.state,
	uspatentgrant.usbibliographicdatagrant.assignees.assignee.addressbook.address.city,
	uspatentgrant.usbibliographicdatagrant.assignees.assignee.addressbook.address.country,
	uspatentgrant.usbibliographicdatagrant.publicationreference.documentid.date,
	uspatentgrant.usbibliographicdatagrant.publicationreference.documentid.docnumber,
	uspatentgrant.usbibliographicdatagrant.applicationreference.documentid.date,
	uspatentgrant.usbibliographicdatagrant.applicationreference.documentid.docnumber
from tyears; 


-- INSERT OVERWRITE DIRECTORY '/user/ubuntu/data/clean/2014'

