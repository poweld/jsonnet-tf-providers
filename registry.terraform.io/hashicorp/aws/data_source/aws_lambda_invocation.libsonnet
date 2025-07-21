{
  local block = self,
  new(function_name, input):: (
    {}
    + block.with_function_name(function_name)
    + block.with_input(input)
  ),
  with_function_name(value):: (
    local converted = value;
    assert std.isString(converted) : '"function_name" expected to be of type "string"';
    {
      function_name: converted,
    }
  ),
  with_id(value):: (
    local converted = value;
    assert std.isString(converted) : '"id" expected to be of type "string"';
    {
      id: converted,
    }
  ),
  with_input(value):: (
    local converted = value;
    assert std.isString(converted) : '"input" expected to be of type "string"';
    {
      input: converted,
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
  with_result(value):: (
    local converted = value;
    assert std.isString(converted) : '"result" expected to be of type "string"';
    {
      result: converted,
    }
  ),
}
