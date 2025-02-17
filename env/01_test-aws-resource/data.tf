data "aws_vpc" "example_vpc" {
  id = var.vpc_id
}

data "aws_subnet" "example_subnet" {
  id = var.subnet_id
}

data "aws_security_group" "example_sg" {
  id = var.security_group_id
}
