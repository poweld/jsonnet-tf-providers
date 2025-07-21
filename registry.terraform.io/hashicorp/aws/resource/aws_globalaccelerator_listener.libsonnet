{
  local block = self,
  new(accelerator_arn, protocol):: (
    {}
    + block.with_accelerator_arn(accelerator_arn)
    + block.with_protocol(protocol)
  ),
  with_accelerator_arn(value):: (
    local converted = value;
    assert std.isString(converted) : '"accelerator_arn" expected to be of type "string"';
    {
      accelerator_arn: converted,
    }
  ),
  with_arn(value):: (
    local converted = value;
    assert std.isString(converted) : '"arn" expected to be of type "string"';
    {
      arn: converted,
    }
  ),
  with_client_affinity(value):: (
    local converted = value;
    assert std.isString(converted) : '"client_affinity" expected to be of type "string"';
    {
      client_affinity: converted,
    }
  ),
  with_id(value):: (
    local converted = value;
    assert std.isString(converted) : '"id" expected to be of type "string"';
    {
      id: converted,
    }
  ),
  with_protocol(value):: (
    local converted = value;
    assert std.isString(converted) : '"protocol" expected to be of type "string"';
    {
      protocol: converted,
    }
  ),
  port_range:: {
    local block = self,
    new():: (
      {}
    ),
    with_from_port(value):: (
      local converted = value;
      assert std.isNumber(converted) : '"from_port" expected to be of type "number"';
      {
        from_port: converted,
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
  with_port_range(value):: (
    local converted = if std.isArray(value) then value else [value];
    {
      port_range: value,
    }
  ),
  with_timeouts(value):: (
    local converted = value;
    {
      timeouts: value,
    }
  ),
  with_port_range_mixin(value):: (
    local converted = if std.isArray(value) then value else [value];
    {
      port_range+: converted,
    }
  ),
}
