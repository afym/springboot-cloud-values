provider "aws" {
  region = "${var.region}"
}

variable "region" {}
variable "ami" {}
variable "instance_type" {}
variable "key_name" {}
variable "tag_name" {}

resource "aws_instance" "ci_server" {
  ami = "${var.ami}"
  instance_type = "${var.instance_type}"
  key_name = "${var.key_name}"
  user_data = "${file("${path.module}/data/user-data.sh")}"
  vpc_security_group_ids = ["${aws_security_group.ci_server_secutiry.id}"]

  tags {
    Name = "${var.tag_name}"
  }
}

resource "aws_security_group" "ci_server_secutiry" {
  name        = "${var.tag_name}_secutiry"

  ingress {
    from_port   = 8080
    to_port     = 8080
    protocol    = "tcp"
    cidr_blocks = ["0.0.0.0/0"]
  }
  # just for test purposes !! (insecure)
  ingress {
    from_port   = 22
    to_port     = 22
    protocol    = "tcp"
    cidr_blocks = ["0.0.0.0/0"]
  }

  egress {
    from_port       = 0
    to_port         = 0
    protocol        = "-1"
    cidr_blocks     = ["0.0.0.0/0"]
  }

  tags {
    Name        = "${var.tag_name}_security"
  }
}