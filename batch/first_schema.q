drop table first_schema_table;
CREATE EXTERNAL TABLE IF NOT EXISTS first_schema_table (
  uspatentgrant struct<
    usbibliographicdatagrant:struct<
      publicationreference:struct<
        documentid:struct<
	  docnumber:string, date:string
	>
      >,
      applicationreference:struct<
	documentid:struct<
	  country:string, date:string, docnumber: string
	>
      >,
      parties:struct<
        applicants:struct<
	  applicant:struct<
	    addressbook:struct<
	      orgname:string,
	      address:struct<
	        city: string, state: string, country: string
	      >
	    >
	  >
	>
      >		
    >
  >)
ROW FORMAT SERDE 'org.openx.data.jsonserde.JsonSerDe'
LOCATION '/user/ubuntu/data/patgrant/json/first_schema/';
