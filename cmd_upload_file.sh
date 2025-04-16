#!/usr/bin/env bash

ACCESS_TOKEN=$(echo $ACCESS_TOKEN_DEV_TUNG)
WWW=wwwdev
#WWW=www

# Upload the model files
SUBMISSION_FOLDER=$(python3 -c "import uuid; print(str(uuid.uuid4()))")
echo $SUBMISSION_FOLDER

curl -X POST \
  -H "SubmissionFolder: $SUBMISSION_FOLDER" \
  -H "Authorization: Bearer $ACCESS_TOKEN" \
  -F file=@files/Adlung2021_model_jakstat_pa.xml \
  https://$WWW.ebi.ac.uk/biomodels/services/upload
