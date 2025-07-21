{
  local block = self,
  new(voice_connector_id):: (
    {}
    + block.with_voice_connector_id(voice_connector_id)
  ),
  with_disabled(value):: (
    local converted = value;
    assert std.isBoolean(converted) : '"disabled" expected to be of type "bool"';
    {
      disabled: converted,
    }
  ),
  with_id(value):: (
    local converted = value;
    assert std.isString(converted) : '"id" expected to be of type "string"';
    {
      id: converted,
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
  with_voice_connector_id(value):: (
    local converted = value;
    assert std.isString(converted) : '"voice_connector_id" expected to be of type "string"';
    {
      voice_connector_id: converted,
    }
  ),
  route:: {
    local block = self,
    new(host, priority, protocol, weight):: (
      {}
      + block.with_host(host)
      + block.with_priority(priority)
      + block.with_protocol(protocol)
      + block.with_weight(weight)
    ),
    with_host(value):: (
      local converted = value;
      assert std.isString(converted) : '"host" expected to be of type "string"';
      {
        host: converted,
      }
    ),
    with_port(value):: (
      local converted = value;
      assert std.isNumber(converted) : '"port" expected to be of type "number"';
      {
        port: converted,
      }
    ),
    with_priority(value):: (
      local converted = value;
      assert std.isNumber(converted) : '"priority" expected to be of type "number"';
      {
        priority: converted,
      }
    ),
    with_protocol(value):: (
      local converted = value;
      assert std.isString(converted) : '"protocol" expected to be of type "string"';
      {
        protocol: converted,
      }
    ),
    with_weight(value):: (
      local converted = value;
      assert std.isNumber(converted) : '"weight" expected to be of type "number"';
      {
        weight: converted,
      }
    ),
  },
  with_route(value):: (
    local converted = if std.isArray(value) then value else [value];
    {
      route: value,
    }
  ),
  with_route_mixin(value):: (
    local converted = if std.isArray(value) then value else [value];
    {
      route+: converted,
    }
  ),
}
