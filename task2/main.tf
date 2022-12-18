resource "aws_instance" "taskday2" {
ami = var.ami_id
instance_type = var.inst_id
tags = {
Name = var.inst_name
}
}

resource "aws_iam_user" "user1" {
name = var.newuser
}

resource "aws_iam_group" "group1" {
name = var.newgroup
}

