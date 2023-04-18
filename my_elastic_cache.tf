resource "aws_elasticache_subnet_group" "chach_subnets" {
  name       = "tf-test-cache-subnet"
  subnet_ids = [module.network.priv_sub_1_id, module.network.priv_sub_2_id]
} 


resource "aws_elasticache_cluster" "elastic" {
  cluster_id           = "elastic"
  engine               = "redis"
  node_type            = var.CHACHE_NODE_TYPE
  num_cache_nodes      = var.CHACHE_NODE_NUM
  parameter_group_name = "default.redis5.0"
  engine_version       = var.CHACHE_ENGINE_VERSION
  port                 = 6379
  subnet_group_name    = aws_elasticache_subnet_group.chach_subnets.id
  security_group_ids   = [aws_security_group.elastic-sec.id]
}
