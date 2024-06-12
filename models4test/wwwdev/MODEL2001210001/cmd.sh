# model: https://wwwdev.ebi.ac.uk/biomodels/MODEL2001210001
# access tokens: khang (wwwdev)
ACCESS_TOKEN=$(echo $ACCESS_TOKEN_DEV_KHANG)

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
  https://wwwdev.ebi.ac.uk/biomodels/services/upload | jq
done

echo "UPDATING MODEL"
curl -s -X POST \
  -H "Authorization: Bearer $ACCESS_TOKEN" \
  -H "SubmissionFolder: $SUBMISSION_FOLDER" \
  -H "Content-Type: application/json" \
  --data-binary @model.json \
  https://wwwdev.ebi.ac.uk/biomodels/api/submission/update\?format\=json | jq
