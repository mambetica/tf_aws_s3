resource "aws_s3_bucket" "s3_bucket" {
  bucket = "${var.bucket}"
  acl = "${var.acl}"
  tags {
    Name = "${var.bucket}"
    Owner = "${var.owner}"
  }
}