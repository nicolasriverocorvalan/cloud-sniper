resource "aws_iam_role_policy" "iam_role_policy_kinesis_waf" {
	name = "iam_role_policy_kinesis_waf"
	role = "${aws_iam_role.iam_role_firehose_waf.id}"

policy = <<EOF
{
	"Version": "2012-10-17",
	"Statement": [
		{
			"Action": [
				"ec2:Describe*",
				"firehose:DeleteDeliveryStream",
				"firehose:PutRecord",
				"firehose:PutRecordBatch",
				"firehose:UpdateDestination",
				"s3:*"
			],
			"Effect": "Allow",
			"Resource": "*"
		}
	]
}
EOF
}