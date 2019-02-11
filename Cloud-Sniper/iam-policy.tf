data "aws_iam_policy_document" "iam_policy_document_cloud_sniper" {
	
	statement {

		effect = "Allow"

		actions = [
			"waf-regional:GetIPSet",
			"waf-regional:UpdateIPSet",
			"waf-regional:GetChangeToken",
		]

		resources = [      
			"*",
		]
	}

	statement {

		effect = "Allow"

		actions = [
			"kms:*",
		]

		resources = [      
			"*",
		]
	}

	statement {

		effect = "Allow"

		actions = [
			"ec2:Describe*",
			"ec2:*NetworkAcl*",      
		]

		resources = [
			"*",
		]
	}

	statement {

		effect = "Allow"

		actions = [
			"logs:CreateLogGroup",
			"logs:CreateLogStream",
			"logs:PutLogEvents",    
		]

		resources = [
			"arn:aws:logs:*:*:*",
		]
	}

	statement {

		effect = "Allow"

		actions = [
			"dynamodb:GetItem",
			"dynamodb:PutItem",
			"dynamodb:Query",
			"dynamodb:Scan",
			"dynamodb:DeleteItem",    
		]

		resources = [      
			"*",                                                                              
		]
	}
	
	statement {

		effect = "Allow"

		actions = [
			"sqs:*",  
		]

		resources = [      
			"*",                                                                              
		]
	}

}

resource "aws_iam_policy" "iam_policy_cloud_sniper" {
	name        = "iam_policy_cloud_sniper"
	path        = "/"
	description = "iam_policy_cloud_sniper"
	policy = "${data.aws_iam_policy_document.iam_policy_document_cloud_sniper.json}" 
															
}