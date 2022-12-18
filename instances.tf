provider "aws" {
region = "ap-northeast-2"
access_key = ""
secret_key = ""
}

resource "aws_instance" "myinstances" {
ami = var.ami
instance_type = var.inst_type
count = 2
tags = {
Name = "myinstances-${count.index}"
}
}

variable "ami" {
default = "ami-035233c9da2fabf52"
}

variable "inst_type" {
default = "t2.micro"
}


