output "sns_topic_name" {
  value = aws_sns_topic.topic.name
}

output "sns_topic_arn" {
  value = aws_sns_topic.topic.arn
}

output "bucket_name" {
  value = aws_s3_bucket.s3_bucket
}

output "bucket_arn" {
  value = aws_s3_bucket.s3_bucket.arn
}

output "bucket_id" {
  value = aws_s3_bucket.s3_bucket.id
}

output "bucket_notification_id" {
  value = aws_s3_bucket_notification.bucket_notification.id
}

output "bucket_notification_topic" {
  value = aws_s3_bucket_notification.bucket_notification.topic
}