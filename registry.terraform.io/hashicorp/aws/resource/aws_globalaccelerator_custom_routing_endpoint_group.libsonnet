{
  local block = self,
  new(listener_arn):: (
    {}
    + block.with_listener_arn(listener_arn)
  ),
  with_arn(value):: (
    local converted = value;
    assert std.isString(converted) : '"arn" expected to be of type "string"';
    {
      arn: converted,
    }
  ),
  with_endpoint_group_region(value):: (
    local converted = value;
    assert std.isString(converted) : '"endpoint_group_region" expected to be of type "string"';
    {
      endpoint_group_region: converted,
    }
  ),
  with_id(value):: (
    local converted = value;
    assert std.isString(converted) : '"id" expected to be of type "string"';
    {
      id: converted,
    }
  ),
  with_listener_arn(value):: (
    local converted = value;
    assert std.isString(converted) : '"listener_arn" expected to be of type "string"';
    {
      listener_arn: converted,
    }
  ),
  destination_configuration:: {
    local block = self,
    new(from_port, protocols, to_port):: (
      {}
      + block.with_from_port(from_port)
      + block.with_protocols(protocols)
      + block.with_to_port(to_port)
    ),
    with_from_port(value):: (
      local converted = value;
      assert std.isNumber(converted) : '"from_port" expected to be of type "number"';
      {
        from_port: converted,
      }
    ),
    with_protocols(value):: (
      local converted = if std.isArray(value) then value else [value];
      assert (std.isArray(converted) && std.length(std.set(converted)) == std.length(converted)) : '"protocols" expected to be of type "set"';
      {
        protocols: converted,
      }
    ),
    with_protocols_mixin(value):: (
      local converted = if std.isArray(value) then value else [value];
      assert (std.isArray(converted) && std.length(std.set(converted)) == std.length(converted)) : '"protocols" expected to be of type "set"';
      {
        protocols+: converted,
      }
    ),
    with_to_port(value):: (
      local converted = value;
      assert std.isNumber(converted) : '"to_port" expected to be of type "number"';
      {
        to_port: converted,
      }
    ),
  },
  endpoint_configuration:: {
    local block = self,
    new():: (
      {}
    ),
    with_endpoint_id(value):: (
      local converted = value;
      assert std.isString(converted) : '"endpoint_id" expected to be of type "string"';
      {
        endpoint_id: converted,
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
  },
  with_destination_configuration(value):: (
    local converted = if std.isArray(value) then value else [value];
    {
      destination_configuration: value,
    }
  ),
  with_endpoint_configuration(value):: (
    local converted = if std.isArray(value) then value else [value];
    {
      endpoint_configuration: value,
    }
  ),
  with_timeouts(value):: (
    local converted = value;
    {
      timeouts: value,
    }
  ),
  with_destination_configuration_mixin(value):: (
    local converted = if std.isArray(value) then value else [value];
    {
      destination_configuration+: converted,
    }
  ),
  with_endpoint_configuration_mixin(value):: (
    local converted = if std.isArray(value) then value else [value];
    {
      endpoint_configuration+: converted,
    }
  ),
}
