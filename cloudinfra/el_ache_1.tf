resource "aws_elasticache_cluster" "el_cache_1" {
    cluster_id = "MemCache_1"
    engine = "redis"
    node_type = "cache.m4.large"
    port = 6379
    num_cache_nodes = 1
    parameter_group_name = aws_elasticache_parameter_group.default.id
    security_group_names = [aws_elasticache_security_group.el_cache_1.name]
}
