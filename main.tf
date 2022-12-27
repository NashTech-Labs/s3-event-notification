resource "aws_sns_topic" "notification_topic" {
  name = var.sns_topic_name

  policy = <<POLICY
{
    "Version":"2012-10-17",
    "Statement":[{
        "Effect": "Allow",
        "Principal": { "Service": "s3.amazonaws.com" },
        "Action": "SNS:Publish",
        "Resource": "arn:aws:sns:*:*:s3-event-notification-topic",
        "Condition":{
            "ArnLike":{"aws:SourceArn":"${aws_s3_bucket.s3_bucket.arn}"}
        }
    }]
}
POLICY
}

resource "aws_sns_topic_subscription" "sns_email_target" {
  topic_arn = aws_sns_topic.notification_topic.arn
  protocol  = "email"
  endpoint  = var.email_address
}

resource "aws_s3_bucket" "s3_bucket" {
  bucket = var.bucket_name
}

resource "aws_s3_bucket_notification" "bucket_notification" {
  bucket = aws_s3_bucket.s3_bucket.id

  topic {
    topic_arn     = aws_sns_topic.notification_topic.arn
    events        = ["s3:ObjectCreated:*"]
    filter_prefix = var.filter_prefix
    filter_suffix = var.filter_suffix == null ? "" : var.filter_suffix
  }
}
