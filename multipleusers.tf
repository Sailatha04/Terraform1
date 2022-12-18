provider "aws" {
region = "ap-northeast-2"
access_key = "AKIA5L4DBPSID5BVOEVW"
secret_key = "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"
}

resource "aws_instance" "multipleinstances" {
ami = "ami-0eddbd81024d3fbdd"
instance_type = "t2.micro"
count = length(var.abc)
name = var.abc[count.index]
}

output "printing_the_instances" {
value = [for name in var.abc : name]
}

variable "abc" {
description = "creating multiple users"
type = list(string)
default = ["trinst4","trinst5","trinst6"]
}
