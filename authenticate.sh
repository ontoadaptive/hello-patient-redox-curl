# authenticate
TOKEN=""
FILE=token.json

#echo "REDOX_API_KEY: " $REDOX_API_KEY
#echo "REDOX_API_SECRET: " $REDOX_API_SECRET

# clean up
if [ -f $FILE ]; then
    rm $FILE
fi

# call curl and use here document to template request body
curl \
--trace-ascii data.txt \
--output $FILE \
-X POST https://api.redoxengine.com/auth/authenticate \
-H "Content-Type: application/json" \
-d @- << EOF
{
    "apiKey": "$REDOX_API_KEY",
    "secret": "$REDOX_API_SECRET"
}
EOF

# extract bearer token for other Redox scripts
TOKEN=`jq '.accessToken' $FILE`