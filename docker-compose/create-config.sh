if [ -f .env ]
then
  export $(cat .env | sed 's/#.*//g' | xargs)
  mkdir -p config
  cp -r ./config-template/* ./config
  grep -rl "{PUBLIC_HOSTNAME}" ./config | xargs sed -i 's@${PUBLIC_HOSTNAME}@'"$PUBLIC_HOSTNAME"'@'
  grep -rl "{DID_TRANSPORTS_HOSTNAME}" ./config | xargs sed -i 's@${DID_TRANSPORTS_HOSTNAME}@'"$DID_TRANSPORTS_HOSTNAME"'@'
  grep -rl "{DID_MAPPING_HOSTNAME}" ./config | xargs sed -i 's@${DID_MAPPING_HOSTNAME}@'"$DID_MAPPING_HOSTNAME"'@'
  grep -rl "{DID_APP_ID}" ./config | xargs sed -i 's@${DID_APP_ID}@'"$DID_APP_ID"'@'
  grep -rl "{DID_AUTH_SECRET}" ./config | xargs sed -i 's@${DID_AUTH_SECRET}@'"$DID_AUTH_SECRET"'@'
  mv ./config/create-mapping-example.sh .
fi
