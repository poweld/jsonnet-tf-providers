{
  local block = self,
  new(cluster_identifier):: (
    {}
    + block.with_cluster_identifier(cluster_identifier)
  ),
  with_allow_version_upgrade(value):: (
    local converted = value;
    assert std.isBoolean(converted) : '"allow_version_upgrade" expected to be of type "bool"';
    {
      allow_version_upgrade: converted,
    }
  ),
  with_aqua_configuration_status(value):: (
    local converted = value;
    assert std.isString(converted) : '"aqua_configuration_status" expected to be of type "string"';
    {
      aqua_configuration_status: converted,
    }
  ),
  with_arn(value):: (
    local converted = value;
    assert std.isString(converted) : '"arn" expected to be of type "string"';
    {
      arn: converted,
    }
  ),
  with_automated_snapshot_retention_period(value):: (
    local converted = value;
    assert std.isNumber(converted) : '"automated_snapshot_retention_period" expected to be of type "number"';
    {
      automated_snapshot_retention_period: converted,
    }
  ),
  with_availability_zone(value):: (
    local converted = value;
    assert std.isString(converted) : '"availability_zone" expected to be of type "string"';
    {
      availability_zone: converted,
    }
  ),
  with_availability_zone_relocation_enabled(value):: (
    local converted = value;
    assert std.isBoolean(converted) : '"availability_zone_relocation_enabled" expected to be of type "bool"';
    {
      availability_zone_relocation_enabled: converted,
    }
  ),
  with_bucket_name(value):: (
    local converted = value;
    assert std.isString(converted) : '"bucket_name" expected to be of type "string"';
    {
      bucket_name: converted,
    }
  ),
  with_cluster_identifier(value):: (
    local converted = value;
    assert std.isString(converted) : '"cluster_identifier" expected to be of type "string"';
    {
      cluster_identifier: converted,
    }
  ),
  with_cluster_namespace_arn(value):: (
    local converted = value;
    assert std.isString(converted) : '"cluster_namespace_arn" expected to be of type "string"';
    {
      cluster_namespace_arn: converted,
    }
  ),
  with_cluster_nodes(value):: (
    local converted = if std.isArray(value) then value else [value];
    assert std.isArray(converted) : '"cluster_nodes" expected to be of type "list"';
    {
      cluster_nodes: converted,
    }
  ),
  with_cluster_nodes_mixin(value):: (
    local converted = if std.isArray(value) then value else [value];
    assert std.isArray(converted) : '"cluster_nodes" expected to be of type "list"';
    {
      cluster_nodes+: converted,
    }
  ),
  with_cluster_parameter_group_name(value):: (
    local converted = value;
    assert std.isString(converted) : '"cluster_parameter_group_name" expected to be of type "string"';
    {
      cluster_parameter_group_name: converted,
    }
  ),
  with_cluster_public_key(value):: (
    local converted = value;
    assert std.isString(converted) : '"cluster_public_key" expected to be of type "string"';
    {
      cluster_public_key: converted,
    }
  ),
  with_cluster_revision_number(value):: (
    local converted = value;
    assert std.isString(converted) : '"cluster_revision_number" expected to be of type "string"';
    {
      cluster_revision_number: converted,
    }
  ),
  with_cluster_subnet_group_name(value):: (
    local converted = value;
    assert std.isString(converted) : '"cluster_subnet_group_name" expected to be of type "string"';
    {
      cluster_subnet_group_name: converted,
    }
  ),
  with_cluster_type(value):: (
    local converted = value;
    assert std.isString(converted) : '"cluster_type" expected to be of type "string"';
    {
      cluster_type: converted,
    }
  ),
  with_cluster_version(value):: (
    local converted = value;
    assert std.isString(converted) : '"cluster_version" expected to be of type "string"';
    {
      cluster_version: converted,
    }
  ),
  with_database_name(value):: (
    local converted = value;
    assert std.isString(converted) : '"database_name" expected to be of type "string"';
    {
      database_name: converted,
    }
  ),
  with_default_iam_role_arn(value):: (
    local converted = value;
    assert std.isString(converted) : '"default_iam_role_arn" expected to be of type "string"';
    {
      default_iam_role_arn: converted,
    }
  ),
  with_elastic_ip(value):: (
    local converted = value;
    assert std.isString(converted) : '"elastic_ip" expected to be of type "string"';
    {
      elastic_ip: converted,
    }
  ),
  with_enable_logging(value):: (
    local converted = value;
    assert std.isBoolean(converted) : '"enable_logging" expected to be of type "bool"';
    {
      enable_logging: converted,
    }
  ),
  with_encrypted(value):: (
    local converted = value;
    assert std.isBoolean(converted) : '"encrypted" expected to be of type "bool"';
    {
      encrypted: converted,
    }
  ),
  with_endpoint(value):: (
    local converted = value;
    assert std.isString(converted) : '"endpoint" expected to be of type "string"';
    {
      endpoint: converted,
    }
  ),
  with_enhanced_vpc_routing(value):: (
    local converted = value;
    assert std.isBoolean(converted) : '"enhanced_vpc_routing" expected to be of type "bool"';
    {
      enhanced_vpc_routing: converted,
    }
  ),
  with_iam_roles(value):: (
    local converted = if std.isArray(value) then value else [value];
    assert std.isArray(converted) : '"iam_roles" expected to be of type "list"';
    {
      iam_roles: converted,
    }
  ),
  with_iam_roles_mixin(value):: (
    local converted = if std.isArray(value) then value else [value];
    assert std.isArray(converted) : '"iam_roles" expected to be of type "list"';
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
  with_log_destination_type(value):: (
    local converted = value;
    assert std.isString(converted) : '"log_destination_type" expected to be of type "string"';
    {
      log_destination_type: converted,
    }
  ),
  with_log_exports(value):: (
    local converted = if std.isArray(value) then value else [value];
    assert (std.isArray(converted) && std.length(std.set(converted)) == std.length(converted)) : '"log_exports" expected to be of type "set"';
    {
      log_exports: converted,
    }
  ),
  with_log_exports_mixin(value):: (
    local converted = if std.isArray(value) then value else [value];
    assert (std.isArray(converted) && std.length(std.set(converted)) == std.length(converted)) : '"log_exports" expected to be of type "set"';
    {
      log_exports+: converted,
    }
  ),
  with_maintenance_track_name(value):: (
    local converted = value;
    assert std.isString(converted) : '"maintenance_track_name" expected to be of type "string"';
    {
      maintenance_track_name: converted,
    }
  ),
  with_manual_snapshot_retention_period(value):: (
    local converted = value;
    assert std.isNumber(converted) : '"manual_snapshot_retention_period" expected to be of type "number"';
    {
      manual_snapshot_retention_period: converted,
    }
  ),
  with_master_username(value):: (
    local converted = value;
    assert std.isString(converted) : '"master_username" expected to be of type "string"';
    {
      master_username: converted,
    }
  ),
  with_multi_az(value):: (
    local converted = value;
    assert std.isBoolean(converted) : '"multi_az" expected to be of type "bool"';
    {
      multi_az: converted,
    }
  ),
  with_node_type(value):: (
    local converted = value;
    assert std.isString(converted) : '"node_type" expected to be of type "string"';
    {
      node_type: converted,
    }
  ),
  with_number_of_nodes(value):: (
    local converted = value;
    assert std.isNumber(converted) : '"number_of_nodes" expected to be of type "number"';
    {
      number_of_nodes: converted,
    }
  ),
  with_port(value):: (
    local converted = value;
    assert std.isNumber(converted) : '"port" expected to be of type "number"';
    {
      port: converted,
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
  with_s3_key_prefix(value):: (
    local converted = value;
    assert std.isString(converted) : '"s3_key_prefix" expected to be of type "string"';
    {
      s3_key_prefix: converted,
    }
  ),
  with_tags(value):: (
    local converted = value;
    assert std.isObject(converted) : '"tags" expected to be of type "map"';
    {
      tags: converted,
    }
  ),
  with_vpc_id(value):: (
    local converted = value;
    assert std.isString(converted) : '"vpc_id" expected to be of type "string"';
    {
      vpc_id: converted,
    }
  ),
  with_vpc_security_group_ids(value):: (
    local converted = if std.isArray(value) then value else [value];
    assert std.isArray(converted) : '"vpc_security_group_ids" expected to be of type "list"';
    {
      vpc_security_group_ids: converted,
    }
  ),
  with_vpc_security_group_ids_mixin(value):: (
    local converted = if std.isArray(value) then value else [value];
    assert std.isArray(converted) : '"vpc_security_group_ids" expected to be of type "list"';
    {
      vpc_security_group_ids+: converted,
    }
  ),
}
