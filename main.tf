# AWS Provider Documentation: https://registry.terraform.io/providers/hashicorp/aws/latest/docs/resources/kinesis_stream

resource "aws_kinesis_stream" "this" {
  # Required:
  name             = "${var.name_prefix}SymKinesisDataStream${title(var.environment)}"
  shard_count      = var.shard_count

  # Optional:
  retention_period =  var.retention_period
  shard_level_metrics = var.shard_level_metrics
  enforce_consumer_deletion = var.enforce_consumer_deletion
  encryption_type = var.encryption_type
  kms_key_id = var.kms_key_id

  tags = var.tags
}

resource "aws_kinesis_stream_consumer" "this" {
  name       = "${var.name_prefix}SymKinesisDataStreamConsumer${title(var.environment)}"
  stream_arn = aws_kinesis_stream.this.arn
}
