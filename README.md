# hello-patient-redox-curl
hello-patient-redox-curl

### Overview
This is a very basic example on how to exercise the Redox API using simple command line scripting using curl and jq.

Although Redox tutorial begins with a UI driven approach to Redox API using API explorers and Postman, at some point you may want to script and then make part of your development workflow.

This an an open source contribution to Chicago based [MATTER](https://matter.health/) Stage program representing broader Chicago Digital Health community.

### Pre-requisites
- If you have not already done so, sign up for a Redox API Developer account
- Create a "source".

### How to run
- Set environment variables for REDOX_API_KEY and REDOX_API_SECRET
- Execute Bash script from terminal.  Start with with authenticare.sh to for authentication and persistencing bearer token for future API calls.
- Based on your use case (and required Redox data models), call other scripts.  The all follow the naming convention pattern of **Redox Data Model_Operation.sh** or **Instance_Operation.sh**

### Eureka! moment
Although Redox API does not claim to be a pure REST API, we feel it represents a very pragmatic REST API and was much easier to experiment and do some rapid prototyping given a "batteries included" data model.  Is is the silver bullet for full interoperability in U.S. Healthcare?  

No, but neither are other standards driven approaches such as HL7 FHIR or even proprietary APIs such as Allscripts.  Mileage will always very upon the "last mile" of interooperability and context and complexity will always vary.  For HL7 FHIR, you may have the community vetted FHIR resource but you will need to also spend efforts constraining with profiling.  For a proprietary API such as Allscripts, you may have lock-in concerns.  It all the depends.  

### Dependencies
- [Redox API keys](https://developer.redoxengine.com/)
- [curl](https://github.com/curl/curl)
- [jq](https://stedolan.github.io/jq/)

### References
- [Redox API](https://developer.redoxengine.com/)

### Future Work
- Create a more end to end Persona driven use case
