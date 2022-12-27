# s3-event-notification

This repo is for creating an s3 event notification using terraform

## What is Amazzon S3 Event Notification?

Amazon S3 Event Notifications feature to receive notifications when certain events happen in your S3 bucket. To enable notifications, add a notification configuration that identifies the events that you want Amazon S3 to publish.

For additional information, see the [Configuring S3 Event Notifications section in the Amazon S3 Developer Guide](https://docs.aws.amazon.com/AmazonS3/latest/userguide/NotificationHowTo.html).

## How to use this?

Create terraform.tfvars file with the variables you want to use

| Variable | Required |
| :-- | :--: |
| aws_region | true |
| email_address | true |
| bucket_name | false |
| sns_topic_name | false |
| filter_prefix | true |
| filter_suffix | false |

Commands to use:
- `terraform plan`
- `terraform apply`