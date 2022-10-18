resource "aws_elasticache_cluster" "el_cache_2" {
    cluster_id = "MemCache_2"
    engine = "redis"
    node_type = "cache.m4.large"
    port = 6379
    num_cache_nodes = 1
    parameter_group_name = aws_elasticache_parameter_group.default.id
}
