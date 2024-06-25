# -*- coding: utf-8 -*-
"""
Created on Wed Jun 12 16:14:37 2024

@author: Lucian
"""

import os, sys
import json
import requests
import uuid

final_dir = "final/"
masters_filename = "all_masters.json"
root_biomodels = "https://wwwdev.ebi.ac.uk/biomodels/"

AUTH_FILE = "credentials.json"
BM_UPLOAD = "https://wwwdev.ebi.ac.uk/biomodels/services/upload"
prod_biomodels = "https://wwwdev.ebi.ac.uk/biomodels/"
# root_biomodels = "http://localhost:8080/biomodels/"


def get_new_metadata(biomd_id, old_metadata, master):
    metadata = {}
    for key in ["name", "description", "publication"]:
        metadata[key] = old_metadata[key]
    metadata["submissionId"] = old_metadata["submissionId"]
    metadata["publicationId"] = old_metadata["publicationId"]
    metadata[
        "readme_submission"] = "Curation updates for SED-ML and validity, from the Center for Reproducible Biomedical Modeling, via Lucian Smith."
    metadata["other_info"] = "SBML Model Format"
    metadata["isMetadataSubmission"] = False
    metadata["isAmend"] = False
    metadata["comment"] = "A variety of manual and automated updates for all extant curated biomodels, 2024."
    metadata["format"] = old_metadata["format"]
    metadata["files"] = {"main": [], "additional": []}
    if "modellingApproach" in old_metadata and old_metadata["modellingApproach"] is not None:
        metadata["modelling_approach"] = old_metadata["modellingApproach"]["name"]

    # Now update all the files:
    oldfiles = {}
    for key in ["main", "additional"]:
        for entry in old_metadata["files"][key]:
            oldfiles[entry["name"]] = entry["description"]

    newfiles = []
    for root, dirs, files in os.walk(final_dir + biomd_id):
        newfiles.extend(files)

    deletedFiles = oldfiles
    for filename in newfiles:
        if filename in oldfiles:
            entry = {"name": filename, "description": oldfiles[filename]}
            del deletedFiles[filename]
            # print("Transfering file:", biomd, filename)
        else:
            if "sedml" in filename:
                copasiversion = filename.replace("sedml", "cps")
                if copasiversion in files:
                    entry = {"name": filename,
                             "description": "Newly-generated SED-ML file, based on original COPASI save file."}
                else:
                    entry = {"name": filename, "description": "Auto-generated \"template\" SED-ML file."}
            else:
                if ".ode" in filename:
                    entry = {"name": filename, "description": "Auto-generated ODE file for XPP."}
                else:
                    # LS TODO:  Find old descriptions of renamed files.
                    entry = {"name": filename,
                             "description": "Auto-generated file from Center for Reproducible Biomedical Modeling curation work."}
                # print("Adding file:", biomd, filename)
        if filename == master:
            metadata["files"]["main"].append(entry)
        else:
            metadata["files"]["additional"].append(entry)

    for filename in deletedFiles:
        pass
        # print("Deleting file:", biomd, filename)

    return metadata


def upload_model_files(biomd_id, submission_folder, auth, metadata):
    upload = {
        "Authorization": "Bearer " + auth,
        "SubmissionFolder": submission_folder
    }
    new_files = []
    for root, dirs, files in os.walk(final_dir + biomd_id):
        new_files.extend(files)
    for filename in new_files:
        files = {"file": open(final_dir + biomd_id + "/" + filename, "rb")}
        ret = requests.post(BM_UPLOAD, headers=upload, files=files)
        ret.raise_for_status()
        print(ret.json())
    ret = requests.post(prod_biomodels + "api/submission/update/", headers=upload, json=metadata)
    ret.raise_for_status()
    print(ret)


f = open(AUTH_FILE, "r")
credentials = json.load(f)
f.close()

# get_access_credentials = requests.post(
#     "https://wwwdev.ebi.ac.uk/biomodels/api/login", json = credentials)
# get_access_credentials.raise_for_status()

# access_token = get_access_credentials.json()["access_token"]
# print(access_token)

f = open(masters_filename, "r")
masters = json.load(f)
f.close()

for root, dirs, files in os.walk(final_dir):
    break

sub_ids = {"BIOMD0000000005": "MODEL0000000011", "BIOMD0000000011": "MODEL0000000015"}
for biomd_id in dirs:
    oldmd = requests.get(prod_biomodels + biomd_id, params={"format": "json"})
    oldmetadata = oldmd.json()

    new_metadata = get_new_metadata(biomd_id, oldmd.json(), masters[biomd_id])
    # folder = biomd_id + "-" + str(uuid.uuid4())
    folder = str(uuid.uuid4())
    # new_metadata["submissionId"] = sub_ids[new_metadata["publicationId"]]
    upload_model_files(biomd_id, folder, credentials["access_token"], new_metadata)
