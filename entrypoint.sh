#!/bin/sh -l

APP_ID=$1
INPUT_FILE_PATH=$2
INSTANCE_ID=$3

echo "API KEY=$NEXTMV_API_KEY"

curl -sS "https://cloud.nextmv.io/install-cli.txt" | bash -
nextmv configure -a $NEXTMV_API_KEY

nextmv app run -a $APP_ID -i $INPUT_FILE_PATH --instance-id $INSTANCE_ID >> $GITHUB_OUTPUT
