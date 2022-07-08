data "aws_region" "current" {}

output "data_stream_arn" {
  description = "The ARN of the created Kinesis Data Stream"
  value = aws_kinesis_stream.this.arn
}

output "data_stream_name" {
  description = "Name of the created data stream"
  value = aws_kinesis_stream.this.name
}
