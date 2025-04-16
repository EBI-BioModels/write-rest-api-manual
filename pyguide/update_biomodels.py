# -*- coding: utf-8 -*-
"""
Updates a given model

@author:
    Lucian Smith
    Tung Nguyen
"""

import os
import json
import sys

import requests
import uuid

if len(sys.argv) <= 1:
    print("Please specify a server. Otherwise, we use the local server.")
    server = "local"
else:
    server = sys.argv[1]
if not server:
    print("Please specify a server. Otherwise, we use the local server.")
# hardcode server var here
server = "local"
if not server:
    server = "local"

if "local" == server:
    file_server = "http://localhost:7001/biomodels/"
    final_dir = r"/Users/tnguyen/ownCloud/EBI/biomodels/api-submission/models4test/wwwlocal/"
    masters_filename = r"/Users/tnguyen/ownCloud/EBI/biomodels/api-submission/pyguide/all_masters.json"
    root_biomodels = "http://localhost:8080/biomodels/"
elif "dev" == server:
    file_server = "https://wwwdev.ebi.ac.uk/biomodels/"
    final_dir = r"/Users/tnguyen/ownCloud/EBI/biomodels/api-submission/models4test/wwwdev/"
    masters_filename = r"C:\Users\Lucian\Desktop\temp-biomodels\all_masters.json"
    root_biomodels = "https://wwwdev.ebi.ac.uk/biomodels/"
else:
    final_dir = r"/Users/tnguyen/ownCloud/EBI/biomodels/temp-biomodels/final/"
    masters_filename = r"C:\Users\Lucian\Desktop\temp-biomodels\all_masters.json"
    root_biomodels = "https://www.ebi.ac.uk/biomodels/"
    file_server = "https://www.ebi.ac.uk/biomodels/"


f = open("../credentials/local-khang.json", "r")
# f = open("../credentials/wwwdev-khang.json", "r")
credentials = json.load(f)
f.close()

f = open(masters_filename, "r")
masters = json.load(f)
f.close()

headers = {
    "Authorization": "Bearer " + credentials["access_token"]
}
params = {
    "format": "json"
}
timeout = (30, None)

def update_model_filenames(updated_filenames, _metadata):
    """ Update the name of the model files after uploading """

    all_model_files = _metadata["files"]["main"] + _metadata["files"]["additional"]
    for file in all_model_files:
        if file["name"] in updated_filenames:
            file["name"] = updated_filenames[file["name"]]

def get_old_metadata(_model_id):
    """ Get the old/current metadata of a given model id in JSON format """

    _url = root_biomodels + "api/model/" + _model_id
    old_md = requests.get(_url, headers=headers, timeout=timeout,
                          params=params,
                          allow_redirects=True)
    _old_metadata = old_md.json()
    return _old_metadata


def get_new_metadata(_old_metadata):
    """ Populate the new metadata from the old metadata """

    metadata = {"submissionId": _old_metadata["submissionId"]}
    if "publicationId" in _old_metadata:
        metadata["publicationId"] = _old_metadata["publicationId"]

    for key in ["name", "description"]:
        metadata[key] = _old_metadata[key]
    # metadata["description"] = metadata["description"] + ". Updated: test the recent changes."
    metadata["readme_submission"] = "Updated the model revision via REST API: added an image as the additional file."
    # metadata["other_info"] = "Dynamic Modelling"
    
    if "modellingApproach" in _old_metadata and _old_metadata["modellingApproach"] is not None:
        metadata["modelling_approach"] = _old_metadata["modellingApproach"]["name"]
    elif "modelling_approach" in _old_metadata and _old_metadata["modelling_approach"] is not None:
        metadata["modelling_approach"] = _old_metadata["modelling_approach"]
    # metadata["modelling_approach"] = "Deep Learning"

    metadata["isMetadataSubmission"] = False

    metadata["isAmend"] = True

    metadata["comment"] = "Added the manuscript and corrected the annotations."

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
    _files = []
    for _root, _dirs, _files in os.walk(final_dir + _model_id):
        new_files.extend(_files)
    corrected_filenames = {}
    for filename in _files:
        uploaded_files = {"file": open(final_dir + _model_id + "/" + filename, "rb")}
        _url = file_server + "services/upload"
        ret = requests.post(_url, headers=_headers, files=uploaded_files, timeout=timeout)
        ret.raise_for_status()
        corrected_filenames[filename] = ret.json()["after_uploaded_filename"]
    update_model_filenames(corrected_filenames, metadata)
    ret = requests.post(root_biomodels + "api/submission/update",
                        headers=_headers, params=params, json=metadata)
    ret.raise_for_status()
    print(json.dumps(ret.json()))


dirs = []
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
