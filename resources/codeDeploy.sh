export AWS_DEFAULT_REGION=eu-west-1
echo $AWS_DEFAULT_REGION
#aws deploy list-deployments --deployment-group-name CCMServiceDevelopment --application-name CCMServiceDevelopment --include-only-statuses Created Queued InProgress > deployments.json 
#DID=$(cat deployments.json | awk -F=":" -v RS="," '$1~/"deployments"/ {print}')
#echo $DID
#SUBSTRDID=$(echo $DID | cut -d'"' -f 4) 
#echo $SUBSTRDID 
#aws deploy wait deployment-successful --deployment-id $SUBSTRDID
#rm deployments.json
