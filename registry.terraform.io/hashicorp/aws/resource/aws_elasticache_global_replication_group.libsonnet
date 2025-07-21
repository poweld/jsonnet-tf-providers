{
  local block = self,
  new(global_replication_group_id_suffix, primary_replication_group_id):: (
    {}
    + block.with_global_replication_group_id_suffix(global_replication_group_id_suffix)
    + block.with_primary_replication_group_id(primary_replication_group_id)
  ),
  with_arn(value):: (
    local converted = value;
    assert std.isString(converted) : '"arn" expected to be of type "string"';
    {
      arn: converted,
    }
  ),
  with_at_rest_encryption_enabled(value):: (
    local converted = value;
    assert std.isBoolean(converted) : '"at_rest_encryption_enabled" expected to be of type "bool"';
    {
      at_rest_encryption_enabled: converted,
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
  with_cache_node_type(value):: (
    local converted = value;
    assert std.isString(converted) : '"cache_node_type" expected to be of type "string"';
    {
      cache_node_type: converted,
    }
  ),
  with_cluster_enabled(value):: (
    local converted = value;
    assert std.isBoolean(converted) : '"cluster_enabled" expected to be of type "bool"';
    {
      cluster_enabled: converted,
    }
  ),
  with_engine(value):: (
    local converted = value;
    assert std.isString(converted) : '"engine" expected to be of type "string"';
    {
      engine: converted,
    }
  ),
  with_engine_version(value):: (
    local converted = value;
    assert std.isString(converted) : '"engine_version" expected to be of type "string"';
    {
      engine_version: converted,
    }
  ),
  with_engine_version_actual(value):: (
    local converted = value;
    assert std.isString(converted) : '"engine_version_actual" expected to be of type "string"';
    {
      engine_version_actual: converted,
    }
  ),
  with_global_node_groups(value):: (
    local converted = if std.isArray(value) then value else [value];
    assert (std.isArray(converted) && std.length(std.set(converted)) == std.length(converted)) : '"global_node_groups" expected to be of type "set"';
    {
      global_node_groups: converted,
    }
  ),
  with_global_node_groups_mixin(value):: (
    local converted = if std.isArray(value) then value else [value];
    assert (std.isArray(converted) && std.length(std.set(converted)) == std.length(converted)) : '"global_node_groups" expected to be of type "set"';
    {
      global_node_groups+: converted,
    }
  ),
  with_global_replication_group_description(value):: (
    local converted = value;
    assert std.isString(converted) : '"global_replication_group_description" expected to be of type "string"';
    {
      global_replication_group_description: converted,
    }
  ),
  with_global_replication_group_id(value):: (
    local converted = value;
    assert std.isString(converted) : '"global_replication_group_id" expected to be of type "string"';
    {
      global_replication_group_id: converted,
    }
  ),
  with_global_replication_group_id_suffix(value):: (
    local converted = value;
    assert std.isString(converted) : '"global_replication_group_id_suffix" expected to be of type "string"';
    {
      global_replication_group_id_suffix: converted,
    }
  ),
  with_id(value):: (
    local converted = value;
    assert std.isString(converted) : '"id" expected to be of type "string"';
    {
      id: converted,
    }
  ),
  with_num_node_groups(value):: (
    local converted = value;
    assert std.isNumber(converted) : '"num_node_groups" expected to be of type "number"';
    {
      num_node_groups: converted,
    }
  ),
  with_parameter_group_name(value):: (
    local converted = value;
    assert std.isString(converted) : '"parameter_group_name" expected to be of type "string"';
    {
      parameter_group_name: converted,
    }
  ),
  with_primary_replication_group_id(value):: (
    local converted = value;
    assert std.isString(converted) : '"primary_replication_group_id" expected to be of type "string"';
    {
      primary_replication_group_id: converted,
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
  with_transit_encryption_enabled(value):: (
    local converted = value;
    assert std.isBoolean(converted) : '"transit_encryption_enabled" expected to be of type "bool"';
    {
      transit_encryption_enabled: converted,
    }
  ),
  timeouts:: {
    local block = self,
    new():: (
      {}
    ),
    with_create(value):: (
      local converted = value;
      assert std.isString(converted) : '"create" expected to be of type "string"';
      {
        create: converted,
      }
    ),
    with_delete(value):: (
      local converted = value;
      assert std.isString(converted) : '"delete" expected to be of type "string"';
      {
        delete: converted,
      }
    ),
    with_update(value):: (
      local converted = value;
      assert std.isString(converted) : '"update" expected to be of type "string"';
      {
        update: converted,
      }
    ),
  },
  with_timeouts(value):: (
    local converted = value;
    {
      timeouts: value,
    }
  ),
}
