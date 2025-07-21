{
  local block = self,
  new(canary_arn, group_name):: (
    {}
    + block.with_canary_arn(canary_arn)
    + block.with_group_name(group_name)
  ),
  with_canary_arn(value):: (
    local converted = value;
    assert std.isString(converted) : '"canary_arn" expected to be of type "string"';
    {
      canary_arn: converted,
    }
  ),
  with_group_arn(value):: (
    local converted = value;
    assert std.isString(converted) : '"group_arn" expected to be of type "string"';
    {
      group_arn: converted,
    }
  ),
  with_group_id(value):: (
    local converted = value;
    assert std.isString(converted) : '"group_id" expected to be of type "string"';
    {
      group_id: converted,
    }
  ),
  with_group_name(value):: (
    local converted = value;
    assert std.isString(converted) : '"group_name" expected to be of type "string"';
    {
      group_name: converted,
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
