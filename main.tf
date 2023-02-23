provider "aws" {
  region    = "${var.aws_region}"
}

resource "aws_elasticache_replication_group" "elasticache-cluster" {
  availability_zones            	= ["${var.aws_region}a","${var.aws_region}b"]
  replication_group_id          	= "bns-tf-${var.environment}-rep-group"
  replication_group_description 	= "Bunnyshell ${var.environment} replication group"
  node_type                     	= "${var.node_type}"
  number_cache_clusters         	= "${var.node_count}"
  parameter_group_name          	= "default.redis3.2"
  port                          	= 6379
}