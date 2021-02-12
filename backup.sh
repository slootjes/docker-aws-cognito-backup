#!/bin/bash

cognito-backup backup-users $POOL_ID --file backup.json

printf -v file '%(%Y-%m-%d)T_users.json' -1

aws s3 cp backup.json s3://$BUCKET_NAME$BUCKET_PATH/$file
