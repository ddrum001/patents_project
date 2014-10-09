select 	uspatentgrant.usbibliographicdatagrant.parties.applicants.applicant.addressbook.address.state,
	uspatentgrant.usbibliographicdatagrant.parties.applicants.applicant.addressbook.address.city,
	uspatentgrant.usbibliographicdatagrant.parties.applicants.applicant.addressbook.address.country,
	uspatentgrant.usbibliographicdatagrant.parties.applicants.applicant.addressbook.orgname,	
	uspatentgrant.usbibliographicdatagrant.publicationreference.documentid.date,
	uspatentgrant.usbibliographicdatagrant.publicationreference.documentid.docnumber,
	uspatentgrant.usbibliographicdatagrant.applicationreference.documentid.date,
	uspatentgrant.usbibliographicdatagrant.applicationreference.documentid.docnumber,
	substr(uspatentgrant.usbibliographicdatagrant.classificationnational.mainclassification,1,3)
from first_schema_class_table; 


