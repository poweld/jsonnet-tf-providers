{
  local block = self,
  new(access_point_arn, policy):: (
    {}
    + block.with_access_point_arn(access_point_arn)
    + block.with_policy(policy)
  ),
  with_access_point_arn(value):: (
    local converted = value;
    assert std.isString(converted) : '"access_point_arn" expected to be of type "string"';
    {
      access_point_arn: converted,
    }
  ),
  with_has_public_access_policy(value):: (
    local converted = value;
    assert std.isBoolean(converted) : '"has_public_access_policy" expected to be of type "bool"';
    {
      has_public_access_policy: converted,
    }
  ),
  with_id(value):: (
    local converted = value;
    assert std.isString(converted) : '"id" expected to be of type "string"';
    {
      id: converted,
    }
  ),
  with_policy(value):: (
    local converted = value;
    assert std.isString(converted) : '"policy" expected to be of type "string"';
    {
      policy: converted,
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
