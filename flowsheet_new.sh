# get access token
TOKEN=`jq '.accessToken' token.json`
ARG="Authorization: Bearer ${TOKEN:1:-1}"

# NAA
# - can only add (i.e., new)

curl \
-X POST https://api.redoxengine.com/endpoint \
-H "Content-Type: application/json" \
-H  "$ARG" \
-d '{
	"Meta": {
		"DataModel": "Flowsheet",
		"EventType": "New",
		"EventDateTime": "2017-05-20T11:45:35.498Z",
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
		]
	},
	"Visit": {
		"VisitNumber": "1234",
		"Location": {
			"Type": null,
			"Facility": null,
			"Department": null,
			"Room": null,
			"Bed": null
		}
	},
	"Observations": [
		{
			"DateTime": "2015-08-13T21:08:57.581Z",
			"Value": "110.00",
			"ValueType": "Numeric",
			"Units": "mmHg",
			"Code": "Systolic",
			"Codeset": "RedoxEMR",
			"Notes": [
				"Observation note."
			],
			"Observer": {
				"ID": "12312",
				"FirstName": "Jimmy",
				"LastName": "JimJam"
			}
		},
		{
			"DateTime": "2015-08-13T21:08:57.581Z",
			"Value": "90.00",
			"ValueType": "Numeric",
			"Units": "mmHg",
			"Code": "Diastolic",
			"Codeset": "RedoxEMR",
			"Notes": [],
			"Observer": {
				"ID": "12312",
				"FirstName": "Jimmy",
				"LastName": "JimJam"
			}
		},
		{
			"DateTime": "2015-08-13T21:08:57.581Z",
			"Value": "55",
			"ValueType": "Numeric",
			"Units": "beats/min",
			"Code": "Diastolic",
			"Codeset": "RedoxEMR",
			"Notes": [],
			"Observer": {
				"ID": "12312",
				"FirstName": "Jimmy",
				"LastName": "JimJam"
			}
		}
	]
}'