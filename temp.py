import requests
import base64

url = "https://www.tesla.com/cua-api/submit-form/generic"
# Take resume from backend/Rajdeep_Gill_Resume
# Convert it to a base64 string

# Add headers to mimic a browser request
headers = {
    'User-Agent': 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/91.0.4472.124 Safari/537.36',
    'Accept': 'application/json',
    'Content-Type': 'application/json',
    'Origin': 'https://www.tesla.com',
    'Referer': 'https://www.tesla.com/careers'
}

try:
    file = open("backend/Rajdeep_Gill_Resume.pdf", "rb")
    file_content = file.read()
    file.close()

    file_base64 = base64.b64encode(file_content).decode("utf-8")

    payload = {
        "formId": "tesla_careers_form__007",
        "formType": "careersJobApplication",
        "formData": {
            "fields": [
                {"name": "jobId", "value": "241053"},  # 0
                {"name": "applicationType", "value": "007"},  # 1
                {"name": "locale", "value": "en-US"},  # 2
                {
                    "name": "phone",
                    "value": {"country": "US", "code": "1", "number": "4319989785"},
                },  # 3
                {"name": "firstName", "value": "Rajdeep"},  # 4
                {"name": "lastName", "value": "Gill"},  # 5
                {"name": "phoneType", "value": "mobile"},  # 6
                {"name": "email", "value": "hi.rajdeep.gill@gmail.com"},  # 7
                {"name": "resume", "value": "data:application/pdf;base64," + file_base64},
                {
                    "name": "jobAvailabilityToStartInternship",
                    "value": "2025-05-17T05:00:00.000Z",
                },
                {"name": "jobInternshipDuration", "value": "7_months_or_more"},
                {"name": "jobInternshipType", "value": "full_time"},
                {"name": "jobInternshipThesis", "value": "no"},
                {"name": "legalNoticePeriod", "value": "immediately"},
                {"name": "legalConsiderOtherPositions", "value": "yes"},
                {"name": "legalImmigrationSponsorship", "value": "no"},
                {"name": "legalFormerTeslaEmployee", "value": "no"},
                {"name": "legalFormerTeslaInternOrContractor", "value": "no"},
                {"name": "legalUniversityStudent", "value": "yes"},
                {
                    "name": "legalUniversityAnticipatedGraduationDate",
                    "value": "2026-05-01T05:00:00.000Z",
                },
                {"name": "legalReceiveNotifications", "value": "no"},
                {"name": "legalAcknowledgment", "value": True},
                {"name": "legalAcknowledgmentName", "value": "Rajdeep Gill"},
                {"name": "eeoAcknowledgment", "value": True},
                {"name": "eeoGender", "value": "male"},
                {"name": "eeoVeteranStatus", "value": "no"},
                {"name": "eeoRaceEthnicity", "value": "asian"},
                {"name": "eeoDisabilityStatus", "value": "no"},
                {"name": "eeoDisabilityStatusDate", "value": "2025-05-17T20:39:26.073Z"},
                {"name": "eeoCopyUrl", "value": ""},  # Added missing value
                {"name": "eeoDisabilityStatusName", "value": "Rajdeep Gill"},
            ]
        },
    }

    print("Sending data")
    # Add error handling and print more detailed response
    try:
        resp = requests.post(url, json=payload, headers=headers, timeout=30)  # Add 30 second timeout
        resp.raise_for_status()  # Raise an exception for bad status codes
        
        print(f"Status Code: {resp.status_code}")
        print(f"Response Headers: {resp.headers}")
        print("Response Body:")
        print(resp.json())
    except requests.exceptions.Timeout:
        print("Request timed out after 30 seconds")
    except requests.exceptions.ConnectionError:
        print("Connection error occurred")
    except requests.exceptions.HTTPError as e:
        print(f"HTTP error occurred: {e}")
        print(f"Response status code: {e.response.status_code}")
        print(f"Response text: {e.response.text}")
    except requests.exceptions.RequestException as e:
        print(f"Request failed: {e}")
    except Exception as e:
        print(f"An error occurred: {e}")

except requests.exceptions.RequestException as e:
    print(f"Request failed: {e}")
except Exception as e:
    print(f"An error occurred: {e}")
