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


resource "aws_route_table" "sw-public-route-table" {
  vpc_id = aws_vpc.sweet-home-vpc.id
  tags = {
    Name = "sw-public-route-table"
  }
}

resource "aws_route_table" "sw-private-route-table" {
  vpc_id = aws_vpc.sweet-home-vpc.id
  tags = {
    Name = "sw-private-route-table"
  }
}


resource "aws_route_table_association" "sw-public-route-1-association" {
  route_table_id = aws_route_table.sw-public-route-table.id
  subnet_id      = aws_subnet.sw-pub-sub1-ecs-cidr.id
}

resource "aws_route_table_association" "sw-private-route-1-association" {
  route_table_id = aws_route_table.sw-private-route-table.id
  subnet_id      = aws_subnet.sw-priv-sub1-ecs-cidr.id
}


resource "aws_internet_gateway" "sweethome-igw" {
  vpc_id = aws_vpc.sweet-home-vpc.id
  tags = {
    Name = "sweethome-IGW"
  }
}

resource "aws_route" "sw-public-internet-igw-route" {
  route_table_id         = aws_route_table.sw-public-route-table.id
  gateway_id             = aws_internet_gateway.sweethome-igw.id
  destination_cidr_block = "0.0.0.0/0"
}
