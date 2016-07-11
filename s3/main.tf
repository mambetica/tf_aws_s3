resource "aws_s3_bucket" "s3_bucket" {
  bucket = "${var.bucket}"
  acl = "${var.acl}"
  force_destroy = "${var.force_destroy}"
  versioning {
    enabled = "${var.versioning}"
  }
  policy = "${template_file.s3_policy.rendered}"
#  "${template_file.s3_lifecycle_rule.rendered}"
  tags {
    Name = "${var.bucket}"
    Owner = "${var.owner}"
  }
  logging {
    target_bucket = "${var.logging_target_bucket}"
    target_prefix = "${var.logging_target_prefix}"
  }
}

resource "template_file" "s3_policy" {
  template = "${file("${var.policy_file}")}"
  lifecycle {
    create_before_destroy = true
  }
}

#resource "template_file" "s3_lifecycle_rule" {
#  template = "${file("${var.lifecycle_rule_file}")}"
#  lifecycle {
#    create_before_destroy = true
#  }
#}