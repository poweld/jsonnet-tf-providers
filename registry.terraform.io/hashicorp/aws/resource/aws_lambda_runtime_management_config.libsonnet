{
  local block = self,
  new(function_name):: (
    {}
    + block.with_function_name(function_name)
  ),
  with_function_arn(value):: (
    local converted = value;
    assert std.isString(converted) : '"function_arn" expected to be of type "string"';
    {
      function_arn: converted,
    }
  ),
  with_function_name(value):: (
    local converted = value;
    assert std.isString(converted) : '"function_name" expected to be of type "string"';
    {
      function_name: converted,
    }
  ),
  with_qualifier(value):: (
    local converted = value;
    assert std.isString(converted) : '"qualifier" expected to be of type "string"';
    {
      qualifier: converted,
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
  with_runtime_version_arn(value):: (
    local converted = value;
    assert std.isString(converted) : '"runtime_version_arn" expected to be of type "string"';
    {
      runtime_version_arn: converted,
    }
  ),
  with_update_runtime_on(value):: (
    local converted = value;
    assert std.isString(converted) : '"update_runtime_on" expected to be of type "string"';
    {
      update_runtime_on: converted,
    }
  ),
}
