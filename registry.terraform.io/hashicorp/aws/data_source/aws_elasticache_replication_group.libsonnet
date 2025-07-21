{
  local block = self,
  new(replication_group_id):: (
    {}
    + block.with_replication_group_id(replication_group_id)
  ),
  with_arn(value):: (
    local converted = value;
    assert std.isString(converted) : '"arn" expected to be of type "string"';
    {
      arn: converted,
    }
  ),
  with_auth_token_enabled(value):: (
    local converted = value;
    assert std.isBoolean(converted) : '"auth_token_enabled" expected to be of type "bool"';
    {
      auth_token_enabled: converted,
    }
  ),
  with_automatic_failover_enabled(value):: (
    local converted = value;
    assert std.isBoolean(converted) : '"automatic_failover_enabled" expected to be of type "bool"';
    {
      automatic_failover_enabled: converted,
    }
  ),
  with_cluster_mode(value):: (
    local converted = value;
    assert std.isString(converted) : '"cluster_mode" expected to be of type "string"';
    {
      cluster_mode: converted,
    }
  ),
  with_configuration_endpoint_address(value):: (
    local converted = value;
    assert std.isString(converted) : '"configuration_endpoint_address" expected to be of type "string"';
    {
      configuration_endpoint_address: converted,
    }
  ),
  with_description(value):: (
    local converted = value;
    assert std.isString(converted) : '"description" expected to be of type "string"';
    {
      description: converted,
    }
  ),
  with_id(value):: (
    local converted = value;
    assert std.isString(converted) : '"id" expected to be of type "string"';
    {
      id: converted,
    }
  ),
  with_log_delivery_configuration(value):: (
    local converted = if std.isArray(value) then value else [value];
    assert (std.isArray(converted) && std.length(std.set(converted)) == std.length(converted)) : '"log_delivery_configuration" expected to be of type "set"';
    {
      log_delivery_configuration: converted,
    }
  ),
  with_log_delivery_configuration_mixin(value):: (
    local converted = if std.isArray(value) then value else [value];
    assert (std.isArray(converted) && std.length(std.set(converted)) == std.length(converted)) : '"log_delivery_configuration" expected to be of type "set"';
    {
      log_delivery_configuration+: converted,
    }
  ),
  with_member_clusters(value):: (
    local converted = if std.isArray(value) then value else [value];
    assert (std.isArray(converted) && std.length(std.set(converted)) == std.length(converted)) : '"member_clusters" expected to be of type "set"';
    {
      member_clusters: converted,
    }
  ),
  with_member_clusters_mixin(value):: (
    local converted = if std.isArray(value) then value else [value];
    assert (std.isArray(converted) && std.length(std.set(converted)) == std.length(converted)) : '"member_clusters" expected to be of type "set"';
    {
      member_clusters+: converted,
    }
  ),
  with_multi_az_enabled(value):: (
    local converted = value;
    assert std.isBoolean(converted) : '"multi_az_enabled" expected to be of type "bool"';
    {
      multi_az_enabled: converted,
    }
  ),
  with_node_type(value):: (
    local converted = value;
    assert std.isString(converted) : '"node_type" expected to be of type "string"';
    {
      node_type: converted,
    }
  ),
  with_num_cache_clusters(value):: (
    local converted = value;
    assert std.isNumber(converted) : '"num_cache_clusters" expected to be of type "number"';
    {
      num_cache_clusters: converted,
    }
  ),
  with_num_node_groups(value):: (
    local converted = value;
    assert std.isNumber(converted) : '"num_node_groups" expected to be of type "number"';
    {
      num_node_groups: converted,
    }
  ),
  with_port(value):: (
    local converted = value;
    assert std.isNumber(converted) : '"port" expected to be of type "number"';
    {
      port: converted,
    }
  ),
  with_primary_endpoint_address(value):: (
    local converted = value;
    assert std.isString(converted) : '"primary_endpoint_address" expected to be of type "string"';
    {
      primary_endpoint_address: converted,
    }
  ),
  with_reader_endpoint_address(value):: (
    local converted = value;
    assert std.isString(converted) : '"reader_endpoint_address" expected to be of type "string"';
    {
      reader_endpoint_address: converted,
    }
  ),
  '#with_region':: 'Region where this resource will be [managed](https://docs.aws.amazon.com/general/latest/gr/rande.html#regional-endpoints). Defaults to the Region set in the [provider configuration](https://registry.terraform.io/providers/hashicorp/aws/latest/docs#aws-configuration-reference).',
  with_region(value):: (
    local converted = value;
    assert std.isString(converted) : '"region" expected to be of type "string"';
    {
      region: converted,
    }
  ),
  with_replicas_per_node_group(value):: (
    local converted = value;
    assert std.isNumber(converted) : '"replicas_per_node_group" expected to be of type "number"';
    {
      replicas_per_node_group: converted,
    }
  ),
  with_replication_group_id(value):: (
    local converted = value;
    assert std.isString(converted) : '"replication_group_id" expected to be of type "string"';
    {
      replication_group_id: converted,
    }
  ),
  with_snapshot_retention_limit(value):: (
    local converted = value;
    assert std.isNumber(converted) : '"snapshot_retention_limit" expected to be of type "number"';
    {
      snapshot_retention_limit: converted,
    }
  ),
  with_snapshot_window(value):: (
    local converted = value;
    assert std.isString(converted) : '"snapshot_window" expected to be of type "string"';
    {
      snapshot_window: converted,
    }
  ),
}
