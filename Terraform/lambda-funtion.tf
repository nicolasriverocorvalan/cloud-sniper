resource "aws_lambda_function" "lambda_function_cloud_sniper" {
  
  function_name = "lambda_function_cloud_sniper"
  description = "lambda_function_cloud_sniper"

  s3_bucket = "s3-bucket-cloud-sniper"              
  s3_key = "cloud_sniper"

  handler = "cloud_sniper.cloud_sniper"
  memory_size = 1024
  timeout = 300
  role = "${aws_iam_role.role_cloud_sniper.arn}"  
  runtime = "python3.6"

  environment {
    variables {
      DYNAMO_TABLE_CLOUD_SNIPER = "${aws_dynamodb_table.dynamo_table_cloud_sniper.name}"
    }
    variables {
      IPSET_CLOUD_SNIPER_AUTOMATIC_BLOCK_THIS_IPS = "${aws_wafregional_ipset.ipset-cloud-sniper-automatic-block-this-ips.id}"
    }
  }
  
}