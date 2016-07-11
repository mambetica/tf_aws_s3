variable "bucket" {
  description = "The name of the bucket"
}
variable "acl" {
  description = "The canned ACL to apply. Defaults to private"
  default = "private"
}
variable "owner" {
  description = "Owner tag added to resource to identify who build the resource"
  default = "Terraform"
}
variable "force_destroy" {
  description = "A boolean that indicates all objects should be deleted from the bucket so that the bucket can be destroyed without error. These objects are not recoverable."
  default = false
}
variable "versioning" {
  description = "Versioning enabled, or not. Once you version-enable a bucket, it can never return to an unversioned state. You can, however, suspend versioning on that bucket."
  default = false
}
variable "policy_file" {
  description = "Policy file to provide the bucket policy"
  default = ""
}
variable "lifecycle_rule_file" {
  description = "Lifecycle rule file to provide the lifecycle rules for the bucket"
  default = ""
}
variable "logging_target_bucket" {
  description = "The name of the bucket that will receive the log objects"
  default = ""
}
variable "logging_target_prefix" {
  description = "To specify a key prefix for log objects"
  default = ""
}