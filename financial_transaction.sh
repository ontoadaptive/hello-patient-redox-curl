# get access token
TOKEN=`jq '.accessToken' token.json`
ARG="Authorization: Bearer ${TOKEN:1:-1}"

# NAA

# financial
# transaction
# patient
# visit provider
# location
# transaction

curl \
-X POST https://api.redoxengine.com/endpoint \
-H "Content-Type: application/json" \
-H  "$ARG" \
-d '{
	"Meta": {
		"DataModel": "Financial",
		"EventType": "Transaction",
		"EventDateTime": "2017-05-18T22:30:58.611Z",
		"Test": true,
		"Destinations": [
			{
				"ID": "af394f14-b34a-464f-8d24-895f370af4c9",
				"Name": "Redox EMR"
			}
		],
		"FacilityCode": null
	},
	"Patient": {
		"Identifiers": [
			{
				"ID": "0000000001",
				"IDType": "MR"
			},
			{
				"ID": "e167267c-16c9-4fe3-96ae-9cff5703e90a",
				"IDType": "EHRID"
			},
			{
				"ID": "a1d4ee8aba494ca",
				"IDType": "NIST"
			}
		],
		"Demographics": {
			"FirstName": "Timothy",
			"MiddleName": "Paul",
			"LastName": "Bixby",
			"DOB": "2008-01-06",
			"SSN": "101-01-0001",
			"Sex": "Male",
			"Race": "Asian",
			"IsHispanic": null,
			"MaritalStatus": "Single",
			"IsDeceased": null,
			"DeathDateTime": null,
			"PhoneNumber": {
				"Home": "+18088675301",
				"Office": null,
				"Mobile": null
			},
			"EmailAddresses": [],
			"Language": "en",
			"Citizenship": [],
			"Address": {
				"StreetAddress": "4762 Hickory Street",
				"City": "Monroe",
				"State": "WI",
				"ZIP": "53566",
				"County": "Green",
				"Country": "US"
			}
		},
		"Notes": []
	},
	"Visit": {
		"VisitNumber": "1234",
		"VisitDateTime": "2015-05-23T00:00:00.000Z",
		"Location": {
			"Department": "3N",
			"Address": {
				"StreetAddress": "9509 Integration Ln",
				"City": "Madison",
				"State": "WI",
				"ZIP": "53719",
				"County": "Dane",
				"Country": "US"
			}
		},
		"Guarantor": {
			"Number": "10001910",
			"FirstName": "Kent",
			"LastName": "Bixby",
			"DOB": null,
			"Sex": null,
			"Spouse": {
				"FirstName": "Barbara",
				"LastName": "Bixby"
			},
			"Address": {
				"StreetAddress": "4762 Hickory Street",
				"City": "Monroe",
				"State": "WI",
				"ZIP": "53566",
				"County": "Green",
				"Country": "USA"
			},
			"PhoneNumber": {
				"Home": null,
				"Business": null
			},
			"Type": null,
			"RelationToPatient": "Father",
			"Employer": {
				"Name": "Accelerator Labs",
				"Address": {
					"StreetAddress": "1456 Old Sauk Road",
					"City": "Madison",
					"State": "WI",
					"ZIP": "53719",
					"County": "Dane",
					"Country": "USA"
				},
				"PhoneNumber": "+18083451121"
			}
		},
		"Insurances": [
			{
				"Plan": {
					"ID": "31572",
					"IDType": "Payor ID",
					"Name": "HMO Deductable Plan"
				},
				"Company": {
					"ID": "60054",
					"IDType": null,
					"Name": "aetna (60054 0131)",
					"Address": {
						"StreetAddress": "PO Box 14080",
						"City": "Lexington",
						"State": "KY",
						"ZIP": "40512-4079",
						"County": "Fayette",
						"Country": "US"
					},
					"PhoneNumber": "+18089541123"
				},
				"GroupNumber": "847025-024-0009",
				"GroupName": "Accelerator Labs",
				"EffectiveDate": "2015-01-01",
				"ExpirationDate": "2020-12-31",
				"PolicyNumber": "9140860055",
				"AgreementType": null,
				"CoverageType": null,
				"Insured": {
					"LastName": null,
					"FirstName": null,
					"Relationship": null,
					"DOB": null,
					"Address": {
						"StreetAddress": null,
						"City": null,
						"State": null,
						"ZIP": null,
						"County": null,
						"Country": null
					}
				}
			}
		]
	},
	"Transactions": [
		{
			"ID": "13213259164838",
			"Type": "Charge",
			"DateTimeOfService": "2015-05-23T00:00:00.000Z",
			"EndDateTime": null,
			"Chargeable": {
				"Code": "12442124",
				"Codeset": "RedoxHealthSystemChargeables",
				"Description": "BIOPSY-SKIN",
				"Quantity": null,
				"Amount": null
			},
			"Department": {
				"Code": "RES3N",
				"Codeset": "DeptID",
				"Name": "RES General Hospital - 3N"
			},
			"Diagnoses": [
				{
					"Code": "C43.4",
					"Codeset": "ICD-10",
					"Name": "Malignant melanoma of scalp and neck",
					"Type": null
				}
			],
			"Performers": [
				{
					"ID": "4356789876",
					"IDType": "NPI",
					"FirstName": "Pat",
					"LastName": "Granite",
					"Credentials": [
						"MD"
					],
					"Address": {
						"StreetAddress": "123 Main St.",
						"City": "Madison",
						"State": "WI",
						"ZIP": "53703",
						"County": "Dane",
						"Country": "USA"
					},
					"Location": {
						"Type": null,
						"Facility": null,
						"Department": null,
						"Room": null
					},
					"PhoneNumber": {
						"Office": "+16085551234"
					}
				}
			],
			"OrderingProviders": [
				{
					"ID": "4356789876",
					"IDType": "NPI",
					"FirstName": "Pat",
					"LastName": "Granite",
					"Credentials": [
						"MD"
					],
					"Address": {
						"StreetAddress": "123 Main St.",
						"City": "Madison",
						"State": "WI",
						"ZIP": "53703",
						"County": "Dane",
						"Country": "USA"
					},
					"Location": {
						"Type": null,
						"Facility": null,
						"Department": null,
						"Room": null
					},
					"PhoneNumber": {
						"Office": "+16085551234"
					}
				}
			],
			"OrderID": null,
			"Procedure": {
				"Code": "11100",
				"Codeset": "CPT",
				"Description": "Biopsy of skin",
				"Modifiers": []
			},
			"NDC": {
				"Code": null,
				"Description": null
			}
		}
	]
}'