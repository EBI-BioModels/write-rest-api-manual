import os, requests

BM_URL = "http://localhost:8080/biomodels/api/validate"
# get the env var holding the access token of the account username 'teo'. 
# please change it to your valid value
ACCESS_TOKEN = os.getenv("ACCESS_TOKEN_LOCAL_TEO")
headers = {
    "Authorization": "Bearer " + ACCESS_TOKEN
}

response = requests.get(BM_URL, headers=headers)
print(response.status_code)