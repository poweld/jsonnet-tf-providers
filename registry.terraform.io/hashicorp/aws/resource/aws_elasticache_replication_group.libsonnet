{
  local block = self,
  new(description, replication_group_id):: (
    {}
    + block.with_description(description)
    + block.with_replication_group_id(replication_group_id)
  ),
  with_apply_immediately(value):: (
    local converted = value;
    assert std.isBoolean(converted) : '"apply_immediately" expected to be of type "bool"';
    {
      apply_immediately: converted,
    }
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
    assert std.isString(converted) : '"at_rest_encryption_enabled" expected to be of type "string"';
    {
      at_rest_encryption_enabled: converted,
    }
  ),
  with_auth_token(value):: (
    local converted = value;
    assert std.isString(converted) : '"auth_token" expected to be of type "string"';
    {
      auth_token: converted,
    }
  ),
  with_auth_token_update_strategy(value):: (
    local converted = value;
    assert std.isString(converted) : '"auth_token_update_strategy" expected to be of type "string"';
    {
      auth_token_update_strategy: converted,
    }
  ),
  with_auto_minor_version_upgrade(value):: (
    local converted = value;
    assert std.isString(converted) : '"auto_minor_version_upgrade" expected to be of type "string"';
    {
      auto_minor_version_upgrade: converted,
    }
  ),
  with_automatic_failover_enabled(value):: (
    local converted = value;
    assert std.isBoolean(converted) : '"automatic_failover_enabled" expected to be of type "bool"';
    {
      automatic_failover_enabled: converted,
    }
  ),
  with_cluster_enabled(value):: (
    local converted = value;
    assert std.isBoolean(converted) : '"cluster_enabled" expected to be of type "bool"';
    {
      cluster_enabled: converted,
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
  with_data_tiering_enabled(value):: (
    local converted = value;
    assert std.isBoolean(converted) : '"data_tiering_enabled" expected to be of type "bool"';
    {
      data_tiering_enabled: converted,
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
  with_final_snapshot_identifier(value):: (
    local converted = value;
    assert std.isString(converted) : '"final_snapshot_identifier" expected to be of type "string"';
    {
      final_snapshot_identifier: converted,
    }
  ),
  with_global_replication_group_id(value):: (
    local converted = value;
    assert std.isString(converted) : '"global_replication_group_id" expected to be of type "string"';
    {
      global_replication_group_id: converted,
    }
  ),
  with_id(value):: (
    local converted = value;
    assert std.isString(converted) : '"id" expected to be of type "string"';
    {
      id: converted,
    }
  ),
  with_ip_discovery(value):: (
    local converted = value;
    assert std.isString(converted) : '"ip_discovery" expected to be of type "string"';
    {
      ip_discovery: converted,
    }
  ),
  with_kms_key_id(value):: (
    local converted = value;
    assert std.isString(converted) : '"kms_key_id" expected to be of type "string"';
    {
      kms_key_id: converted,
    }
  ),
  with_maintenance_window(value):: (
    local converted = value;
    assert std.isString(converted) : '"maintenance_window" expected to be of type "string"';
    {
      maintenance_window: converted,
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
  with_network_type(value):: (
    local converted = value;
    assert std.isString(converted) : '"network_type" expected to be of type "string"';
    {
      network_type: converted,
    }
  ),
  with_node_type(value):: (
    local converted = value;
    assert std.isString(converted) : '"node_type" expected to be of type "string"';
    {
      node_type: converted,
    }
  ),
  with_notification_topic_arn(value):: (
    local converted = value;
    assert std.isString(converted) : '"notification_topic_arn" expected to be of type "string"';
    {
      notification_topic_arn: converted,
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
  with_preferred_cache_cluster_azs(value):: (
    local converted = if std.isArray(value) then value else [value];
    assert std.isArray(converted) : '"preferred_cache_cluster_azs" expected to be of type "list"';
    {
      preferred_cache_cluster_azs: converted,
    }
  ),
  with_preferred_cache_cluster_azs_mixin(value):: (
    local converted = if std.isArray(value) then value else [value];
    assert std.isArray(converted) : '"preferred_cache_cluster_azs" expected to be of type "list"';
    {
      preferred_cache_cluster_azs+: converted,
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
  with_security_group_names(value):: (
    local converted = if std.isArray(value) then value else [value];
    assert (std.isArray(converted) && std.length(std.set(converted)) == std.length(converted)) : '"security_group_names" expected to be of type "set"';
    {
      security_group_names: converted,
    }
  ),
  with_security_group_names_mixin(value):: (
    local converted = if std.isArray(value) then value else [value];
    assert (std.isArray(converted) && std.length(std.set(converted)) == std.length(converted)) : '"security_group_names" expected to be of type "set"';
    {
      security_group_names+: converted,
    }
  ),
  with_snapshot_arns(value):: (
    local converted = if std.isArray(value) then value else [value];
    assert (std.isArray(converted) && std.length(std.set(converted)) == std.length(converted)) : '"snapshot_arns" expected to be of type "set"';
    {
      snapshot_arns: converted,
    }
  ),
  with_snapshot_arns_mixin(value):: (
    local converted = if std.isArray(value) then value else [value];
    assert (std.isArray(converted) && std.length(std.set(converted)) == std.length(converted)) : '"snapshot_arns" expected to be of type "set"';
    {
      snapshot_arns+: converted,
    }
  ),
  with_snapshot_name(value):: (
    local converted = value;
    assert std.isString(converted) : '"snapshot_name" expected to be of type "string"';
    {
      snapshot_name: converted,
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
  with_tags_all(value):: (
    local converted = value;
    assert std.isObject(converted) : '"tags_all" expected to be of type "map"';
    {
      tags_all: converted,
    }
  ),
  with_transit_encryption_enabled(value):: (
    local converted = value;
    assert std.isBoolean(converted) : '"transit_encryption_enabled" expected to be of type "bool"';
    {
      transit_encryption_enabled: converted,
    }
  ),
  with_transit_encryption_mode(value):: (
    local converted = value;
    assert std.isString(converted) : '"transit_encryption_mode" expected to be of type "string"';
    {
      transit_encryption_mode: converted,
    }
  ),
  with_user_group_ids(value):: (
    local converted = if std.isArray(value) then value else [value];
    assert (std.isArray(converted) && std.length(std.set(converted)) == std.length(converted)) : '"user_group_ids" expected to be of type "set"';
    {
      user_group_ids: converted,
    }
  ),
  with_user_group_ids_mixin(value):: (
    local converted = if std.isArray(value) then value else [value];
    assert (std.isArray(converted) && std.length(std.set(converted)) == std.length(converted)) : '"user_group_ids" expected to be of type "set"';
    {
      user_group_ids+: converted,
    }
  ),
  log_delivery_configuration:: {
    local block = self,
    new(destination, destination_type, log_format, log_type):: (
      {}
      + block.with_destination(destination)
      + block.with_destination_type(destination_type)
      + block.with_log_format(log_format)
      + block.with_log_type(log_type)
    ),
    with_destination(value):: (
      local converted = value;
      assert std.isString(converted) : '"destination" expected to be of type "string"';
      {
        destination: converted,
      }
    ),
    with_destination_type(value):: (
      local converted = value;
      assert std.isString(converted) : '"destination_type" expected to be of type "string"';
      {
        destination_type: converted,
      }
    ),
    with_log_format(value):: (
      local converted = value;
      assert std.isString(converted) : '"log_format" expected to be of type "string"';
      {
        log_format: converted,
      }
    ),
    with_log_type(value):: (
      local converted = value;
      assert std.isString(converted) : '"log_type" expected to be of type "string"';
      {
        log_type: converted,
      }
    ),
  },
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
  with_log_delivery_configuration(value):: (
    local converted = if std.isArray(value) then value else [value];
    {
      log_delivery_configuration: value,
    }
  ),
  with_timeouts(value):: (
    local converted = value;
    {
      timeouts: value,
    }
  ),
  with_log_delivery_configuration_mixin(value):: (
    local converted = if std.isArray(value) then value else [value];
    {
      log_delivery_configuration+: converted,
    }
  ),
}
