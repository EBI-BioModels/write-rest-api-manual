# local tokens
ACCESS_TOKEN=$ACCESS_TOKEN_LOCAL_ADMIN

PREFIX_DOWNUP_SVR="http://localhost:7000" # local instance
# PREFIX_DOWNUP_SVR="https://wwwdev.ebi.ac.uk" # dev instance
# PREFIX_DOWNUP_SVR="https://www.ebi.ac.uk" # prod instance

UPLOAD_SERVER_URL="$PREFIX_DOWNUP_SVR/biomodels/services/upload"

BM_SVR="http://localhost:8080/biomodels" # local instance
# BM_SVR="https://wwwdev.ebi.ac.uk/biomodels" # dev instance
# BM_SVR="https://www.ebi.ac.uk/biomodels" # prod instance
BM_SERVER_CREATE_SUBMISSION_URL="$BM_SVR/submission/create"
BM_SERVER_UPDATE_SUBMISSION_URL="$BM_SVR/submission/update"

echo "SUBMITTING A MODEL"
SUBMISSION_FOLDER=$(python3 -c "import uuid; print(str(uuid.uuid4()))")
echo "$SUBMISSION_FOLDER" 

echo "UPLOADING FILES"
FILES_DIR=~/Downloads/BioModels/MODEL2103080001
for file in $FILES_DIR/*; do
echo "Uploading $file"
curl -s -X POST \
  -H "SubmissionFolder: $SUBMISSION_FOLDER" \
  -H "Authorization: Bearer $ACCESS_TOKEN" \
  -F file=@"$file" \
  $UPLOAD_SERVER_URL | jq
done

echo "CREATING A NEW MODEL OR UPDATING AN EXISTING MODEL"
curl -s -X POST \
  -H "Authorization: Bearer $ACCESS_TOKEN" \
  -H "SubmissionFolder: $SUBMISSION_FOLDER" \
  -H "Content-Type: application/json" \
  --data-binary @submission-metadata.json \
  $BM_SERVER_UPDATE_SUBMISSION_URL\?format\=json | jq

