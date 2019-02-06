resource "aws_s3_bucket" "s3-bucket-cloud-sniper" {
  bucket = "s3-bucket-cloud-sniper"
  acl    = "private"
}