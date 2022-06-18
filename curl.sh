curl https://api.webflow.com/info \
  -H "Authorization: Bearer REDACTED" \
  -H 'Accept-Version: 1.0.0'


#list all the sites in account
  curl --request GET \
  --url https://api.webflow.com/sites \
  --header 'Authorization: Bearer REDACTED' \
  --header "Accept-Version: 1.0.0"


#publish a site 
curl --request POST \
  --url https://api.webflow.com/sites/REDACTED/publish \
  --header 'Authorization: Bearer REDACTED' \
  --header 'content-type: application/json' \
  --header "Accept-Version: 1.0.0" \
  --data '{
  "domains": [
    "throwawaycode.io"
  ]
}'

#create a webhook
curl --request POST \
  --url https://api.webflow.com/sites/REDACTED/webhooks \
  --header 'Authorization: Bearer REDACTED' \
  --header 'content-type: application/json' \
  --header "Accept-Version: 1.0.0" \
  --data '{
  "triggerType": "site_publish",
  "url": "https://request-bin-mo.herokuapp.com/1qpkffg1",
  "filter": {
    "name": "Site Publish"
  }
}'

#OAuth

curl https://webflow.com/oauth/authorize/?client_id=REDACTED&response_type=code

curl https://api.webflow.com/oauth/access_token \
    -d client_id="REDACTED" \
    -d client_secret="REDACTED" \
    -d code="REDACTED" \
    -d grant_type="authorization_code" \

#get current authorized users
curl --request GET \
  --url https://api.webflow.com/user \
  --header 'Authorization: Bearer REDACTED' \
  --header 'content-type: application/json' \
  --header "Accept-Version: 1.0.0"

#get current authorize info
curl --request GET \
  --url https://api.webflow.com/info \
  --header 'Authorization: Bearer REDACTED' \
  --header 'content-type: application/json' \
  --header "Accept-Version: 1.0.0"