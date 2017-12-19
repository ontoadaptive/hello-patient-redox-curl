# get access token
TOKEN=`jq '.accessToken' token.json`
ARG="Authorization: Bearer ${TOKEN:1:-1}"

curl \
-X POST https://api.redoxengine.com/endpoint \
-H "Content-Type: application/json" \
-H  "$ARG" \
-d '{
	"Meta": {
		"DataModel": "Clinical Summary",
		"EventType": "VisitQuery",
		"EventDateTime": "2017-05-18T22:30:31.339Z",
		"Test": true,
		"Destinations": [
			{
				"ID": "ef9e7448-7f65-4432-aa96-059647e9b357",
				"Name": "Visit Query Endpoint"
			}
		]
	},
	"Patient": {
		"Identifiers": [
			{
				"ID": "a1d4ee8aba494ca",
				"IDType": "NIST"
			}
		]
	},
	"Visit": {
		"VisitNumber": "4325235",
		"StartDateTime": "2005-02-21T00:00:00.000Z",
		"EndDateTime": null
	}
}'