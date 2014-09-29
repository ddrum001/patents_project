drop table t2014;
CREATE EXTERNAL TABLE IF NOT EXISTS t2014 (
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
      usparties:struct<
        usapplicants:struct<
	  usapplicant:struct<
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
LOCATION '/user/ubuntu/data/patgrant/json/year=2014/';
