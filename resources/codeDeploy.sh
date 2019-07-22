export AWS_DEFAULT_REGION=eu-west-1
echo $AWS_DEFAULT_REGION
aws deploy push --application-name $CODE_DEPLOY_APPLICATION --s3-location s3://$CODE_DEPLOY_S3_BUCKET/CCMService.zip --source $CODE_DEPLOY_SUBDIRECTORY
aws deploy create-deployment --application-name $CODE_DEPLOY_APPLICATION --deployment-group-name $CODE_DEPLOY_DEPLOYMENT_GROUP --s3-location bucket=$CODE_DEPLOY_S3_BUCKET,key=CCMService.zip,bundleType=zip
aws deploy list-deployments --deployment-group-name $CODE_DEPLOY_DEPLOYMENT_GROUP --application-name $CODE_DEPLOY_APPLICATION --include-only-statuses Created Queued InProgress > deployments.json 
DID=$(cat deployments.json | awk -F=":" -v RS="," '$1~/"deployments"/ {print}')
echo $DID
SUBSTRDID=$(echo $DID | cut -d'"' -f 4) 
echo $SUBSTRDID 
aws deploy wait deployment-successful --deployment-id $SUBSTRDID
rm deployments.json
