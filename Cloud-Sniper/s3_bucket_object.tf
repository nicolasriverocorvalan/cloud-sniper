resource "aws_s3_bucket_object" "s3_bucket_object_cloud_sniper" {
  bucket =  "${aws_s3_bucket.s3-bucket-cloud-sniper.id}"
  key    = "cloud_sniper"
  source = "cloud_sniper.zip"
}