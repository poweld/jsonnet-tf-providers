{
  local block = self,
  new(name):: (
    {}
    + block.with_name(name)
  ),
  with_access_logs(value):: (
    local converted = if std.isArray(value) then value else [value];
    assert std.isArray(converted) : '"access_logs" expected to be of type "list"';
    {
      access_logs: converted,
    }
  ),
  with_access_logs_mixin(value):: (
    local converted = if std.isArray(value) then value else [value];
    assert std.isArray(converted) : '"access_logs" expected to be of type "list"';
    {
      access_logs+: converted,
    }
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
  with_connection_draining(value):: (
    local converted = value;
    assert std.isBoolean(converted) : '"connection_draining" expected to be of type "bool"';
    {
      connection_draining: converted,
    }
  ),
  with_connection_draining_timeout(value):: (
    local converted = value;
    assert std.isNumber(converted) : '"connection_draining_timeout" expected to be of type "number"';
    {
      connection_draining_timeout: converted,
    }
  ),
  with_cross_zone_load_balancing(value):: (
    local converted = value;
    assert std.isBoolean(converted) : '"cross_zone_load_balancing" expected to be of type "bool"';
    {
      cross_zone_load_balancing: converted,
    }
  ),
  with_desync_mitigation_mode(value):: (
    local converted = value;
    assert std.isString(converted) : '"desync_mitigation_mode" expected to be of type "string"';
    {
      desync_mitigation_mode: converted,
    }
  ),
  with_dns_name(value):: (
    local converted = value;
    assert std.isString(converted) : '"dns_name" expected to be of type "string"';
    {
      dns_name: converted,
    }
  ),
  with_health_check(value):: (
    local converted = if std.isArray(value) then value else [value];
    assert std.isArray(converted) : '"health_check" expected to be of type "list"';
    {
      health_check: converted,
    }
  ),
  with_health_check_mixin(value):: (
    local converted = if std.isArray(value) then value else [value];
    assert std.isArray(converted) : '"health_check" expected to be of type "list"';
    {
      health_check+: converted,
    }
  ),
  with_id(value):: (
    local converted = value;
    assert std.isString(converted) : '"id" expected to be of type "string"';
    {
      id: converted,
    }
  ),
  with_idle_timeout(value):: (
    local converted = value;
    assert std.isNumber(converted) : '"idle_timeout" expected to be of type "number"';
    {
      idle_timeout: converted,
    }
  ),
  with_instances(value):: (
    local converted = if std.isArray(value) then value else [value];
    assert (std.isArray(converted) && std.length(std.set(converted)) == std.length(converted)) : '"instances" expected to be of type "set"';
    {
      instances: converted,
    }
  ),
  with_instances_mixin(value):: (
    local converted = if std.isArray(value) then value else [value];
    assert (std.isArray(converted) && std.length(std.set(converted)) == std.length(converted)) : '"instances" expected to be of type "set"';
    {
      instances+: converted,
    }
  ),
  with_internal(value):: (
    local converted = value;
    assert std.isBoolean(converted) : '"internal" expected to be of type "bool"';
    {
      internal: converted,
    }
  ),
  with_listener(value):: (
    local converted = if std.isArray(value) then value else [value];
    assert (std.isArray(converted) && std.length(std.set(converted)) == std.length(converted)) : '"listener" expected to be of type "set"';
    {
      listener: converted,
    }
  ),
  with_listener_mixin(value):: (
    local converted = if std.isArray(value) then value else [value];
    assert (std.isArray(converted) && std.length(std.set(converted)) == std.length(converted)) : '"listener" expected to be of type "set"';
    {
      listener+: converted,
    }
  ),
  with_name(value):: (
    local converted = value;
    assert std.isString(converted) : '"name" expected to be of type "string"';
    {
      name: converted,
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
  with_source_security_group(value):: (
    local converted = value;
    assert std.isString(converted) : '"source_security_group" expected to be of type "string"';
    {
      source_security_group: converted,
    }
  ),
  with_source_security_group_id(value):: (
    local converted = value;
    assert std.isString(converted) : '"source_security_group_id" expected to be of type "string"';
    {
      source_security_group_id: converted,
    }
  ),
  with_subnets(value):: (
    local converted = if std.isArray(value) then value else [value];
    assert (std.isArray(converted) && std.length(std.set(converted)) == std.length(converted)) : '"subnets" expected to be of type "set"';
    {
      subnets: converted,
    }
  ),
  with_subnets_mixin(value):: (
    local converted = if std.isArray(value) then value else [value];
    assert (std.isArray(converted) && std.length(std.set(converted)) == std.length(converted)) : '"subnets" expected to be of type "set"';
    {
      subnets+: converted,
    }
  ),
  with_tags(value):: (
    local converted = value;
    assert std.isObject(converted) : '"tags" expected to be of type "map"';
    {
      tags: converted,
    }
  ),
  with_zone_id(value):: (
    local converted = value;
    assert std.isString(converted) : '"zone_id" expected to be of type "string"';
    {
      zone_id: converted,
    }
  ),
}
