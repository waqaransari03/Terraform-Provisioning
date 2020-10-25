variable "aws_access_key_id" {}
variable "aws_secret_access_key" {}
variable "aws_session_token" {}
variable "AWS_REGION" {
	default = "us-east-1"
}
variable "AMIS" {
	type = map
	default = {
		us-east-1 = "ami-0ea142bd244023692"
		us-east-2= "ami-0ea142bd244023692"
		us-west-2 = "ami-0ea142bd244023692"
	}	
}

variable "instance_username" {
	default = "ubuntu"
}

variable "PATH_TO_PUBLIC_KEY" {
	default = "mykey.pub"
}

variable "PATH_TO_PRIVATE_KEY" {
	default = "mykey"
}