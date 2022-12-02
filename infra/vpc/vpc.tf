provider "aws" {
  region = var.region
}


resource "aws_vpc" "sweet-home-vpc" {
  cidr_block           = var.sw_vpc_cidr
  enable_dns_hostnames = true

  tags = {
    Name = "sweethome-VPC"
  }
}

resource "aws_subnet" "sw-pub-sub1-ecs-cidr" {
  cidr_block        = var.sw_pub_sub1_ecs_cidr
  vpc_id            = aws_vpc.sweet-home-vpc.id
  availability_zone = "${var.region}a"

  tags = {
    Name = "sw-Public-Subnet-1-ecs"
  }
}


resource "aws_subnet" "sw-priv-sub1-ecs-cidr" {
  cidr_block        = var.sw_priv_sub1_ecs_cidr
  vpc_id            = aws_vpc.sweet-home-vpc.id
  availability_zone = "${var.region}a"

  tags = {
    Name = "sw-Public-Subnet-1-ecs"
  }
}


# resource "aws_route_table" "sw-public-route-table" {
#   vpc_id = aws_vpc.sweet-home-vpc.id
#   tags = {
#     Name = "Public-Route-Table"
#   }
# }

# resource "aws_route_table" "sw-private-route-table" {
#   vpc_id = aws_vpc.sweet-home-vpc.id
#   tags = {
#     Name = "Private-Route-Table"
#   }
# }
