Terraform AWS S3 Module
===========

A Terraform module to create S3 Buckets within AWS.

Input Variables
---------------

- `bucket` - (Required) The name of the bucket
- `acl` - (Optional) The canned ACL to apply. Defaults to "private"
- `tags` - (Optional) A mapping of tags to assign to the bucket