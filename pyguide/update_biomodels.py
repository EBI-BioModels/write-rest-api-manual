# -*- coding: utf-8 -*-
"""
Created on Wed Jun 12 16:14:37 2024

@author: Lucian
"""

import os
import json
import requests
import uuid

final_dir = r"C:\Users\Lucian\Desktop\temp-biomodels\final/"
final_dir = r"/Users/tnguyen/ownCloud/EBI/biomodels/temp-biomodels/final/"
final_dir = r"/Users/tnguyen/ownCloud/EBI/biomodels/temp-biomodels/final/"
masters_filename = r"C:\Users\Lucian\Desktop\temp-biomodels\all_masters.json"
masters_filename = r"/Users/tnguyen/ownCloud/EBI/biomodels/api-submission/pyguide/all_masters.json"
masters_filename = r"/Users/tnguyen/ownCloud/EBI/biomodels/api-submission/pyguide/all_masters.json"
root_biomodels = "https://wwwdev.ebi.ac.uk/biomodels/"


def getNewMetadata(biomd, oldmetadata, master):
    metadata = {}
    for key in ["name", "description", "publication"]:
        metadata[key] = oldmetadata[key]
    metadata["readme_submission"] = "Curation updates for SED-ML and validity, from the Center for Reproducible Biomedical Modeling, via Lucian Smith."
    metadata["other_info"] = "SBML Model Format"
    metadata["isMetadataSubmission"] = False
    metadata["isAmend"] = False
    metadata["comment"] = "A variety of manual and automated updates for all extant curated biomodels, 2024."
    metadata["files"] = {"main": None, "additional": []}
    
    # Now update all the files:
    oldfiles = {}
    for key in ["main", "additional"]:
        for entry in oldmetadata["files"][key]:
            oldfiles[entry["name"]] = entry["description"]
    
    newfiles = []
    for root, dirs, files in os.walk(final_dir + biomd):
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
                    entry = {"name": filename, "description": "Newly-generated SED-ML file, based on original COPASI save file."}
                else:
                    entry = {"name": filename, "description": "Auto-generated \"template\" SED-ML file."}                    
            else:
                if ".ode" in filename:
                    entry = {"name": filename, "description": "Auto-generated ODE file for XPP."}
                else:                    
                    # LS TODO:  Find old descriptions of renamed files.
                    entry = {"name": filename, "description": "Auto-generated file from Center for Reproducible Biomedical Modeling curation work."}
                # print("Adding file:", biomd, filename)
        if filename == master:
            metadata["files"]["main"] = entry
        else:
            metadata["files"]["additional"].append(entry)

    for filename in deletedFiles:
        pass 
        #print("Deleting file:", biomd, filename)
        
    return metadata


def uploadBiomodelFilesTo(biomd, folder, auth, metadata):
    upload = {"Authorization": "Bearer " + auth,
              "SubmissionFolder": folder,
              }
    newfiles = []
    for root, dirs, files in os.walk(final_dir + biomd):
        newfiles.extend(files)
    for filename in files:
        files = {"file": open(final_dir + biomd + "/" + filename,"rb")}
        ret = requests.post(root_biomodels + "services/upload", headers=upload, files=files)
        ret.raise_for_status()
        # print(ret.json())
    ret = requests.post(root_biomodels + "api/submission/update/", headers=upload, json=json.dumps(metadata))
    ret.raise_for_status()
    # print(ret)
        
    

f = open("credentials.json", "r")
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

for biomd in dirs:
    if biomd != "BIOMD0000000001":
        pass
    else: 
        oldmd = requests.get(root_biomodels + biomd, params={"format": "json"})
        oldmetadata = oldmd.json()
        # print(json.dumps(oldmetadata))
        print(oldmetadata["history"])
        print(json.dumps(oldmetadata["history"]))

        newmetadata = getNewMetadata(biomd, oldmd.json(), masters[biomd])
        # print(newmetadata)
        # folder = biomd + "-" + str(uuid.uuid4())
        folder = str(uuid.uuid4())
        # uploadBiomodelFilesTo(biomd, folder, credentials["access_token"], newmetadata)
