resource "aws_s3_bucket" "s3_bucket" {
  bucket = "${var.bucket}"
  acl = "${var.acl}"
  force_destroy = "${var.force_destroy}"
  versioning {
    enabled = "${var.versioning}"
  }
  policy = "${data.template_file.s3_policy.rendered}"
  tags {
    Name = "${var.bucket}"
    Owner = "${var.owner}"
  }
}

data "template_file" "s3_policy" {
  template = "${file("${var.policy_file}")}"
}