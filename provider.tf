provider "aws" {
	access_key = var.aws_access_key_id
	secret_key = var.aws_secret_access_key
	token = var.aws_session_token
	region = var.AWS_REGION
}

