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

final_dir = r"/Users/tnguyen/ownCloud/EBI/biomodels/temp-biomodels/final/"
final_dir = r"/Users/tnguyen/ownCloud/EBI/biomodels/api-submission/models4test/wwwlocal/"
final_dir = r"/Users/tnguyen/ownCloud/EBI/biomodels/api-submission/models4test/wwwdev/"
masters_filename = r"C:\Users\Lucian\Desktop\temp-biomodels\all_masters.json"
masters_filename = r"/Users/tnguyen/ownCloud/EBI/biomodels/api-submission/pyguide/all_masters.json"
root_biomodels = "https://wwwdev.ebi.ac.uk/biomodels/"
# root_biomodels = "http://localhost:8080/biomodels/"
DOWNUP_SVR = "http://localhost:7000/biomodels/"
DOWNUP_SVR = "https://wwwdev.ebi.ac.uk/biomodels/"

f = open("credentials.json", "r")
f = open("../credentials/local-khang.json", "r")
f = open("../credentials/wwwdev-khang.json", "r")
credentials = json.load(f)
f.close()

f = open(masters_filename, "r")
masters = json.load(f)
f.close()

headers = {
    "Authorization": "Bearer " + credentials["access_token"]
}


def get_old_metadata(_model_id):
    URL = root_biomodels + "api/model/" + _model_id + "?format=json"
    old_md = requests.get(URL, headers=headers)
    _old_metadata = old_md.json()
    return _old_metadata


def get_new_metadata(_old_metadata):
    metadata = {"submissionId": _old_metadata["submissionId"]}
    if "publicationId" in _old_metadata:
        metadata["publicationId"] = _old_metadata["publicationId"]
    for key in ["name", "description", "publication"]:
        metadata[key] = _old_metadata[key]
    metadata["readme_submission"] = "Updated the model revision via REST API."
    metadata["other_info"] = "SBML Model Format"
    metadata["isMetadataSubmission"] = False
    metadata["isAmend"] = True
    metadata["comment"] = "Corrected the annotations and added the article in PDF."
    metadata["files"] = {"main": _old_metadata["files"]["main"], "additional": []}
    if "additional" in _old_metadata["files"]:
        metadata["files"]["additional"] = _old_metadata["files"]["additional"]
    # metadata["files"]["additional"].append({
    #     "name": "1-s2.0-S2211124722016138-main.pdf",
    #     "description": "PDF file of the publication paper"
    # })
    # metadata["files"]["additional"].append({
    #     "name": "article.pdf",
    #     "description": "PDF file of the publication paper"
    # })
    # metadata["files"]["additional"].append({
    #     "name": "article.pdf",
    #     "description": "PDF file of the publication paper"
    # })
    if "format" in _old_metadata:
        metadata["format"] = _old_metadata["format"]
    else:
        metadata["format"] = {
            "name": "Other",
            "version": "*"
        }
    if "publication" in _old_metadata:
        metadata["publication"] = _old_metadata["publication"]

    # Add contributor role
    metadata["contributorRole"] = "Annotation Curator"
    return metadata


def update_model(_model_id, metadata, _headers):
    folder = str(uuid.uuid4())
    _headers["SubmissionFolder"] = folder
    new_files = []
    for _root, _dirs, _files in os.walk(final_dir + _model_id):
        new_files.extend(_files)
    for filename in _files:
        uploaded_files = {"file": open(final_dir + _model_id + "/" + filename, "rb")}
        ret = requests.post(DOWNUP_SVR + "services/upload",
                            headers=_headers, files=uploaded_files)
        ret.raise_for_status()
        print(ret.json())
    params = {
        "format": "json"
    }
    ret = requests.post(root_biomodels + "api/submission/update",
                        headers=_headers, params=params, json=metadata)
    ret.raise_for_status()
    # print(ret)
    print(json.dumps(ret.json()))


for root, dirs, files in os.walk(final_dir):
    break

for model_id in dirs:

    if model_id != "MODEL1805180007":
        # "MODEL2107080001":
        pass
    else:
        old_metadata = get_old_metadata(model_id)
        new_metadata = get_new_metadata(old_metadata)
        print(json.dumps(new_metadata))
        update_model(model_id, new_metadata, headers)
