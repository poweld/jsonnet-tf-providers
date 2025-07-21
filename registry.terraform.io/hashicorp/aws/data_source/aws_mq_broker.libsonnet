{
  local block = self,
  new():: (
    {}
  ),
  with_arn(value):: (
    local converted = value;
    assert std.isString(converted) : '"arn" expected to be of type "string"';
    {
      arn: converted,
    }
  ),
  with_authentication_strategy(value):: (
    local converted = value;
    assert std.isString(converted) : '"authentication_strategy" expected to be of type "string"';
    {
      authentication_strategy: converted,
    }
  ),
  with_auto_minor_version_upgrade(value):: (
    local converted = value;
    assert std.isBoolean(converted) : '"auto_minor_version_upgrade" expected to be of type "bool"';
    {
      auto_minor_version_upgrade: converted,
    }
  ),
  with_broker_id(value):: (
    local converted = value;
    assert std.isString(converted) : '"broker_id" expected to be of type "string"';
    {
      broker_id: converted,
    }
  ),
  with_broker_name(value):: (
    local converted = value;
    assert std.isString(converted) : '"broker_name" expected to be of type "string"';
    {
      broker_name: converted,
    }
  ),
  with_configuration(value):: (
    local converted = if std.isArray(value) then value else [value];
    assert std.isArray(converted) : '"configuration" expected to be of type "list"';
    {
      configuration: converted,
    }
  ),
  with_configuration_mixin(value):: (
    local converted = if std.isArray(value) then value else [value];
    assert std.isArray(converted) : '"configuration" expected to be of type "list"';
    {
      configuration+: converted,
    }
  ),
  with_deployment_mode(value):: (
    local converted = value;
    assert std.isString(converted) : '"deployment_mode" expected to be of type "string"';
    {
      deployment_mode: converted,
    }
  ),
  with_encryption_options(value):: (
    local converted = if std.isArray(value) then value else [value];
    assert std.isArray(converted) : '"encryption_options" expected to be of type "list"';
    {
      encryption_options: converted,
    }
  ),
  with_encryption_options_mixin(value):: (
    local converted = if std.isArray(value) then value else [value];
    assert std.isArray(converted) : '"encryption_options" expected to be of type "list"';
    {
      encryption_options+: converted,
    }
  ),
  with_engine_type(value):: (
    local converted = value;
    assert std.isString(converted) : '"engine_type" expected to be of type "string"';
    {
      engine_type: converted,
    }
  ),
  with_engine_version(value):: (
    local converted = value;
    assert std.isString(converted) : '"engine_version" expected to be of type "string"';
    {
      engine_version: converted,
    }
  ),
  with_host_instance_type(value):: (
    local converted = value;
    assert std.isString(converted) : '"host_instance_type" expected to be of type "string"';
    {
      host_instance_type: converted,
    }
  ),
  with_id(value):: (
    local converted = value;
    assert std.isString(converted) : '"id" expected to be of type "string"';
    {
      id: converted,
    }
  ),
  with_instances(value):: (
    local converted = if std.isArray(value) then value else [value];
    assert std.isArray(converted) : '"instances" expected to be of type "list"';
    {
      instances: converted,
    }
  ),
  with_instances_mixin(value):: (
    local converted = if std.isArray(value) then value else [value];
    assert std.isArray(converted) : '"instances" expected to be of type "list"';
    {
      instances+: converted,
    }
  ),
  with_ldap_server_metadata(value):: (
    local converted = if std.isArray(value) then value else [value];
    assert std.isArray(converted) : '"ldap_server_metadata" expected to be of type "list"';
    {
      ldap_server_metadata: converted,
    }
  ),
  with_ldap_server_metadata_mixin(value):: (
    local converted = if std.isArray(value) then value else [value];
    assert std.isArray(converted) : '"ldap_server_metadata" expected to be of type "list"';
    {
      ldap_server_metadata+: converted,
    }
  ),
  with_logs(value):: (
    local converted = if std.isArray(value) then value else [value];
    assert std.isArray(converted) : '"logs" expected to be of type "list"';
    {
      logs: converted,
    }
  ),
  with_logs_mixin(value):: (
    local converted = if std.isArray(value) then value else [value];
    assert std.isArray(converted) : '"logs" expected to be of type "list"';
    {
      logs+: converted,
    }
  ),
  with_maintenance_window_start_time(value):: (
    local converted = if std.isArray(value) then value else [value];
    assert std.isArray(converted) : '"maintenance_window_start_time" expected to be of type "list"';
    {
      maintenance_window_start_time: converted,
    }
  ),
  with_maintenance_window_start_time_mixin(value):: (
    local converted = if std.isArray(value) then value else [value];
    assert std.isArray(converted) : '"maintenance_window_start_time" expected to be of type "list"';
    {
      maintenance_window_start_time+: converted,
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
  with_security_groups(value):: (
    local converted = if std.isArray(value) then value else [value];
    assert (std.isArray(converted) && std.length(std.set(converted)) == std.length(converted)) : '"security_groups" expected to be of type "set"';
    {
      security_groups: converted,
    }
  ),
  with_security_groups_mixin(value):: (
    local converted = if std.isArray(value) then value else [value];
    assert (std.isArray(converted) && std.length(std.set(converted)) == std.length(converted)) : '"security_groups" expected to be of type "set"';
    {
      security_groups+: converted,
    }
  ),
  with_storage_type(value):: (
    local converted = value;
    assert std.isString(converted) : '"storage_type" expected to be of type "string"';
    {
      storage_type: converted,
    }
  ),
  with_subnet_ids(value):: (
    local converted = if std.isArray(value) then value else [value];
    assert (std.isArray(converted) && std.length(std.set(converted)) == std.length(converted)) : '"subnet_ids" expected to be of type "set"';
    {
      subnet_ids: converted,
    }
  ),
  with_subnet_ids_mixin(value):: (
    local converted = if std.isArray(value) then value else [value];
    assert (std.isArray(converted) && std.length(std.set(converted)) == std.length(converted)) : '"subnet_ids" expected to be of type "set"';
    {
      subnet_ids+: converted,
    }
  ),
  with_tags(value):: (
    local converted = value;
    assert std.isObject(converted) : '"tags" expected to be of type "map"';
    {
      tags: converted,
    }
  ),
  with_user(value):: (
    local converted = if std.isArray(value) then value else [value];
    assert (std.isArray(converted) && std.length(std.set(converted)) == std.length(converted)) : '"user" expected to be of type "set"';
    {
      user: converted,
    }
  ),
  with_user_mixin(value):: (
    local converted = if std.isArray(value) then value else [value];
    assert (std.isArray(converted) && std.length(std.set(converted)) == std.length(converted)) : '"user" expected to be of type "set"';
    {
      user+: converted,
    }
  ),
}
