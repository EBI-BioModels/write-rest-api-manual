import json, os, requests

BM_URL = "http://localhost:8080/biomodels/api/validate"
BM_URL = "http://localhost:8080/biomodels/api/model/revisionsState/MODEL2401190002?format=json"
# get the env var holding the access token of the account username 'teo'. 
# please change it to your valid value
ACCESS_TOKEN = os.getenv("ACCESS_TOKEN_LOCAL_KHANG")
headers = {
    "Authorization": "Bearer " + ACCESS_TOKEN
}

data = {"firstname": "Tung Vu Ngoc", "lastname": "Nguyen"}
print(json.dumps(data))

response = requests.post(BM_URL, headers=headers, json=data)
print(response.status_code)
json_data = response.json()
print(json.dumps(json_data))

