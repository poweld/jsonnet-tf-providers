{
  local block = self,
  new():: (
    {}
  ),
  with_broker_engine_types(value):: (
    local converted = if std.isArray(value) then value else [value];
    assert std.isArray(converted) : '"broker_engine_types" expected to be of type "list"';
    {
      broker_engine_types: converted,
    }
  ),
  with_broker_engine_types_mixin(value):: (
    local converted = if std.isArray(value) then value else [value];
    assert std.isArray(converted) : '"broker_engine_types" expected to be of type "list"';
    {
      broker_engine_types+: converted,
    }
  ),
  with_engine_type(value):: (
    local converted = value;
    assert std.isString(converted) : '"engine_type" expected to be of type "string"';
    {
      engine_type: converted,
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
}
