# Fill out the empty fields under --data before executing
curl --header "Content-Type: application/json" \
  --request POST \
  --data '{"didMaps": [{"applicationId": "AlfrescoIntegration","didInfo": {"boxPub": "","did": "","pushToken": ""},"userId": ""} ]}' \
  https://mapping.did.alfresco.dev.sphereon.com/didmaps

