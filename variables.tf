variable "aws_region" {
  type        = string
  description = "variable for aws region in which resources are created"
}

variable "bucket_name" {
  type        = string
  description = "variable for s3 bucket name"
  default     = "demo-bucket"
}

variable "sns_topic_name" {
  type        = string
  description = "variable for sns topic"
  default     = "s3-event-notification-topic"
}

variable "email_address" {
  type        = string
  description = "variable for email address to receive message from sns"
}

variable "filter_prefix" {
  type        = string
  description = "variable for filter prefix on which the s3 event notification has to be added"
}

variable "filter_suffix" {
  type        = string
  description = "variable for filter suffix for the s3 event notification has to be added"
  default     = null
}