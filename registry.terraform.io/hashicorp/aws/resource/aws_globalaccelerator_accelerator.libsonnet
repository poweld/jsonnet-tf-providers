{
  local block = self,
  new(name):: (
    {}
    + block.with_name(name)
  ),
  with_arn(value):: (
    local converted = value;
    assert std.isString(converted) : '"arn" expected to be of type "string"';
    {
      arn: converted,
    }
  ),
  with_dns_name(value):: (
    local converted = value;
    assert std.isString(converted) : '"dns_name" expected to be of type "string"';
    {
      dns_name: converted,
    }
  ),
  with_dual_stack_dns_name(value):: (
    local converted = value;
    assert std.isString(converted) : '"dual_stack_dns_name" expected to be of type "string"';
    {
      dual_stack_dns_name: converted,
    }
  ),
  with_enabled(value):: (
    local converted = value;
    assert std.isBoolean(converted) : '"enabled" expected to be of type "bool"';
    {
      enabled: converted,
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
  with_ip_address_type(value):: (
    local converted = value;
    assert std.isString(converted) : '"ip_address_type" expected to be of type "string"';
    {
      ip_address_type: converted,
    }
  ),
  with_ip_addresses(value):: (
    local converted = if std.isArray(value) then value else [value];
    assert std.isArray(converted) : '"ip_addresses" expected to be of type "list"';
    {
      ip_addresses: converted,
    }
  ),
  with_ip_addresses_mixin(value):: (
    local converted = if std.isArray(value) then value else [value];
    assert std.isArray(converted) : '"ip_addresses" expected to be of type "list"';
    {
      ip_addresses+: converted,
    }
  ),
  with_ip_sets(value):: (
    local converted = if std.isArray(value) then value else [value];
    assert std.isArray(converted) : '"ip_sets" expected to be of type "list"';
    {
      ip_sets: converted,
    }
  ),
  with_ip_sets_mixin(value):: (
    local converted = if std.isArray(value) then value else [value];
    assert std.isArray(converted) : '"ip_sets" expected to be of type "list"';
    {
      ip_sets+: converted,
    }
  ),
  with_name(value):: (
    local converted = value;
    assert std.isString(converted) : '"name" expected to be of type "string"';
    {
      name: converted,
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
  attributes:: {
    local block = self,
    new():: (
      {}
    ),
    with_flow_logs_enabled(value):: (
      local converted = value;
      assert std.isBoolean(converted) : '"flow_logs_enabled" expected to be of type "bool"';
      {
        flow_logs_enabled: converted,
      }
    ),
    with_flow_logs_s3_bucket(value):: (
      local converted = value;
      assert std.isString(converted) : '"flow_logs_s3_bucket" expected to be of type "string"';
      {
        flow_logs_s3_bucket: converted,
      }
    ),
    with_flow_logs_s3_prefix(value):: (
      local converted = value;
      assert std.isString(converted) : '"flow_logs_s3_prefix" expected to be of type "string"';
      {
        flow_logs_s3_prefix: converted,
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
    with_update(value):: (
      local converted = value;
      assert std.isString(converted) : '"update" expected to be of type "string"';
      {
        update: converted,
      }
    ),
  },
  with_attributes(value):: (
    local converted = if std.isArray(value) then value else [value];
    {
      attributes: value,
    }
  ),
  with_timeouts(value):: (
    local converted = value;
    {
      timeouts: value,
    }
  ),
  with_attributes_mixin(value):: (
    local converted = if std.isArray(value) then value else [value];
    {
      attributes+: converted,
    }
  ),
}
