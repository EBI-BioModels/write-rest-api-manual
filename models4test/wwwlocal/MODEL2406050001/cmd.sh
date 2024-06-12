# local token: teo account
# model submitted http://localhost:8080/biomodels/MODEL2406070002
ACCESS_TOKEN=$(echo $ACCESS_TOKEN_LOCAL_ADMIN)

echo "SUBMITTING A MODEL"
SUBMISSION_FOLDER=$(python3 -c "import uuid; print(str(uuid.uuid4()))")
echo "$SUBMISSION_FOLDER" 

echo "UPLOADING FILES"
DIR=./files
for file in $DIR/*; do
echo "Uploading $file"
curl -s -X POST \
  -H "SubmissionFolder: $SUBMISSION_FOLDER" \
  -H "Authorization: Bearer $ACCESS_TOKEN" \
  -F file=@"$file" \
  http://localhost:7000/biomodels/services/upload | jq
done

echo "UPDATING MODEL"
curl -s -X POST \
  -H "Authorization: Bearer $ACCESS_TOKEN" \
  -H "SubmissionFolder: $SUBMISSION_FOLDER" \
  -H "Content-Type: application/json" \
  --data-binary @model.json \
  http://localhost:8080/biomodels/api/submission/update\?format\=json | jq
