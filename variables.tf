variable "environment" {
  description = "An environment qualifier for the resources this module creates, to support a Terraform SDLC."
  type        = string
}

variable "name_prefix" {
  description = "A prefix for the Data Stream and Consumer names"
  type        = string
  default     = ""
}

variable "shard_count" {
  description = "The number of shards that the stream will use."
  type        = number
  default     = 1
}

variable "retention_period" {
  description = "Length of time data records are accessible after they are added to the stream (in hours). Range: 24 - 8760"
  type        = number
  default     = 24
}

variable "shard_level_metrics" {
  description = "A list of shard-level CloudWatch metrics which can be enabled for the stream."
  type        = list(string)
  default     = []
}

variable "enforce_consumer_deletion" {
  description = "A boolean that indicates all registered consumers should be deregistered from the stream so that the stream can be destroyed without error."
  type        = bool
  default     = false
}

variable "encryption_type" {
  description = "The encryption type to use for the stream. Valid values: KMS, NONE"
  type        = string
  default     = "NONE"
}

variable "kms_key_id" {
  description = "The ID of the KMS key to use for encryption. Required if encryption_type is set to KMS."
  type        = string
  default     = ""
}

variable "tags" {
  description = "Additional tags to apply to resources."
  type        = map(string)
  default     = {}
}

