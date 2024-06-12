# REST API TO CREATE OR UPDATE SUBMISSIONS IN BIOMODELS
In this repo, the directories and files are explained as below:

* models4test: includes all model directories and BASH scripts
* files: includes all files to be uploaded
* cmd.sh: bash script to run the create/update pipeline
* submission-metadata.json

Notes: The names of the files and directories are not necessary identical to the ones in this repo but you should make sure that its references in the bash script are correspondingly matched.

## cmd.sh script
Please comment or uncomment the variables `ACCESS_TOKEN`, `PREFIX_DOWNUP_SVR`, and `BM_SVR` to your proper values.

Please contact us to support to gain an `ACCESS_TOKEN` for your work.

### Create a new submission
The REST API endpoint is `https://$BM_SVR.ebi.ac.uk/biomodels/services/submission/create`.

### Update an existing submission
The REST API endpoint is  `https://$BM_SVR.ebi.ac.uk/biomodels/services/submission/update`.


## uploading files
Update the variable `FILES_DIR` in the `cmd.sh` script to the path where your model files are located. Both absolute and relative path perfectly work. <strong>Make sure the names of all files match with the names defined in the `submission-metadata.json` file, otherwise the process will definitely fail</strong>. 

## input file: submission-metadata.json
A copy of the input file like `submission-metadata.json` is downloaded from BioModels. When viewing an individual model in BioModels in JSON format, we can hit, for example, `https://wwwdev.ebi.ac.uk/biomodels/MODEL1703310000?format=json` in on the dev instance.

Then, appending some other properties to that JSON file. These properties are explained below.

- "type": "PubMed ID"|"DOI": `required` in the `publication` section.
- "accession": "34380040": `required` in the `publication` section.
- "isAmend": true|false: `required` for UPDATE.
- "comment": "A free text describing what you have modified your model.": `required` for UPDATE.
- "submissionId" : "MODEL2406050001": `required` for UPDATE.
- "modelling_approach": "ordinary differential equation model": `required`.
- "readme_submission": "This is the first sumbmission done via API": `optional`.
- "other_info": "SBML Model Format": `optional`.
- "isMetadataSubmission": true|false: `optional`.

The other fields are explainable as what their names are.