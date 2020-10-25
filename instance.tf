resource "aws_key_pair" "my_pair" {
  key_name = "my_pair"
  public_key = file(var.PATH_TO_PUBLIC_KEY)
}


resource "aws_instance" "abc" {
        ami = lookup(var.AMIS, var.AWS_REGION)
        instance_type = "t2.micro"
        key_name = aws_key_pair.my_pair.key_name 

        provisioner "file" {
        source = "test.sh"
        destination = "/tmp/test.sh"
    }

        provisioner "remote-exec" {
        inline = [
        "chmod +x /tmp/test.sh",
        "sudo /tmp/test.sh"
    ]
  }

       connection {
         host = aws_instance.abc.id
         user = var.instance_username
         private_key = file(var.PATH_TO_PRIVATE_KEY)
    }

}

