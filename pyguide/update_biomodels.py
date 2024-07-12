# -*- coding: utf-8 -*-
"""
Created on Wed Jun 12 16:14:37 2024

@author:
    Lucian Smith
    Tung Nguyen
"""

import os
import json
import requests
import uuid

final_dir = r"C:\Users\Lucian\Desktop\temp-biomodels\final/"
final_dir = r"/Users/tnguyen/ownCloud/EBI/biomodels/temp-biomodels/final/"
final_dir = r"/Users/tnguyen/ownCloud/EBI/biomodels/api-submission/models4test/wwwlocal/"
masters_filename = r"C:\Users\Lucian\Desktop\temp-biomodels\all_masters.json"
masters_filename = r"/Users/tnguyen/ownCloud/EBI/biomodels/api-submission/pyguide/all_masters.json"
root_biomodels = "https://wwwdev.ebi.ac.uk/biomodels/"
root_biomodels = "http://localhost:8080/biomodels/"
DOWNUP_SVR = "http://localhost:7000/biomodels/"

def get_new_metadata(_model_id, _old_metadata):
    metadata = {}
    for key in ["name", "description", "publication"]:
        metadata[key] = _old_metadata[key]
    metadata["readme_submission"] = "Updated the model revision via REST API."
    metadata["other_info"] = "SBML Model Format"
    metadata["isMetadataSubmission"] = False
    metadata["isAmend"] = False
    metadata["comment"] = "Corrected the annotations (removed the duplicates) and added the PDF manuscript."
    metadata["files"] = {"main": _old_metadata["files"]["main"], "additional": []}
    if "additional" in _old_metadata["files"]:
        metadata["files"]["additional"] = _old_metadata["files"]["additional"]
    metadata["files"]["additional"].append({
        "name": "1-s2.0-S2211124722016138-main.pdf",
        "description": "The manuscript in PDF"
    })

    return metadata


def update_model(_model_id, metadata, _headers):
    folder = str(uuid.uuid4())
    _headers.append({"SubmissionFolder": folder})
    new_files = []
    for _root, _dirs, _files in os.walk(final_dir + _model_id):
        new_files.extend(_files)
    for filename in _files:
        uploaded_files = {"file": open(final_dir + _model_id + "/" + filename, "rb")}
        ret = requests.post(DOWNUP_SVR + "services/upload",
                            headers=_headers, files=uploaded_files)
        ret.raise_for_status()
        # print(ret.json())
    ret = requests.post(root_biomodels + "api/submission/update/",
                        headers=_headers, json=metadata)
    ret.raise_for_status()
    print(ret)


f = open("credentials.json", "r")
f = open("../credentials/local-khang.json", "r")
credentials = json.load(f)
f.close()

f = open(masters_filename, "r")
masters = json.load(f)
f.close()

for root, dirs, files in os.walk(final_dir):
    break

headers = {
    "Authorization": "Bearer " + credentials["access_token"]
}
for model_id in dirs:
    if model_id != "MODEL2311240001":
        pass
    else:
        URL = root_biomodels + "api/model/" + model_id + "?format=json"
        old_md = requests.get(URL, headers=headers)
        old_metadata = old_md.json()
        new_metadata = get_new_metadata(model_id, old_metadata)
        print(json.dumps(new_metadata))
        update_model(model_id, new_metadata, headers)
