output "vpc_id" {
  value = aws_vpc.sweet-home-vpc.id
}

output "vpc_cidr_block" {
  value = aws_vpc.sweet-home-vpc.cidr_block
}

output "sw-pub-sub1-ecs-cidr_id" {
  value = aws_subnet.sw-pub-sub1-ecs-cidr.id
}
output "sw-pub-sub2-ecs-cidr_id" {
  value = aws_subnet.sw-pub-sub2-ecs-cidr.id
}

output "sw-pub-sub3-ecs-cidr_id" {
  value = aws_subnet.sw-pub-sub3-ecs-cidr.id
}




# private subnets
output "private-subnet-1_id" {
  value = aws_subnet.sw-priv-sub1-ecs-cidr.id
}
output "private-subnet-2_id" {
  value = aws_subnet.sw-priv-sub2-ecs-cidr.id
}

output "private-subnet-3_id" {
  value = aws_subnet.sw-priv-sub3-ecs-cidr.id
}



output "private_subnets" {
  value = tolist([aws_subnet.sw-priv-sub1-ecs-cidr.id,aws_subnet.sw-priv-sub2-ecs-cidr.id,aws_subnet.sw-priv-sub3-ecs-cidr.id])
}

output "public_subnets" {
  value = tolist([aws_subnet.sw-pub-sub1-ecs-cidr.id, aws_subnet.sw-pub-sub2-ecs-cidr.id, aws_subnet.sw-pub-sub3-ecs-cidr.id])
}
