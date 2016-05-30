resource "aws_s3_bucket" "s3_bucket" {
  bucket = "${var.bucket}"
  acl = "${var.acl}"
  policy = <<EOF
{
	"Version": "2012-10-17",
	"Statement": [
		{
			"Sid": "ELB PutObject to S3 Bucket",
			"Effect": "Allow",
			"Principal": {
				"AWS": "*"
			},
			"Action": "s3:PutObject",
			"Resource": "arn:aws:s3:::${var.bucket}/*"
		}
	]	
}
EOF
  tags {
    Name = "${var.bucket}"
    Owner = "${var.owner}"
  }
}