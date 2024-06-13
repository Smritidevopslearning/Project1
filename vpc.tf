resource "aws_vpc" "exercise" {
  cidr_block           = "10.0.0.0/16"
  instance_tenancy     = "default"
  enable_dns_support   = "true"
  enable_dns_hostnames = "true"
  tags = {
    Name = "exercise"
  }
}
resource "aws_subnet" "exercise-pub1" {
  vpc_id                  = aws_vpc.exercise.id
  cidr_block              = "10.0.1.0/24"
  map_public_ip_on_launch = "true"
  availability_zone       = var.ZONE1

}

resource "aws_subnet" "exercise-priv1" {
  vpc_id                  = aws_vpc.exercise.id
  cidr_block              = "10.0.2.0/24"
  map_public_ip_on_launch = "true"
  availability_zone       = var.ZONE1

}