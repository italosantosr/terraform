resource "aws_vpc" "VPC_Terraform" {
  cidr_block           = "10.0.0.0/16"
  enable_dns_support   = true
  enable_dns_hostnames = true

  tags {
    label = "VPC_Terraform"
  }
}

resource "aws_subnet" "subnet_a" {
  vpc_id                  = "${aws_vpc.vpc.id}"
  cidr_block              = "${var.private_subnet_cidr}"
  availability_zone       = "${var.aws_region}"
  map_public_ip_on_launch = false

  tags {
    Name = "subnet_a"
  }
}
