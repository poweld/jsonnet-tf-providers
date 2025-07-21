{
  local block = self,
  new():: (
    {}
  ),
  with_address(value):: (
    local converted = value;
    assert std.isString(converted) : '"address" expected to be of type "string"';
    {
      address: converted,
    }
  ),
  with_allocated_storage(value):: (
    local converted = value;
    assert std.isNumber(converted) : '"allocated_storage" expected to be of type "number"';
    {
      allocated_storage: converted,
    }
  ),
  with_auto_minor_version_upgrade(value):: (
    local converted = value;
    assert std.isBoolean(converted) : '"auto_minor_version_upgrade" expected to be of type "bool"';
    {
      auto_minor_version_upgrade: converted,
    }
  ),
  with_availability_zone(value):: (
    local converted = value;
    assert std.isString(converted) : '"availability_zone" expected to be of type "string"';
    {
      availability_zone: converted,
    }
  ),
  with_backup_retention_period(value):: (
    local converted = value;
    assert std.isNumber(converted) : '"backup_retention_period" expected to be of type "number"';
    {
      backup_retention_period: converted,
    }
  ),
  with_ca_cert_identifier(value):: (
    local converted = value;
    assert std.isString(converted) : '"ca_cert_identifier" expected to be of type "string"';
    {
      ca_cert_identifier: converted,
    }
  ),
  with_database_insights_mode(value):: (
    local converted = value;
    assert std.isString(converted) : '"database_insights_mode" expected to be of type "string"';
    {
      database_insights_mode: converted,
    }
  ),
  with_db_cluster_identifier(value):: (
    local converted = value;
    assert std.isString(converted) : '"db_cluster_identifier" expected to be of type "string"';
    {
      db_cluster_identifier: converted,
    }
  ),
  with_db_instance_arn(value):: (
    local converted = value;
    assert std.isString(converted) : '"db_instance_arn" expected to be of type "string"';
    {
      db_instance_arn: converted,
    }
  ),
  with_db_instance_class(value):: (
    local converted = value;
    assert std.isString(converted) : '"db_instance_class" expected to be of type "string"';
    {
      db_instance_class: converted,
    }
  ),
  with_db_instance_identifier(value):: (
    local converted = value;
    assert std.isString(converted) : '"db_instance_identifier" expected to be of type "string"';
    {
      db_instance_identifier: converted,
    }
  ),
  with_db_instance_port(value):: (
    local converted = value;
    assert std.isNumber(converted) : '"db_instance_port" expected to be of type "number"';
    {
      db_instance_port: converted,
    }
  ),
  with_db_name(value):: (
    local converted = value;
    assert std.isString(converted) : '"db_name" expected to be of type "string"';
    {
      db_name: converted,
    }
  ),
  with_db_parameter_groups(value):: (
    local converted = if std.isArray(value) then value else [value];
    assert std.isArray(converted) : '"db_parameter_groups" expected to be of type "list"';
    {
      db_parameter_groups: converted,
    }
  ),
  with_db_parameter_groups_mixin(value):: (
    local converted = if std.isArray(value) then value else [value];
    assert std.isArray(converted) : '"db_parameter_groups" expected to be of type "list"';
    {
      db_parameter_groups+: converted,
    }
  ),
  with_db_subnet_group(value):: (
    local converted = value;
    assert std.isString(converted) : '"db_subnet_group" expected to be of type "string"';
    {
      db_subnet_group: converted,
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
  with_engine_version(value):: (
    local converted = value;
    assert std.isString(converted) : '"engine_version" expected to be of type "string"';
    {
      engine_version: converted,
    }
  ),
  with_hosted_zone_id(value):: (
    local converted = value;
    assert std.isString(converted) : '"hosted_zone_id" expected to be of type "string"';
    {
      hosted_zone_id: converted,
    }
  ),
  with_id(value):: (
    local converted = value;
    assert std.isString(converted) : '"id" expected to be of type "string"';
    {
      id: converted,
    }
  ),
  with_iops(value):: (
    local converted = value;
    assert std.isNumber(converted) : '"iops" expected to be of type "number"';
    {
      iops: converted,
    }
  ),
  with_kms_key_id(value):: (
    local converted = value;
    assert std.isString(converted) : '"kms_key_id" expected to be of type "string"';
    {
      kms_key_id: converted,
    }
  ),
  with_license_model(value):: (
    local converted = value;
    assert std.isString(converted) : '"license_model" expected to be of type "string"';
    {
      license_model: converted,
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
  with_max_allocated_storage(value):: (
    local converted = value;
    assert std.isNumber(converted) : '"max_allocated_storage" expected to be of type "number"';
    {
      max_allocated_storage: converted,
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
  with_multi_az(value):: (
    local converted = value;
    assert std.isBoolean(converted) : '"multi_az" expected to be of type "bool"';
    {
      multi_az: converted,
    }
  ),
  with_network_type(value):: (
    local converted = value;
    assert std.isString(converted) : '"network_type" expected to be of type "string"';
    {
      network_type: converted,
    }
  ),
  with_option_group_memberships(value):: (
    local converted = if std.isArray(value) then value else [value];
    assert std.isArray(converted) : '"option_group_memberships" expected to be of type "list"';
    {
      option_group_memberships: converted,
    }
  ),
  with_option_group_memberships_mixin(value):: (
    local converted = if std.isArray(value) then value else [value];
    assert std.isArray(converted) : '"option_group_memberships" expected to be of type "list"';
    {
      option_group_memberships+: converted,
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
  with_publicly_accessible(value):: (
    local converted = value;
    assert std.isBoolean(converted) : '"publicly_accessible" expected to be of type "bool"';
    {
      publicly_accessible: converted,
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
  with_replicate_source_db(value):: (
    local converted = value;
    assert std.isString(converted) : '"replicate_source_db" expected to be of type "string"';
    {
      replicate_source_db: converted,
    }
  ),
  with_resource_id(value):: (
    local converted = value;
    assert std.isString(converted) : '"resource_id" expected to be of type "string"';
    {
      resource_id: converted,
    }
  ),
  with_storage_encrypted(value):: (
    local converted = value;
    assert std.isBoolean(converted) : '"storage_encrypted" expected to be of type "bool"';
    {
      storage_encrypted: converted,
    }
  ),
  with_storage_throughput(value):: (
    local converted = value;
    assert std.isNumber(converted) : '"storage_throughput" expected to be of type "number"';
    {
      storage_throughput: converted,
    }
  ),
  with_storage_type(value):: (
    local converted = value;
    assert std.isString(converted) : '"storage_type" expected to be of type "string"';
    {
      storage_type: converted,
    }
  ),
  with_tags(value):: (
    local converted = value;
    assert std.isObject(converted) : '"tags" expected to be of type "map"';
    {
      tags: converted,
    }
  ),
  with_timezone(value):: (
    local converted = value;
    assert std.isString(converted) : '"timezone" expected to be of type "string"';
    {
      timezone: converted,
    }
  ),
  with_vpc_security_groups(value):: (
    local converted = if std.isArray(value) then value else [value];
    assert std.isArray(converted) : '"vpc_security_groups" expected to be of type "list"';
    {
      vpc_security_groups: converted,
    }
  ),
  with_vpc_security_groups_mixin(value):: (
    local converted = if std.isArray(value) then value else [value];
    assert std.isArray(converted) : '"vpc_security_groups" expected to be of type "list"';
    {
      vpc_security_groups+: converted,
    }
  ),
}
