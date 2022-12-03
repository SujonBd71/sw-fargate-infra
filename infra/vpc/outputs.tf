output "vpc_id" {
  value = aws_vpc.sweet-home-vpc.id
}

output "vpc_cidr_block" {
  value = aws_vpc.sweet-home-vpc.cidr_block
}

output "sw-pub-sub1-ecs-cidr_id" {
  value = aws_subnet.sw-pub-sub1-ecs-cidr.id
}


output "private-subnet-1_id" {
  value = aws_subnet.sw-priv-sub1-ecs-cidr.id
}


output "private_subnets" {
  value = tolist([aws_subnet.sw-priv-sub1-ecs-cidr.id])
}

output "public_subnets" {
  value = tolist([aws_subnet.sw-pub-sub1-ecs-cidr.id])
}
