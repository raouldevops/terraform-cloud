provider "aws" {
  region = "us-east-1"
}

resource "aws_instance" "tf-cloud-ec2" {
  ami = "ami-067d1e60475437da2"
  instance_type = "t2.micro"
  key_name = "ec2-key-pair"
#  tags = {
#     Name = "ec2-tf-cloud"
#   }
  root_block_device {
    delete_on_termination = true
  }
}
