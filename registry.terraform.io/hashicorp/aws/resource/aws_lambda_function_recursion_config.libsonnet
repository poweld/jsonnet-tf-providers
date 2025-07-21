{
  local block = self,
  new(function_name, recursive_loop):: (
    {}
    + block.with_function_name(function_name)
    + block.with_recursive_loop(recursive_loop)
  ),
  with_function_name(value):: (
    local converted = value;
    assert std.isString(converted) : '"function_name" expected to be of type "string"';
    {
      function_name: converted,
    }
  ),
  with_recursive_loop(value):: (
    local converted = value;
    assert std.isString(converted) : '"recursive_loop" expected to be of type "string"';
    {
      recursive_loop: converted,
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
