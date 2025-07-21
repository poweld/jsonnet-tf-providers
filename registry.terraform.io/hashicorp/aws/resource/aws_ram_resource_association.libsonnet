{
  local block = self,
  new(resource_arn, resource_share_arn):: (
    {}
    + block.with_resource_arn(resource_arn)
    + block.with_resource_share_arn(resource_share_arn)
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
  with_resource_arn(value):: (
    local converted = value;
    assert std.isString(converted) : '"resource_arn" expected to be of type "string"';
    {
      resource_arn: converted,
    }
  ),
  with_resource_share_arn(value):: (
    local converted = value;
    assert std.isString(converted) : '"resource_share_arn" expected to be of type "string"';
    {
      resource_share_arn: converted,
    }
  ),
}
