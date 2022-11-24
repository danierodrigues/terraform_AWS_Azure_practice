variable "aws_region" {
  description = "The AWS region to create the VPC in."
  default     = "us-east-1"
}

variable "vpc-cidr" {
  type    = string
  default = "172.168.0.0/16"
}

variable "pubsubcidr" {
  type    = string
  default = "172.168.0.0/24"
}

variable "prisubcidr" {
  type    = string
  default = "172.168.1.0/24"
}


variable "network_interface_id" {
  type    = string
  default = "network_id_from_aws"
}

variable "ami" {
  type    = string
  default = "ami-0b0dcb5067f052a63"
}

variable "instance_type" {
  type    = string
  default = "t2.micro"
}