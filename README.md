[![](https://images.microbadger.com/badges/image/futurevision/aws-cognito-backup.svg)](https://microbadger.com/images/futurevision/aws-cognito-backup "Get your own image badge on microbadger.com")
[![](https://images.microbadger.com/badges/version/futurevision/aws-cognito-backup.svg)](https://microbadger.com/images/futurevision/aws-cognito-backup "Get your own version badge on microbadger.com")

# AWS Cognito Backup

Simple Docker wrapper that created a backup of a Cognito User Pool and uploads it so S3
 
https://github.com/mifi/cognito-backup

## Requirements

- S3 bucket to put backups (_make sure it is properly secured!_)
- Cognito user pool
- IAM user key & secret with correct permissions (see _example_policy.json_)

## Environment Variables

### Mandatory

- AWS_ACCESS_KEY_ID (example: AKIAITFQAYNPMCNFBHTP)
- AWS_SECRET_ACCESS_KEY (example: CzvLpfnKciU3o5sBl40jSI3eqycnmMOOb9npfAZh)
- AWS_REGION (example: eu-west-1)
- POOL_ID (example: eu-west-1_AbCdEfGHi)
- BUCKET_NAME (example: my-brand-cognito-backups)

### Optional

- BUCKET_PATH (example: /AWSCognito)

## Usage

docker run -d -e AWS_ACCESS_KEY_ID=your_key_id -e AWS_SECRET_ACCESS_KEY=your_key_secret -e AWS_REGION=your_region -e POOL_ID=your_cognito_pool_id -e BUCKET_NAME=your_s3_bucket_name -e BUCKET_PATH=optional_bucket_path futurevision/aws-cognito-backup
