{
  local block = self,
  new(statemachine_arn):: (
    {}
    + block.with_statemachine_arn(statemachine_arn)
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
  with_statemachine_arn(value):: (
    local converted = value;
    assert std.isString(converted) : '"statemachine_arn" expected to be of type "string"';
    {
      statemachine_arn: converted,
    }
  ),
  with_statemachine_versions(value):: (
    local converted = if std.isArray(value) then value else [value];
    assert std.isArray(converted) : '"statemachine_versions" expected to be of type "list"';
    {
      statemachine_versions: converted,
    }
  ),
  with_statemachine_versions_mixin(value):: (
    local converted = if std.isArray(value) then value else [value];
    assert std.isArray(converted) : '"statemachine_versions" expected to be of type "list"';
    {
      statemachine_versions+: converted,
    }
  ),
}
