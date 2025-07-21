{
  local block = self,
  new(name):: (
    {}
    + block.with_name(name)
  ),
  with_acl_name(value):: (
    local converted = value;
    assert std.isString(converted) : '"acl_name" expected to be of type "string"';
    {
      acl_name: converted,
    }
  ),
  with_arn(value):: (
    local converted = value;
    assert std.isString(converted) : '"arn" expected to be of type "string"';
    {
      arn: converted,
    }
  ),
  with_auto_minor_version_upgrade(value):: (
    local converted = value;
    assert std.isBoolean(converted) : '"auto_minor_version_upgrade" expected to be of type "bool"';
    {
      auto_minor_version_upgrade: converted,
    }
  ),
  with_cluster_endpoint(value):: (
    local converted = if std.isArray(value) then value else [value];
    assert std.isArray(converted) : '"cluster_endpoint" expected to be of type "list"';
    {
      cluster_endpoint: converted,
    }
  ),
  with_cluster_endpoint_mixin(value):: (
    local converted = if std.isArray(value) then value else [value];
    assert std.isArray(converted) : '"cluster_endpoint" expected to be of type "list"';
    {
      cluster_endpoint+: converted,
    }
  ),
  with_data_tiering(value):: (
    local converted = value;
    assert std.isBoolean(converted) : '"data_tiering" expected to be of type "bool"';
    {
      data_tiering: converted,
    }
  ),
  with_description(value):: (
    local converted = value;
    assert std.isString(converted) : '"description" expected to be of type "string"';
    {
      description: converted,
    }
  ),
  with_engine(value):: (
    local converted = value;
    assert std.isString(converted) : '"engine" expected to be of type "string"';
    {
      engine: converted,
    }
  ),
  with_engine_patch_version(value):: (
    local converted = value;
    assert std.isString(converted) : '"engine_patch_version" expected to be of type "string"';
    {
      engine_patch_version: converted,
    }
  ),
  with_engine_version(value):: (
    local converted = value;
    assert std.isString(converted) : '"engine_version" expected to be of type "string"';
    {
      engine_version: converted,
    }
  ),
  with_final_snapshot_name(value):: (
    local converted = value;
    assert std.isString(converted) : '"final_snapshot_name" expected to be of type "string"';
    {
      final_snapshot_name: converted,
    }
  ),
  with_id(value):: (
    local converted = value;
    assert std.isString(converted) : '"id" expected to be of type "string"';
    {
      id: converted,
    }
  ),
  with_kms_key_arn(value):: (
    local converted = value;
    assert std.isString(converted) : '"kms_key_arn" expected to be of type "string"';
    {
      kms_key_arn: converted,
    }
  ),
  with_maintenance_window(value):: (
    local converted = value;
    assert std.isString(converted) : '"maintenance_window" expected to be of type "string"';
    {
      maintenance_window: converted,
    }
  ),
  with_name(value):: (
    local converted = value;
    assert std.isString(converted) : '"name" expected to be of type "string"';
    {
      name: converted,
    }
  ),
  with_node_type(value):: (
    local converted = value;
    assert std.isString(converted) : '"node_type" expected to be of type "string"';
    {
      node_type: converted,
    }
  ),
  with_num_replicas_per_shard(value):: (
    local converted = value;
    assert std.isNumber(converted) : '"num_replicas_per_shard" expected to be of type "number"';
    {
      num_replicas_per_shard: converted,
    }
  ),
  with_num_shards(value):: (
    local converted = value;
    assert std.isNumber(converted) : '"num_shards" expected to be of type "number"';
    {
      num_shards: converted,
    }
  ),
  with_parameter_group_name(value):: (
    local converted = value;
    assert std.isString(converted) : '"parameter_group_name" expected to be of type "string"';
    {
      parameter_group_name: converted,
    }
  ),
  with_port(value):: (
    local converted = value;
    assert std.isNumber(converted) : '"port" expected to be of type "number"';
    {
      port: converted,
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
  with_security_group_ids(value):: (
    local converted = if std.isArray(value) then value else [value];
    assert (std.isArray(converted) && std.length(std.set(converted)) == std.length(converted)) : '"security_group_ids" expected to be of type "set"';
    {
      security_group_ids: converted,
    }
  ),
  with_security_group_ids_mixin(value):: (
    local converted = if std.isArray(value) then value else [value];
    assert (std.isArray(converted) && std.length(std.set(converted)) == std.length(converted)) : '"security_group_ids" expected to be of type "set"';
    {
      security_group_ids+: converted,
    }
  ),
  with_shards(value):: (
    local converted = if std.isArray(value) then value else [value];
    assert (std.isArray(converted) && std.length(std.set(converted)) == std.length(converted)) : '"shards" expected to be of type "set"';
    {
      shards: converted,
    }
  ),
  with_shards_mixin(value):: (
    local converted = if std.isArray(value) then value else [value];
    assert (std.isArray(converted) && std.length(std.set(converted)) == std.length(converted)) : '"shards" expected to be of type "set"';
    {
      shards+: converted,
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
  with_sns_topic_arn(value):: (
    local converted = value;
    assert std.isString(converted) : '"sns_topic_arn" expected to be of type "string"';
    {
      sns_topic_arn: converted,
    }
  ),
  with_subnet_group_name(value):: (
    local converted = value;
    assert std.isString(converted) : '"subnet_group_name" expected to be of type "string"';
    {
      subnet_group_name: converted,
    }
  ),
  with_tags(value):: (
    local converted = value;
    assert std.isObject(converted) : '"tags" expected to be of type "map"';
    {
      tags: converted,
    }
  ),
  with_tls_enabled(value):: (
    local converted = value;
    assert std.isBoolean(converted) : '"tls_enabled" expected to be of type "bool"';
    {
      tls_enabled: converted,
    }
  ),
}
