{
  local block = self,
  new(auto_scaling_configuration_arn):: (
    {}
    + block.with_auto_scaling_configuration_arn(auto_scaling_configuration_arn)
  ),
  with_auto_scaling_configuration_arn(value):: (
    local converted = value;
    assert std.isString(converted) : '"auto_scaling_configuration_arn" expected to be of type "string"';
    {
      auto_scaling_configuration_arn: converted,
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
