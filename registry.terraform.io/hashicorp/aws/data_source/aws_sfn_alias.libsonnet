{
  local block = self,
  new(name, statemachine_arn):: (
    {}
    + block.with_name(name)
    + block.with_statemachine_arn(statemachine_arn)
  ),
  with_arn(value):: (
    local converted = value;
    assert std.isString(converted) : '"arn" expected to be of type "string"';
    {
      arn: converted,
    }
  ),
  with_creation_date(value):: (
    local converted = value;
    assert std.isString(converted) : '"creation_date" expected to be of type "string"';
    {
      creation_date: converted,
    }
  ),
  with_description(value):: (
    local converted = value;
    assert std.isString(converted) : '"description" expected to be of type "string"';
    {
      description: converted,
    }
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
  with_routing_configuration(value):: (
    local converted = if std.isArray(value) then value else [value];
    assert std.isArray(converted) : '"routing_configuration" expected to be of type "list"';
    {
      routing_configuration: converted,
    }
  ),
  with_routing_configuration_mixin(value):: (
    local converted = if std.isArray(value) then value else [value];
    assert std.isArray(converted) : '"routing_configuration" expected to be of type "list"';
    {
      routing_configuration+: converted,
    }
  ),
  with_statemachine_arn(value):: (
    local converted = value;
    assert std.isString(converted) : '"statemachine_arn" expected to be of type "string"';
    {
      statemachine_arn: converted,
    }
  ),
}
