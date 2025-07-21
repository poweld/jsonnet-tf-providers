{
  local block = self,
  new(name, rest_api_id):: (
    {}
    + block.with_name(name)
    + block.with_rest_api_id(rest_api_id)
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
  with_rest_api_id(value):: (
    local converted = value;
    assert std.isString(converted) : '"rest_api_id" expected to be of type "string"';
    {
      rest_api_id: converted,
    }
  ),
  with_validate_request_body(value):: (
    local converted = value;
    assert std.isBoolean(converted) : '"validate_request_body" expected to be of type "bool"';
    {
      validate_request_body: converted,
    }
  ),
  with_validate_request_parameters(value):: (
    local converted = value;
    assert std.isBoolean(converted) : '"validate_request_parameters" expected to be of type "bool"';
    {
      validate_request_parameters: converted,
    }
  ),
}
