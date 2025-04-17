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
import uuid
import requests

if len(sys.argv) <= 1:
    print("Please specify a server. Otherwise, we use the local server.")
    SERVER = "local"
else:
    SERVER = sys.argv[1]
if not SERVER:
    print("Please specify a server. Otherwise, we use the local server.")
# hardcode server var here
if not SERVER:
    SERVER = "local"
PRJ_ROOT = "/Users/tnguyen/ownCloud/EBI/biomodels/api-submission"
if "local" == SERVER:
    CRED_FILEPATH = "credentials/local-khang.json"
    FILE_SERVER = "http://localhost:7001/biomodels/"
    MODEL_DIR = PRJ_ROOT + "/models/wwwlocal/"
    MASTERS_FILEPATH = PRJ_ROOT + "/all_masters.json"
    BM_URL = "http://localhost:8080/biomodels/"
elif "dev" == SERVER:
    CRED_FILEPATH = "credentials/wwwdev-khang.json"
    FILE_SERVER = "https://wwwdev.ebi.ac.uk/biomodels/"
    MODEL_DIR = PRJ_ROOT + "/models/wwwdev/"
    MASTERS_FILEPATH = PRJ_ROOT + "/all_masters.json"
    BM_URL = "https://wwwdev.ebi.ac.uk/biomodels/"
else:
    CRED_FILEPATH = "credentials/www-tnguyen.json"
    MODEL_DIR = r"/Users/tnguyen/ownCloud/EBI/biomodels/temp-biomodels/final/"
    MASTERS_FILEPATH = PRJ_ROOT + "/all_masters.json"
    BM_URL = "https://www.ebi.ac.uk/biomodels/"
    FILE_SERVER = "https://www.ebi.ac.uk/biomodels/"


with open(CRED_FILEPATH, "r", encoding="utf-8") as file:
    credentials = json.load(file)
with open(MASTERS_FILEPATH, "r", encoding="utf-8") as file:
    masters = json.load(file)
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
    for m_file in all_model_files:
        if m_file["name"] in updated_filenames:
            m_file["name"] = updated_filenames[m_file["name"]]

def get_old_metadata(_model_id):
    """ Get the old/current metadata of a given model id in JSON format """

    _url = BM_URL + "api/model/" + _model_id
    old_md = requests.get(_url, headers=headers, timeout=timeout,
                          params=params,
                          allow_redirects=True)
    _old_metadata = old_md.json()
    return _old_metadata


def create_new_submission():
    """
    Create a new simple submission. Below is a simple submission without
    publication details
    """
    metadata = {
        "name": "TNguyen2025 - My ODE model",
        "description": "A sample ODE model",
        "readme_submission": "\
    Updated the model via REST API: added an image as the additional file.",
        "modelling_approach": "Ordinary differential equation model",
        "isMetadataSubmission": False, "isAmend": True,
        "comment": "Submitted my sample model.",
        "contributorRole": "Curator",
        "format": {"name": "SBML", "identifier": "SBML", "version": "L3V2"},
        "files": {
            "main": [{
                "name": "toy_sbml_model.xml",
                "description": "SBML L3V2",
            }],
            "additional": []
        }
    }
    return metadata


def get_new_metadata(_old_metadata = None):
    """ Populate the new metadata from the old metadata """
    if _old_metadata is None:
        return create_new_submission()
    metadata = {"submissionId": _old_metadata["submissionId"]}
    if "publicationId" in _old_metadata:
        metadata["publicationId"] = _old_metadata["publicationId"]

    for key in ["name", "description"]:
        metadata[key] = _old_metadata[key]
    # metadata["description"] = metadata["description"] + ". Added the recent
    # changes."
    metadata["readme_submission"] = "\
    Updated the model via REST API: added an image as the additional file."
    # metadata["other_info"] = "Dynamic Modelling"

    if ("modellingApproach" in _old_metadata
            and _old_metadata["modellingApproach"] is not None):
        metadata["modelling_approach"] = _old_metadata["modellingApproach"]["name"]
    elif ("modelling_approach" in _old_metadata
          and _old_metadata["modelling_approach"] is not None):
        metadata["modelling_approach"] = _old_metadata["modelling_approach"]
    metadata["modelling_approach"] = "Ordinary differential equation model"

    metadata["isMetadataSubmission"] = False

    metadata["isAmend"] = True

    metadata["comment"] = "Corrected the modelling approach."

    metadata["files"] = {"main": _old_metadata["files"]["main"], "additional": []}
    if "additional" in _old_metadata["files"]:
        metadata["files"]["additional"] = _old_metadata["files"]["additional"]
    # metadata["files"]["additional"].append({
    #     "name": "1-s2.0-S2211124722016138-main.pdf",
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

    # Add contributor role: https://www.ebi.ac.uk/biomodels/api/contributor/role
    metadata["contributorRole"] = "Curator"
    return metadata


def update_model(_model_id, metadata):
    """ Update the model given in _model_id with metadata """

    folder = str(uuid.uuid4())
    _headers = headers
    _headers["SubmissionFolder"] = folder
    new_files = []
    _files = []
    for _root, _dirs, _files in os.walk(MODEL_DIR + _model_id):
        new_files.extend(_files)
    corrected_filenames = {}
    for filename in _files:
        with open(MODEL_DIR + _model_id + "/" + filename, "rb") as _file:
            uploaded_files = {"file": _file}
            _url = FILE_SERVER + "services/upload"
            ret = requests.post(_url, headers=_headers, files=uploaded_files,
                                timeout=timeout)
        ret.raise_for_status()
        corrected_filenames[filename] = ret.json()["after_uploaded_filename"]
    if _model_id != "new_submission":
        update_model_filenames(corrected_filenames, metadata)
    _url = BM_URL + "api/submission/update"
    if "submissionId" not in metadata:
        _url = BM_URL + "api/submission/create"
    ret = requests.post(_url, headers=_headers, params=params,
                        json=metadata, timeout=timeout)
    ret.raise_for_status()
    return ret.json()


def do_update_model(m_id = None):
    """ Do update the given model """
    if m_id is None:
        new_mt = get_new_metadata()
        m_id = "new_submission"
    else:
        old_mt = get_old_metadata(m_id)
        new_mt = get_new_metadata(old_mt)
    result = update_model(m_id, new_mt)
    print(json.dumps(result, indent=2))


# dirs = []
# for root, dirs, files in os.walk(MODEL_DIR):
#     break
# print(dirs)


def parse_args():
    """ Parse the command line arguments """
    if len(sys.argv) < 3:
        print("Usage: python update_biomodels.py <env> <MODEL_ID> where "
              "<env>: prod|dev|local")
        m_id = None
        if len(sys.argv) == 2:
            _env = sys.argv[1]
        else:
            _env = "local"
    else:
        _env = sys.argv[1]
        m_id = sys.argv[2]

    return _env, m_id


if __name__ == "__main__":
    env, model_id = parse_args()
    if not model_id:
        print(f"No model id supplied - create a new model in the system {env}")
        do_update_model()
    else:
        print(f"update the new model {model_id} in the system {env}")
        do_update_model(model_id)
