{
  local block = self,
  new(response_type, rest_api_id):: (
    {}
    + block.with_response_type(response_type)
    + block.with_rest_api_id(rest_api_id)
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
  with_response_parameters(value):: (
    local converted = value;
    assert std.isObject(converted) : '"response_parameters" expected to be of type "map"';
    {
      response_parameters: converted,
    }
  ),
  with_response_templates(value):: (
    local converted = value;
    assert std.isObject(converted) : '"response_templates" expected to be of type "map"';
    {
      response_templates: converted,
    }
  ),
  with_response_type(value):: (
    local converted = value;
    assert std.isString(converted) : '"response_type" expected to be of type "string"';
    {
      response_type: converted,
    }
  ),
  with_rest_api_id(value):: (
    local converted = value;
    assert std.isString(converted) : '"rest_api_id" expected to be of type "string"';
    {
      rest_api_id: converted,
    }
  ),
  with_status_code(value):: (
    local converted = value;
    assert std.isString(converted) : '"status_code" expected to be of type "string"';
    {
      status_code: converted,
    }
  ),
}
