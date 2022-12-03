# remote state
# remote_state_key = "PROD/infrastructure.tfstate"
# remote_state_bucket = "YOUR_S3_BUCKET"

#local state
local_state-key="vpc/terraform.tfstate"


ecs_domain_name = "sweethomecloud.com"
ecs_cluster_name = "SW-ECS-Cluster"
internet_cidr_block = "0.0.0.0/0"