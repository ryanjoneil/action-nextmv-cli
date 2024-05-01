#!/bin/sh -l

APP_ID=$1
INPUT_FILE_PATH=$2
INSTANCE_ID=$3

nextmv app run -a $APP_ID -i $INPUT_FILE_PATH --instance-id $INSTANCE_ID >> $GITHUB_OUTPUT
