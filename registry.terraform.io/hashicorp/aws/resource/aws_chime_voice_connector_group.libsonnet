{
  local block = self,
  new(name):: (
    {}
    + block.with_name(name)
  ),
  with_id(value):: (
    local converted = value;
    assert std.isString(converted) : '"id" expected to be of type "string"';
    {
      id: converted,
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
  connector:: {
    local block = self,
    new(priority, voice_connector_id):: (
      {}
      + block.with_priority(priority)
      + block.with_voice_connector_id(voice_connector_id)
    ),
    with_priority(value):: (
      local converted = value;
      assert std.isNumber(converted) : '"priority" expected to be of type "number"';
      {
        priority: converted,
      }
    ),
    with_voice_connector_id(value):: (
      local converted = value;
      assert std.isString(converted) : '"voice_connector_id" expected to be of type "string"';
      {
        voice_connector_id: converted,
      }
    ),
  },
  with_connector(value):: (
    local converted = if std.isArray(value) then value else [value];
    {
      connector: value,
    }
  ),
  with_connector_mixin(value):: (
    local converted = if std.isArray(value) then value else [value];
    {
      connector+: converted,
    }
  ),
}
