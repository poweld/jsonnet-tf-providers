{
  local block = self,
  new(cluster_identifier):: (
    {}
    + block.with_cluster_identifier(cluster_identifier)
  ),
  with_arn(value):: (
    local converted = value;
    assert std.isString(converted) : '"arn" expected to be of type "string"';
    {
      arn: converted,
    }
  ),
  with_availability_zones(value):: (
    local converted = if std.isArray(value) then value else [value];
    assert (std.isArray(converted) && std.length(std.set(converted)) == std.length(converted)) : '"availability_zones" expected to be of type "set"';
    {
      availability_zones: converted,
    }
  ),
  with_availability_zones_mixin(value):: (
    local converted = if std.isArray(value) then value else [value];
    assert (std.isArray(converted) && std.length(std.set(converted)) == std.length(converted)) : '"availability_zones" expected to be of type "set"';
    {
      availability_zones+: converted,
    }
  ),
  with_backtrack_window(value):: (
    local converted = value;
    assert std.isNumber(converted) : '"backtrack_window" expected to be of type "number"';
    {
      backtrack_window: converted,
    }
  ),
  with_backup_retention_period(value):: (
    local converted = value;
    assert std.isNumber(converted) : '"backup_retention_period" expected to be of type "number"';
    {
      backup_retention_period: converted,
    }
  ),
  with_cluster_identifier(value):: (
    local converted = value;
    assert std.isString(converted) : '"cluster_identifier" expected to be of type "string"';
    {
      cluster_identifier: converted,
    }
  ),
  with_cluster_members(value):: (
    local converted = if std.isArray(value) then value else [value];
    assert (std.isArray(converted) && std.length(std.set(converted)) == std.length(converted)) : '"cluster_members" expected to be of type "set"';
    {
      cluster_members: converted,
    }
  ),
  with_cluster_members_mixin(value):: (
    local converted = if std.isArray(value) then value else [value];
    assert (std.isArray(converted) && std.length(std.set(converted)) == std.length(converted)) : '"cluster_members" expected to be of type "set"';
    {
      cluster_members+: converted,
    }
  ),
  with_cluster_resource_id(value):: (
    local converted = value;
    assert std.isString(converted) : '"cluster_resource_id" expected to be of type "string"';
    {
      cluster_resource_id: converted,
    }
  ),
  with_cluster_scalability_type(value):: (
    local converted = value;
    assert std.isString(converted) : '"cluster_scalability_type" expected to be of type "string"';
    {
      cluster_scalability_type: converted,
    }
  ),
  with_database_insights_mode(value):: (
    local converted = value;
    assert std.isString(converted) : '"database_insights_mode" expected to be of type "string"';
    {
      database_insights_mode: converted,
    }
  ),
  with_database_name(value):: (
    local converted = value;
    assert std.isString(converted) : '"database_name" expected to be of type "string"';
    {
      database_name: converted,
    }
  ),
  with_db_cluster_parameter_group_name(value):: (
    local converted = value;
    assert std.isString(converted) : '"db_cluster_parameter_group_name" expected to be of type "string"';
    {
      db_cluster_parameter_group_name: converted,
    }
  ),
  with_db_subnet_group_name(value):: (
    local converted = value;
    assert std.isString(converted) : '"db_subnet_group_name" expected to be of type "string"';
    {
      db_subnet_group_name: converted,
    }
  ),
  with_db_system_id(value):: (
    local converted = value;
    assert std.isString(converted) : '"db_system_id" expected to be of type "string"';
    {
      db_system_id: converted,
    }
  ),
  with_enabled_cloudwatch_logs_exports(value):: (
    local converted = if std.isArray(value) then value else [value];
    assert std.isArray(converted) : '"enabled_cloudwatch_logs_exports" expected to be of type "list"';
    {
      enabled_cloudwatch_logs_exports: converted,
    }
  ),
  with_enabled_cloudwatch_logs_exports_mixin(value):: (
    local converted = if std.isArray(value) then value else [value];
    assert std.isArray(converted) : '"enabled_cloudwatch_logs_exports" expected to be of type "list"';
    {
      enabled_cloudwatch_logs_exports+: converted,
    }
  ),
  with_endpoint(value):: (
    local converted = value;
    assert std.isString(converted) : '"endpoint" expected to be of type "string"';
    {
      endpoint: converted,
    }
  ),
  with_engine(value):: (
    local converted = value;
    assert std.isString(converted) : '"engine" expected to be of type "string"';
    {
      engine: converted,
    }
  ),
  with_engine_mode(value):: (
    local converted = value;
    assert std.isString(converted) : '"engine_mode" expected to be of type "string"';
    {
      engine_mode: converted,
    }
  ),
  with_engine_version(value):: (
    local converted = value;
    assert std.isString(converted) : '"engine_version" expected to be of type "string"';
    {
      engine_version: converted,
    }
  ),
  with_final_snapshot_identifier(value):: (
    local converted = value;
    assert std.isString(converted) : '"final_snapshot_identifier" expected to be of type "string"';
    {
      final_snapshot_identifier: converted,
    }
  ),
  with_hosted_zone_id(value):: (
    local converted = value;
    assert std.isString(converted) : '"hosted_zone_id" expected to be of type "string"';
    {
      hosted_zone_id: converted,
    }
  ),
  with_iam_database_authentication_enabled(value):: (
    local converted = value;
    assert std.isBoolean(converted) : '"iam_database_authentication_enabled" expected to be of type "bool"';
    {
      iam_database_authentication_enabled: converted,
    }
  ),
  with_iam_roles(value):: (
    local converted = if std.isArray(value) then value else [value];
    assert (std.isArray(converted) && std.length(std.set(converted)) == std.length(converted)) : '"iam_roles" expected to be of type "set"';
    {
      iam_roles: converted,
    }
  ),
  with_iam_roles_mixin(value):: (
    local converted = if std.isArray(value) then value else [value];
    assert (std.isArray(converted) && std.length(std.set(converted)) == std.length(converted)) : '"iam_roles" expected to be of type "set"';
    {
      iam_roles+: converted,
    }
  ),
  with_id(value):: (
    local converted = value;
    assert std.isString(converted) : '"id" expected to be of type "string"';
    {
      id: converted,
    }
  ),
  with_kms_key_id(value):: (
    local converted = value;
    assert std.isString(converted) : '"kms_key_id" expected to be of type "string"';
    {
      kms_key_id: converted,
    }
  ),
  with_master_user_secret(value):: (
    local converted = if std.isArray(value) then value else [value];
    assert std.isArray(converted) : '"master_user_secret" expected to be of type "list"';
    {
      master_user_secret: converted,
    }
  ),
  with_master_user_secret_mixin(value):: (
    local converted = if std.isArray(value) then value else [value];
    assert std.isArray(converted) : '"master_user_secret" expected to be of type "list"';
    {
      master_user_secret+: converted,
    }
  ),
  with_master_username(value):: (
    local converted = value;
    assert std.isString(converted) : '"master_username" expected to be of type "string"';
    {
      master_username: converted,
    }
  ),
  with_monitoring_interval(value):: (
    local converted = value;
    assert std.isNumber(converted) : '"monitoring_interval" expected to be of type "number"';
    {
      monitoring_interval: converted,
    }
  ),
  with_monitoring_role_arn(value):: (
    local converted = value;
    assert std.isString(converted) : '"monitoring_role_arn" expected to be of type "string"';
    {
      monitoring_role_arn: converted,
    }
  ),
  with_network_type(value):: (
    local converted = value;
    assert std.isString(converted) : '"network_type" expected to be of type "string"';
    {
      network_type: converted,
    }
  ),
  with_port(value):: (
    local converted = value;
    assert std.isNumber(converted) : '"port" expected to be of type "number"';
    {
      port: converted,
    }
  ),
  with_preferred_backup_window(value):: (
    local converted = value;
    assert std.isString(converted) : '"preferred_backup_window" expected to be of type "string"';
    {
      preferred_backup_window: converted,
    }
  ),
  with_preferred_maintenance_window(value):: (
    local converted = value;
    assert std.isString(converted) : '"preferred_maintenance_window" expected to be of type "string"';
    {
      preferred_maintenance_window: converted,
    }
  ),
  with_reader_endpoint(value):: (
    local converted = value;
    assert std.isString(converted) : '"reader_endpoint" expected to be of type "string"';
    {
      reader_endpoint: converted,
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
  with_replication_source_identifier(value):: (
    local converted = value;
    assert std.isString(converted) : '"replication_source_identifier" expected to be of type "string"';
    {
      replication_source_identifier: converted,
    }
  ),
  with_storage_encrypted(value):: (
    local converted = value;
    assert std.isBoolean(converted) : '"storage_encrypted" expected to be of type "bool"';
    {
      storage_encrypted: converted,
    }
  ),
  with_tags(value):: (
    local converted = value;
    assert std.isObject(converted) : '"tags" expected to be of type "map"';
    {
      tags: converted,
    }
  ),
  with_vpc_security_group_ids(value):: (
    local converted = if std.isArray(value) then value else [value];
    assert (std.isArray(converted) && std.length(std.set(converted)) == std.length(converted)) : '"vpc_security_group_ids" expected to be of type "set"';
    {
      vpc_security_group_ids: converted,
    }
  ),
  with_vpc_security_group_ids_mixin(value):: (
    local converted = if std.isArray(value) then value else [value];
    assert (std.isArray(converted) && std.length(std.set(converted)) == std.length(converted)) : '"vpc_security_group_ids" expected to be of type "set"';
    {
      vpc_security_group_ids+: converted,
    }
  ),
}
