# this file is used for variable initializations,
#can over ride defaults defined in var.tf file


# VPC variables for production
sw_vpc_cidr = "10.0.0.0/16"

sw_pub_sub1_ecs_cidr = "10.0.1.0/24"
sw_pub_sub2_ecs_cidr = "10.0.2.0/24"
sw_pub_sub3_ecs_cidr = "10.0.5.0/24"

sw_priv_sub1_ecs_cidr = "10.0.3.0/24"
sw_priv_sub2_ecs_cidr = "10.0.4.0/24"
sw_priv_sub3_ecs_cidr = "10.0.6.0/24"