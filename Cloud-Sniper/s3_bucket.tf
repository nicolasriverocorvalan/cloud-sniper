resource "aws_s3_bucket" "s3-bucket-cloud-sniper" {
  bucket = "${var.bucket_name}"
  acl    = "private"
}