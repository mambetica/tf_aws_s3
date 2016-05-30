variable bucket {
  description = "The name of the bucket"
}
variable acl {
  description = "The canned ACL to apply. Defaults to private"
  default = "private"
}
variable "owner" {
  description = "Owner tag added to resource to identify who build the resource"
  default = "Terraform"
}