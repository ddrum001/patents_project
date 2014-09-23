DROP TABLE t20140909;
CREATE TABLE t20140909 (
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
				>,
				inventors:struct<
					inventor:struct<
						addressbook:struct<
							address:struct<
								city: string
							>
						>
					>
				>
			>		
		>
	>)
ROW FORMAT SERDE 'org.openx.data.jsonserde.JsonSerDe';

LOAD DATA LOCAL INPATH '/home/ubuntu/insight_patents/20140909-clean.json' OVERWRITE INTO TABLE t20140909;
