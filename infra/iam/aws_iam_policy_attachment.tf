resource "aws_iam_user_policy_attachment" "deploy-attach" {
  policy_arn = "${aws_iam_policy.deploy.arn}"
  user       = "${aws_iam_user.deploy-user.name}"
}