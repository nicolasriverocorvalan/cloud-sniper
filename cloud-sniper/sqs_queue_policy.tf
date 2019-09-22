resource "aws_sqs_queue_policy" "sqs_queue_policy_cloud_sniper" {
  queue_url = "${aws_sqs_queue.sqs_queue_cloud_sniper.id}"

  policy = "${data.aws_iam_policy_document.iam_policy_sqs_queue.json}"
}
