{
  local block = self,
  new(auto_enable):: (
    {}
    + block.with_auto_enable(auto_enable)
  ),
  '#with_auto_enable':: 'Whether to enable Amazon Macie automatically for accounts that are added to the organization in AWS Organizations',
  with_auto_enable(value):: (
    local converted = value;
    assert std.isBoolean(converted) : '"auto_enable" expected to be of type "bool"';
    {
      auto_enable: converted,
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
