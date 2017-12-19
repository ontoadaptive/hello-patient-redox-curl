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
		"EventType": "VisitPush",
		"EventDateTime": "2017-05-18T22:30:58.611Z",
		"Test": true,
		"Destinations": [
			{
				"ID": "ef9e7448-7f65-4432-aa96-059647e9b358",
				"Name": "Visit Push Endpoint"
			}
		]
	},
	"Header": {
		"Document": {
			"Author": {
				"ID": "4356789876",
				"IDType": "NPI",
				"Type": null,
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
			},
			"ID": "75cb4ad4-e5f9-4cd3-8750-eb5050521e0d",
			"Locale": "US",
			"Title": "Community Health and Hospitals: Health Summary",
			"DateTime": "2012-09-12T00:00:00.000Z",
			"Type": "Summarization of Episode Note",
			"Visit": {
				"Location": {
					"Type": "Inpatient",
					"Facility": "RES General Hospital",
					"Department": "3N",
					"Room": "136"
				},
				"StartDateTime": "2017-05-18T23:47:07.550Z",
				"Reason": "Annual Physical",
				"EndDateTime": "2017-05-18T23:47:07.550Z"
			}
		},
		"Patient": {
			"Identifiers": [
				{
					"ID": "0000000001",
					"IDType": "MR",
					"Type": null
				},
				{
					"ID": "e167267c-16c9-4fe3-96ae-9cff5703e90a",
					"IDType": "EHRID",
					"Type": null
				},
				{
					"ID": "a1d4ee8aba494ca",
					"IDType": "NIST",
					"Type": null
				}
			],
			"Demographics": {
				"FirstName": "Timothy",
				"LastName": "Bixby",
				"DOB": "2008-01-06",
				"SSN": "101-01-0001",
				"Sex": "Male",
				"Address": {
					"StreetAddress": "4762 Hickory Street",
					"City": "Monroe",
					"State": "WI",
					"County": "Green",
					"Country": "US",
					"ZIP": "53566"
				},
				"PhoneNumber": {
					"Home": "+18088675301",
					"Mobile": null
				},
				"EmailAddresses": [],
				"Race": "Asian",
				"Ethnicity": null,
				"Religion": null,
				"MaritalStatus": "Single"
			}
		}
	},
	"AllergyText": "<table border=\"1\" width=\"100%\"><thead><tr><th>Substance</th><th>Reaction</th><th>Severity</th><th>Status</th></tr></thead><tbody><tr><td>Penicillin G benzathine</td><td><content ID=\"reaction1\">Hives</content></td><td><content ID=\"severity1\">Moderate to severe</content></td><td>Inactive</td></tr><tr><td>Codeine</td><td><content ID=\"reaction2\">Shortness of Breath</content></td><td><content ID=\"severity2\">Moderate</content></td><td>Active</td></tr><tr><td>Aspirin</td><td><content ID=\"reaction3\">Hives</content></td><td><content ID=\"severity3\">Mild to moderate</content></td><td>Active</td></tr></tbody></table>",
	"Allergies": [
		{
			"Type": {
				"Code": "419511003",
				"CodeSystem": "2.16.840.1.113883.6.96",
				"CodeSystemName": "SNOMED CT",
				"Name": "Propensity to adverse reaction to drug"
			},
			"Substance": {
				"Code": "7982",
				"CodeSystem": "2.16.840.1.113883.6.88",
				"CodeSystemName": "RxNorm",
				"Name": "Penicillin G benzathine"
			},
			"Reaction": [
				{
					"Code": "28926001",
					"CodeSystem": "2.16.840.1.113883.6.96",
					"CodeSystemName": "SNOMED CT",
					"Name": "Rash",
					"Text": null
				},
				{
					"Code": "247472004",
					"CodeSystem": "2.16.840.1.113883.6.96",
					"CodeSystemName": "SNOMED CT",
					"Name": "Hives",
					"Text": null
				}
			],
			"Severity": {
				"Code": "371924009",
				"CodeSystem": "2.16.840.1.113883.6.96",
				"CodeSystemName": "SNOMED CT",
				"Name": "Moderate to severe"
			},
			"Status": {
				"Code": "73425007",
				"CodeSystem": "2.16.840.1.113883.6.96",
				"CodeSystemName": "SNOMED CT",
				"Name": "Inactive"
			},
			"StartDate": null,
			"EndDate": null,
			"Comment": "Noted when patient took penicillin for ear infection."
		},
		{
			"Type": {
				"Code": "419511003",
				"CodeSystem": "2.16.840.1.113883.6.96",
				"CodeSystemName": "SNOMED CT",
				"Name": "Propensity to adverse reaction to drug"
			},
			"Substance": {
				"Code": "2670",
				"CodeSystem": "2.16.840.1.113883.6.88",
				"CodeSystemName": "RxNorm",
				"Name": "Codeine"
			},
			"Reaction": [
				{
					"Code": "267036007",
					"CodeSystem": "2.16.840.1.113883.6.96",
					"CodeSystemName": "SNOMED CT",
					"Name": "Shortness of Breath",
					"Text": null
				}
			],
			"Severity": {
				"Code": "6736007",
				"CodeSystem": "2.16.840.1.113883.6.96",
				"CodeSystemName": "SNOMED CT",
				"Name": "Moderate"
			},
			"Status": {
				"Code": "55561003",
				"CodeSystem": "2.16.840.1.113883.6.96",
				"CodeSystemName": "SNOMED CT",
				"Name": "Active"
			},
			"StartDate": null,
			"EndDate": null,
			"Comment": null
		},
		{
			"Type": {
				"Code": "419511003",
				"CodeSystem": "2.16.840.1.113883.6.96",
				"CodeSystemName": "SNOMED CT",
				"Name": "Propensity to adverse reaction to drug"
			},
			"Substance": {
				"Code": "1191",
				"CodeSystem": "2.16.840.1.113883.6.88",
				"CodeSystemName": "RxNorm",
				"Name": "Aspirin"
			},
			"Reaction": [
				{
					"Code": "247472004",
					"CodeSystem": "2.16.840.1.113883.6.96",
					"CodeSystemName": "SNOMED CT",
					"Name": "Hives",
					"Text": null
				}
			],
			"Severity": {
				"Code": "371923003",
				"CodeSystem": "2.16.840.1.113883.6.96",
				"CodeSystemName": "SNOMED CT",
				"Name": "Mild to moderate"
			},
			"Status": {
				"Code": "55561003",
				"CodeSystem": "2.16.840.1.113883.6.96",
				"CodeSystemName": "SNOMED CT",
				"Name": "Active"
			},
			"StartDate": null,
			"EndDate": null,
			"Comment": null
		}
	],
	"AssessmentText": "<list listType=\"ordered\"><item>Recurrent GI bleed of unknown etiology; hypotension perhaps secondary to this but as likely secondary to polypharmacy.</item><item>Acute on chronic anemia secondary to #1.</item><item>Azotemia, acute renal failure with volume loss secondary to #1.</item><item>Hyperkalemia secondary to #3 and on ACE and K+ supplement.</item><item>Other chronic diagnoses as noted above, currently stable.</item></list>Also, this person has back problems.",
	"Assessment": {
		"Diagnoses": [
			{
				"Value": "Displacement of lumbar intervertebral disc without myelopathy",
				"DateTime": "2009-11-01T05:00:00.000Z",
				"IsNegativeIndicator": false,
				"Codes": []
			},
			{
				"Value": "Thoracic or lumbosacral neuritis or radiculitis, unspecified",
				"DateTime": "2009-11-01T05:00:00.000Z",
				"IsNegativeIndicator": false,
				"Codes": []
			}
		]
	},
	"ChiefComplaintText": "<paragraph>Dark stools.</paragraph>",
	"EncountersText": "<table border=\"1\" width=\"100%\"><thead><tr><th>Encounter</th><th>Performer</th><th>Location</th><th>Date</th></tr></thead><tbody><tr><td>&#xD;\nPnuemonia<content ID=\"Encounter1\"/></td><td>Dr Henry Seven</td><td>Community Health and Hospitals</td><td>20120806</td></tr></tbody></table>",
	"Encounters": [
		{
			"Type": {
				"Code": "99222",
				"CodeSystem": "2.16.840.1.113883.6.12",
				"CodeSystemName": "CPT",
				"Name": "InPatient Admission"
			},
			"DateTime": "2012-08-06T04:00:00.000Z",
			"EndDateTime": null,
			"Providers": [
				{
					"ID": null,
					"IDType": null,
					"FirstName": null,
					"LastName": null,
					"Credentials": [],
					"Address": {
						"StreetAddress": null,
						"City": null,
						"State": null,
						"ZIP": null,
						"County": null,
						"Country": null
					},
					"Location": {
						"Type": null,
						"Facility": null,
						"Department": null,
						"Room": null
					},
					"PhoneNumber": {
						"Office": null
					},
					"Role": {
						"Code": "59058001",
						"CodeSystem": "2.16.840.1.113883.6.96",
						"CodeSystemName": "SNOMED CT",
						"Name": "General Physician"
					}
				}
			],
			"Locations": [
				{
					"Address": {
						"StreetAddress": "1002 Healthcare Dr",
						"City": "Portland",
						"State": "OR",
						"Country": "US",
						"ZIP": "97266"
					},
					"Type": {
						"Code": "1160-1",
						"CodeSystem": "2.16.840.1.113883.6.259",
						"CodeSystemName": "HealthcareServiceLocation",
						"Name": "Urgent Care Center"
					},
					"Name": "Community Health and Hospitals"
				}
			],
			"Diagnosis": [
				{
					"Code": "233604007",
					"CodeSystem": "2.16.840.1.113883.6.96",
					"CodeSystemName": "SNOMED CT",
					"Name": "Pneumonia"
				}
			],
			"ReasonForVisit": [
				{
					"Code": "233604007",
					"CodeSystem": "2.16.840.1.113883.6.96",
					"CodeSystemName": "SNOMED CT",
					"Name": "Pneumonia"
				}
			]
		}
	],
	"HistoryOfPresentIllnessText": "<list styleCode=\"unordered\"><item><caption>Kelp, Lonnie Ray Sr., MD PHD - 10/21/2014 8:07 PM PST</caption><paragraph>Date: 10/21/2014<br/><br/>Pre-procedure diagnosis: L5 S1 Acute Lumbar Radiculopathy (Right)<br/><br/>Post-procedure diagnosis: Same<br/><br/>Procedure: 1) L5S1 Transforaminal Epidural Steroid injection(Right)<br/>2) Fluoroscopic Guidance for needle placement<br/><br/>Complications: None<br/><br/>CONSENT: Today's procedure, its potential benefits as well as its risks and potential side effects were reviewed. Discussed risks of the procedure include bleeding, infection, nerve irritation or damage, reactions to the medications, headache, failure of the pain to improve, and exacerbation of the pain were explained to the patient, who verbalized understanding and who wished to proceed. Informed consent was signed.<br/><br/>DESCRIPTION OF PROCEDURES: After written informed consent was obtained, the patient was taken to the fluoroscopy suite. Anatomical landmarks were identified by way of fluoroscopy in multiple views. Strict aseptic technique was utilized.<br/><br/>A 22-gauge 3-1/2-inch needle was then incrementally advanced using multiple fluoroscopic views from an oblique approach into the Right L5S1 lumbar intervertebral space. Both AP and lateral views were used to confirm final needle placement. After negative aspiration, Omniopaque 240 contrast was injected which delineated epidural without vascular flow and a normal epidurogram under fluoroscopy in the lateral and AP view. After negative aspiration was reconfirmed, a 1.0 mL of 0.25% Bupivicaine and 1mL of 40 mg/mL of Kenalog was slowly injected into the epidural space.<br/><br/>All needles were removed intact. Hemostasis was maintained. There were no complications. The area was cleaned and a Band-Aid placed as necessary. The patient tolerated the procedure well and all needles were removed intact. After a period of observation, the patient was noted to be hemodynamically stable and neurovascularly intact following the procedure as prior to the procedure, and was ultimately discharged to home with supervision in good condition. The patient was instructed to schedule an appointment in the office within 2 weeks.<br/>Lonnie Ray Kelp Sr., MD PHD<br/><br/></paragraph></item></list>",
	"InstructionsText": "Please carefully follow the subsequent instructions and patient education:<br/><br/><list><item>Floss</item><item>Brush teeth twice daily</item></list><br/><br/>Scarf tying instructions may be found online.",
	"InterventionsText": "Patient practiced use of novel prosthesis including movements formerly neglected including distal extension and retroflexive hyperextension.",
	"MedicationsText": "<table border=\"1\" width=\"100%\"><thead><tr><th>Medication</th><th>Directions</th><th>Start Date</th><th>Status</th><th>Indications</th><th>Fill Instructions</th></tr></thead><tbody><tr><td><content ID=\"Med1\">Albuterol 0.09 MG/ACTUAT inhalant solution</content></td><td>0.09 MG/ACTUAT inhalant solution, 2 puffs once</td><td>20120806</td><td>Active</td><td>Pneumonia (233604007 SNOMED CT)</td><td><content ID=\"FillIns\">Generic Substitition Allowed</content></td></tr></tbody></table>",
	"Medications": [
		{
			"Prescription": false,
			"FreeTextSig": null,
			"Dose": {
				"Quantity": "4",
				"Units": "mg"
			},
			"Rate": {
				"Quantity": null,
				"Units": null
			},
			"Route": {
				"Code": "C38288",
				"CodeSystem": "2.16.840.1.113883.3.26.1.1",
				"CodeSystemName": "NCI Thesaurus",
				"Name": "Oral"
			},
			"StartDate": "2013-11-11T05:00:00.000Z",
			"EndDate": null,
			"Frequency": {
				"Period": "8",
				"Unit": "h"
			},
			"Product": {
				"Code": "104894",
				"CodeSystem": "2.16.840.1.113883.6.88",
				"CodeSystemName": "RxNorm",
				"Name": "Ondansetron 4 Mg Po Tbdp"
			}
		},
		{
			"Prescription": false,
			"FreeTextSig": null,
			"Dose": {
				"Quantity": "0.09",
				"Units": "mg/actuat"
			},
			"Rate": {
				"Quantity": "90",
				"Units": "ml/min"
			},
			"Route": {
				"Code": "C38216",
				"CodeSystem": "2.16.840.1.113883.3.26.1.1",
				"CodeSystemName": "NCI Thesaurus",
				"Name": "RESPIRATORY (INHALATION)"
			},
			"StartDate": "2012-08-06T04:00:00.000Z",
			"EndDate": "2012-08-13T04:00:00.000Z",
			"Frequency": {
				"Period": "12",
				"Unit": "h"
			},
			"Product": {
				"Code": "573621",
				"CodeSystem": "2.16.840.1.113883.6.88",
				"CodeSystemName": "RxNorm",
				"Name": "Albuterol 0.09 MG/ACTUAT inhalant solution"
			}
		}
	],
	"ObjectiveText": "<list listType=\"ordered\"><item>Chest: clear to ausc. No rales, normal breath sounds</item><item>Heart: RR, PMI in normal location and no heave or evidence ofcardiomegaly,normal heart sounds, no murm or gallop</item></list>",
	"PhysicalExamText": "All examinations performed within normal limits.<br/><br/>WNL<br/><br/>Nothing to report here.",
	"PlanOfCareText": "<table border=\"1\" width=\"100%\"><thead><tr><th>Planned Activity</th><th>Planned Date</th></tr></thead><tbody><tr><td>Consultation with Dr George Potomac for Asthma</td><td>20120820</td></tr><tr><td>Chest X-ray</td><td>20120826</td></tr><tr><td>Sputum Culture</td><td>20120820</td></tr></tbody></table>",
	"PlanOfCare": {
		"Orders": [
			{
				"Code": "624-7",
				"CodeSystem": "2.16.840.1.113883.6.1",
				"CodeSystemName": null,
				"Name": "Sputum Culture",
				"Status": "Request",
				"DateTime": "2012-08-20T05:00:00.000Z"
			}
		],
		"Procedures": [
			{
				"Code": "168731009",
				"CodeSystem": "2.16.840.1.113883.6.96",
				"CodeSystemName": "SNOMED-CT",
				"Name": "Chest X-Ray",
				"Status": "Request",
				"DateTime": "2012-08-26T05:00:00.000Z"
			}
		],
		"Encounters": [
			{
				"Code": "99241",
				"CodeSystem": "2.16.840.1.113883.6.12",
				"CodeSystemName": "CPT",
				"Name": "Office consultation - 15 minutes",
				"Status": "Intent",
				"DateTime": "2012-08-20T05:00:00.000Z"
			}
		],
		"MedicationAdministration": [
			{
				"Status": "Intent",
				"Dose": {
					"Quantity": "81",
					"Units": "milliGRAM(s)"
				},
				"Rate": {
					"Quantity": null,
					"Units": null
				},
				"Route": {
					"Code": "C38288",
					"CodeSystem": "2.16.840.1.113883.3.26.1.1",
					"CodeSystemName": "NCI Thesaurus",
					"Name": "ORAL"
				},
				"StartDate": "2012-10-02T05:00:00.000Z",
				"EndDate": "2012-10-31T04:59:00.000Z",
				"Frequency": {
					"Period": null,
					"Unit": null
				},
				"Product": {
					"Code": "1191",
					"CodeSystem": "2.16.840.1.113883.6.88",
					"CodeSystemName": "RxNorm",
					"Name": "aspirin"
				}
			}
		],
		"Supplies": [],
		"Services": [
			{
				"Code": "427519008",
				"CodeSystem": "2.16.840.1.113883.11.20.9.34",
				"CodeSystemName": "patientEducationType",
				"Name": "Caregiver",
				"Status": "Intent",
				"DateTime": null
			}
		]
	},
	"ProblemsText": "<root><content ID=\"problems\"/><list listType=\"ordered\"><item><content ID=\"problem1\">Pneumonia : Status - Resolved</content></item><item><content ID=\"problem2\">Asthma : Status - Active</content></item></list></root>",
	"Problems": [
		{
			"StartDate": "2012-08-06T04:00:00.000Z",
			"EndDate": "2012-08-06T04:00:00.000Z",
			"Code": "233604007",
			"CodeSystem": "2.16.840.1.113883.6.96",
			"CodeSystemName": "SNOMED CT",
			"Name": "Pneumonia",
			"Category": {
				"Code": "409586006",
				"CodeSystem": "2.16.840.1.113883.6.96",
				"CodeSystemName": "SNOMED CT",
				"Name": "Complaint"
			},
			"HealthStatus": {
				"Code": "162467007",
				"CodeSystem": "2.16.840.1.113883.6.96",
				"CodeSystemName": "SNOMED CT",
				"Name": "Symptom Free"
			},
			"Status": {
				"Code": "413322009",
				"CodeSystem": "2.16.840.1.113883.6.96",
				"CodeSystemName": "SNOMED CT",
				"Name": "Resolved"
			}
		},
		{
			"StartDate": "2007-10-17T04:00:00.000Z",
			"EndDate": "2012-08-06T04:00:00.000Z",
			"Code": "195967001",
			"CodeSystem": "2.16.840.1.113883.6.96",
			"CodeSystemName": "SNOMED CT",
			"Name": "Asthma",
			"Category": {
				"Code": "409586006",
				"CodeSystem": "2.16.840.1.113883.6.96",
				"CodeSystemName": "SNOMED CT",
				"Name": "Complaint"
			},
			"HealthStatus": {
				"Code": "162467007",
				"CodeSystem": "2.16.840.1.113883.6.96",
				"CodeSystemName": "SNOMED CT",
				"Name": "Symptom Free"
			},
			"Status": {
				"Code": "55561003",
				"CodeSystem": "2.16.840.1.113883.6.96",
				"CodeSystemName": "SNOMED CT",
				"Name": "Active"
			}
		}
	],
	"ReasonForReferralText": "<table><colgroup><col width=\"16%\"/><col width=\"16%\"/><col width=\"18%\"/><col width=\"16%\"/><col width=\"16%\"/><col width=\"18%\"/></colgroup><thead><tr><th>Incoming Referral</th><th>Reason</th><th>Specialty</th><th>Diagnoses / Procedures</th><th>Referred By Contact</th><th>Referred To Contact</th></tr></thead><tbody><tr><td><paragraph>Consult, Test &amp; Treat (Routine)</paragraph></td><td/><td>BA-Physical Medicine / Physical Medicine and Rehab</td><td><paragraph>Diagnoses</paragraph><paragraph>Radiculopathy, lumbar region</paragraph><paragraph>L5S1 TTRANSFORMINAL ESI</paragraph><paragraph>L5S1 TTRANSFORMINAL ESI</paragraph><paragraph>Procedures</paragraph><paragraph>PR INJECT ANES/STEROID FORAMEN LUMBAR/SACRAL W IMG GUIDE ,1 LEVEL</paragraph><paragraph>INJECTION</paragraph></td><td><paragraph>Kelp, Lonnie Ray Sr., MD PHD</paragraph></td><td><paragraph>Kelp, Lonnie Ray Sr., MD PHD</paragraph></td></tr></tbody></table>",
	"ReasonForVisitText": "<paragraph>Light stools.</paragraph>",
	"ResultText": "<table><tbody><tr><td colspan=\"2\">LABORATORY INFORMATION</td></tr><tr><td colspan=\"2\">Chemistries and drug levels</td></tr><tr><td><content ID=\"result1\">HGB (M 13-18 g/dl; F 12-16 g/dl)</content></td><td>13.2</td></tr><tr><td><content ID=\"result2\">WBC (4.3-10.8 10+3/ul)</content></td><td>6.7</td></tr><tr><td><content ID=\"result3\">PLT (135-145 meq/l)</content></td><td>123 (L)</td></tr></tbody></table>",
	"Results": [
		{
			"Code": "43789009",
			"CodeSystem": "2.16.840.1.113883.6.96",
			"CodeSystemName": "SNOMED CT",
			"Name": "CBC WO DIFFERENTIAL",
			"Status": "Final",
			"Observations": [
				{
					"Code": "30313-1",
					"CodeSystem": "2.16.840.1.113883.6.1",
					"CodeSystemName": "LOINC",
					"Name": "HGB",
					"Status": "Final",
					"Interpretation": "Normal",
					"DateTime": "2012-08-10T14:00:00.000Z",
					"Value": "10.2",
					"Units": "g/dl",
					"ReferenceRange": {
						"Low": null,
						"High": null,
						"Text": null
					}
				},
				{
					"Code": "33765-9",
					"CodeSystem": "2.16.840.1.113883.6.1",
					"CodeSystemName": "LOINC",
					"Name": "WBC",
					"Status": "Final",
					"Interpretation": "Normal",
					"DateTime": "2012-08-10T14:00:00.000Z",
					"Value": "12.3",
					"Units": "10+3/ul",
					"ReferenceRange": {
						"Low": null,
						"High": null,
						"Text": null
					}
				},
				{
					"Code": "26515-7",
					"CodeSystem": "2.16.840.1.113883.6.1",
					"CodeSystemName": "LOINC",
					"Name": "PLT",
					"Status": "Final",
					"Interpretation": "Low",
					"DateTime": "2012-08-10T14:00:00.000Z",
					"Value": "123",
					"Units": "10+3/ul",
					"ReferenceRange": {
						"Low": null,
						"High": null,
						"Text": null
					}
				}
			]
		}
	],
	"ReviewOfSystemsText": "<paragraph>Patient denies recent history of fever or malaise. Positive for weakness and shortness of breath. One episode of melena. No recent headaches. Positive for osteoarthritis in hips, knees and hands.</paragraph>",
	"SubjectiveText": "<paragraph> Complaints of rectal bleeding, fatigue and a change in bowel patterns. Has several days of constipation alternating with diarrhea. </paragraph>",
	"VitalSignsText": "<table border=\"1\" width=\"100%\"><thead><tr><th align=\"right\">Date / Time: </th><th>Nov 1, 2011</th><th>August 6, 2012</th></tr></thead><tbody><tr><th align=\"left\">Height</th><td><content ID=\"vit1\">69 inches</content></td><td><content ID=\"vit2\">69 inches</content></td></tr><tr><th align=\"left\">Weight</th><td><content ID=\"vit3\">189 lbs</content></td><td><content ID=\"vit4\">194 lbs</content></td></tr><tr><th align=\"left\">Blood Pressure</th><td><content ID=\"vit5\">132/86 mmHg</content></td><td><content ID=\"vit6\">145/88 mmHg</content></td></tr></tbody></table>",
	"VitalSigns": [
		{
			"DateTime": "1999-11-14T00:00:00.000Z",
			"Observations": [
				{
					"Code": "8302-2",
					"CodeSystem": "2.16.840.1.113883.6.1",
					"CodeSystemName": "LOINC",
					"Name": "Height",
					"Status": "completed",
					"Interpretation": "Normal",
					"DateTime": "1999-11-14T00:00:00.000Z",
					"Value": "177",
					"Units": "cm"
				},
				{
					"Code": "3141-9",
					"CodeSystem": "2.16.840.1.113883.6.1",
					"CodeSystemName": "LOINC",
					"Name": "Patient Body Weight - Measured",
					"Status": "completed",
					"Interpretation": "Normal",
					"DateTime": "1999-11-14T00:00:00.000Z",
					"Value": "86",
					"Units": "kg"
				},
				{
					"Code": "8480-6",
					"CodeSystem": "2.16.840.1.113883.6.1",
					"CodeSystemName": "LOINC",
					"Name": "Intravascular Systolic",
					"Status": "completed",
					"Interpretation": "Normal",
					"DateTime": "1999-11-14T00:00:00.000Z",
					"Value": "132",
					"Units": "mm[Hg]"
				}
			]
		},
		{
			"DateTime": "2000-04-07T00:00:00.000Z",
			"Observations": [
				{
					"Code": "8302-2",
					"CodeSystem": "2.16.840.1.113883.6.1",
					"CodeSystemName": "LOINC",
					"Name": "Height",
					"Status": "completed",
					"Interpretation": "Normal",
					"DateTime": "2000-04-07T00:00:00.000Z",
					"Value": "177",
					"Units": "cm"
				},
				{
					"Code": "3141-9",
					"CodeSystem": "2.16.840.1.113883.6.1",
					"CodeSystemName": "LOINC",
					"Name": "Patient Body Weight - Measured",
					"Status": "completed",
					"Interpretation": "Normal",
					"DateTime": "2000-04-07T00:00:00.000Z",
					"Value": "88",
					"Units": "kg"
				},
				{
					"Code": "8480-6",
					"CodeSystem": "2.16.840.1.113883.6.1",
					"CodeSystemName": "LOINC",
					"Name": "Intravascular Systolic",
					"Status": "completed",
					"Interpretation": "Normal",
					"DateTime": "2000-04-07T00:00:00.000Z",
					"Value": "145",
					"Units": "mm[Hg]"
				}
			]
		}
	]
}'