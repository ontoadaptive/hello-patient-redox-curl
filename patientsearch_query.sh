# get access token
TOKEN=`jq '.accessToken' token.json`
ARG="Authorization: Bearer ${TOKEN:1:-1}"

# send data model (with access token)
# e.g., PatientSearch
curl \
-X POST https://api.redoxengine.com/query \
-H "Content-Type: application/json" \
-H  "$ARG" \
-d '{
	"Meta": {
		"DataModel": "PatientSearch",
		"EventType": "Query",
		"EventDateTime": "2017-05-18T18:05:14.117Z",
		"Test": true,
		"Destinations": [
			{
				"ID": "0f4bd1d1-451d-4351-8cfd-b767d1b488d6",
				"Name": "Patient Search Endpoint"
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
		"Notes": []
	}
}'