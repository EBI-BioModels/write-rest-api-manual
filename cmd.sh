# local tokens
ACCESS_TOKEN=$ACCESS_TOKEN_LOCAL_ADMIN

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
  http://localhost:7000/biomodels/services/download/upload | jq
done

echo "CREATING A NEW MODEL OR UPDATING AN EXISTING MODEL"
curl -s -X POST \
  -H "Authorization: Bearer $ACCESS_TOKEN" \
  -H "SubmissionFolder: $SUBMISSION_FOLDER" \
  -H "Content-Type: application/json" \
  --data-binary @submission-metadata.json \
  http://localhost:8080/biomodels/api/submission/create\?format\=json | jq

