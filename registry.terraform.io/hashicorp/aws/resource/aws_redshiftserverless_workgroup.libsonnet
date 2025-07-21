{
  local block = self,
  new(namespace_name, workgroup_name):: (
    {}
    + block.with_namespace_name(namespace_name)
    + block.with_workgroup_name(workgroup_name)
  ),
  with_arn(value):: (
    local converted = value;
    assert std.isString(converted) : '"arn" expected to be of type "string"';
    {
      arn: converted,
    }
  ),
  with_base_capacity(value):: (
    local converted = value;
    assert std.isNumber(converted) : '"base_capacity" expected to be of type "number"';
    {
      base_capacity: converted,
    }
  ),
  with_endpoint(value):: (
    local converted = if std.isArray(value) then value else [value];
    assert std.isArray(converted) : '"endpoint" expected to be of type "list"';
    {
      endpoint: converted,
    }
  ),
  with_endpoint_mixin(value):: (
    local converted = if std.isArray(value) then value else [value];
    assert std.isArray(converted) : '"endpoint" expected to be of type "list"';
    {
      endpoint+: converted,
    }
  ),
  with_enhanced_vpc_routing(value):: (
    local converted = value;
    assert std.isBoolean(converted) : '"enhanced_vpc_routing" expected to be of type "bool"';
    {
      enhanced_vpc_routing: converted,
    }
  ),
  with_id(value):: (
    local converted = value;
    assert std.isString(converted) : '"id" expected to be of type "string"';
    {
      id: converted,
    }
  ),
  with_max_capacity(value):: (
    local converted = value;
    assert std.isNumber(converted) : '"max_capacity" expected to be of type "number"';
    {
      max_capacity: converted,
    }
  ),
  with_namespace_name(value):: (
    local converted = value;
    assert std.isString(converted) : '"namespace_name" expected to be of type "string"';
    {
      namespace_name: converted,
    }
  ),
  with_port(value):: (
    local converted = value;
    assert std.isNumber(converted) : '"port" expected to be of type "number"';
    {
      port: converted,
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
  with_tags_all(value):: (
    local converted = value;
    assert std.isObject(converted) : '"tags_all" expected to be of type "map"';
    {
      tags_all: converted,
    }
  ),
  with_track_name(value):: (
    local converted = value;
    assert std.isString(converted) : '"track_name" expected to be of type "string"';
    {
      track_name: converted,
    }
  ),
  with_workgroup_id(value):: (
    local converted = value;
    assert std.isString(converted) : '"workgroup_id" expected to be of type "string"';
    {
      workgroup_id: converted,
    }
  ),
  with_workgroup_name(value):: (
    local converted = value;
    assert std.isString(converted) : '"workgroup_name" expected to be of type "string"';
    {
      workgroup_name: converted,
    }
  ),
  config_parameter:: {
    local block = self,
    new(parameter_key, parameter_value):: (
      {}
      + block.with_parameter_key(parameter_key)
      + block.with_parameter_value(parameter_value)
    ),
    with_parameter_key(value):: (
      local converted = value;
      assert std.isString(converted) : '"parameter_key" expected to be of type "string"';
      {
        parameter_key: converted,
      }
    ),
    with_parameter_value(value):: (
      local converted = value;
      assert std.isString(converted) : '"parameter_value" expected to be of type "string"';
      {
        parameter_value: converted,
      }
    ),
  },
  price_performance_target:: {
    local block = self,
    new(enabled):: (
      {}
      + block.with_enabled(enabled)
    ),
    with_enabled(value):: (
      local converted = value;
      assert std.isBoolean(converted) : '"enabled" expected to be of type "bool"';
      {
        enabled: converted,
      }
    ),
    with_level(value):: (
      local converted = value;
      assert std.isNumber(converted) : '"level" expected to be of type "number"';
      {
        level: converted,
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
  with_config_parameter(value):: (
    local converted = if std.isArray(value) then value else [value];
    {
      config_parameter: value,
    }
  ),
  with_price_performance_target(value):: (
    local converted = if std.isArray(value) then value else [value];
    {
      price_performance_target: value,
    }
  ),
  with_timeouts(value):: (
    local converted = value;
    {
      timeouts: value,
    }
  ),
  with_config_parameter_mixin(value):: (
    local converted = if std.isArray(value) then value else [value];
    {
      config_parameter+: converted,
    }
  ),
  with_price_performance_target_mixin(value):: (
    local converted = if std.isArray(value) then value else [value];
    {
      price_performance_target+: converted,
    }
  ),
}
