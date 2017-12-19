# get access token
TOKEN=`jq '.accessToken' token.json`
ARG="Authorization: Bearer ${TOKEN:1:-1}"

curl \
-X POST https://api.redoxengine.com/endpoint \
-H "Content-Type: application/json" \
-H  "$ARG" \
-d '{
	"Meta": {
		"DataModel": "Referral",
		"EventType": "New",
		"EventDateTime": "2017-05-20T11:44:57.930Z",
		"Test": true,
		"Destinations": [
			{
				"ID": "af394f14-b34a-464f-8d24-895f370af4c9",
				"Name": "Redox EMR"
			}
		],
		"FacilityCode": null
	},
	"Referral": {
		"ID": "4356789876",
		"IDType": null,
		"AlternateID": "2133311",
		"Type": "Medical",
		"Category": "Outpatient",
		"Priority": "Routine",
		"Status": "Pending",
		"DateTime": "2015-05-05T00:00:00.000Z",
		"ExpirationDateTime": "2015-06-05T00:00:00.000Z",
		"ProcessDateTime": null,
		"Reason": "Provider Ordered",
		"ProviderSpecialty": null,
		"DepartmentSpecialty": null,
		"Notes": [],
		"Authorization": {
			"Plan": {
				"ID": "31572",
				"IDType": null,
				"Name": "HMO Deductable Plan"
			},
			"Company": {
				"ID": "60054",
				"IDType": null,
				"Name": "aetna (60054 0131)"
			},
			"DateTime": "2015-05-05T00:00:00.000Z",
			"ExpirationDateTime": "2015-06-05T00:00:00.000Z",
			"Number": "9140860055",
			"ReimbursementLimit": null,
			"RequestedTreatmentCount": null,
			"AuthorizedTreatmentCount": null,
			"Notes": []
		},
		"Diagnoses": [],
		"Procedures": [
			{
				"Code": "400500400",
				"Codeset": "CPT4",
				"Description": "Anticoag Therapy Referral",
				"Notes": []
			}
		],
		"Providers": [
			{
				"ID": "4236464757",
				"IDType": "NPI",
				"Type": "Referring Provider",
				"FirstName": "John",
				"LastName": "Slate",
				"Credentials": [
					"DO"
				],
				"Address": {
					"StreetAddress": "500 First St.",
					"City": "Clayton",
					"State": "MO",
					"ZIP": "63105",
					"County": "Saint Louis",
					"Country": "USA"
				},
				"Location": {
					"Type": null,
					"Facility": null,
					"Department": null,
					"Room": null
				},
				"PhoneNumber": {
					"Office": null
				}
			}
		]
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
		"Notes": [],
		"Contacts": [
			{
				"FirstName": "Barbara",
				"MiddleName": null,
				"LastName": "Bixby",
				"Address": {
					"StreetAddress": "4762 Hickory Street",
					"City": "Monroe",
					"State": "WI",
					"ZIP": "53566",
					"County": "Green",
					"Country": "US"
				},
				"PhoneNumber": {
					"Home": "+18088675303",
					"Office": "+17077543758",
					"Mobile": "+19189368865"
				},
				"RelationToPatient": "Mother",
				"EmailAddresses": [
					"barb.bixby@test.net"
				],
				"Roles": [
					"Emergency Contact"
				]
			}
		],
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
	}
}'