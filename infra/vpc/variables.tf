variable "region" {
  default     = "us-east-1"
  description = "AWS Region"
}

variable "sw_vpc_cidr" {
  description = "CIDR Block for VPC"
  default="10.0.0.0/16"
}

variable "sw_pub_sub1_ecs_cidr" {
  description = "CIDR Block for Public Subnet 1"
  default="10.0.1.0/24"
}

variable "sw_pub_sub2_ecs_cidr" {
  description = "CIDR Block for Public Subnet 1"
  default="10.0.2.0/24"
}

variable "sw_pub_sub3_ecs_cidr" {
  description = "CIDR Block for Public Subnet 1"
}


variable "sw_priv_sub1_ecs_cidr" {
  description = "CIDR Block for Private Subnet 1"
}

variable "sw_priv_sub2_ecs_cidr" {
  description = "CIDR Block for Private Subnet 1"
}
variable "sw_priv_sub3_ecs_cidr" {
  description = "CIDR Block for Private Subnet 1"
}