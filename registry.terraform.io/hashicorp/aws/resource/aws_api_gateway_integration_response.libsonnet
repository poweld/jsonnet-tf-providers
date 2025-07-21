{
  local block = self,
  new(http_method, resource_id, rest_api_id, status_code):: (
    {}
    + block.with_http_method(http_method)
    + block.with_resource_id(resource_id)
    + block.with_rest_api_id(rest_api_id)
    + block.with_status_code(status_code)
  ),
  with_content_handling(value):: (
    local converted = value;
    assert std.isString(converted) : '"content_handling" expected to be of type "string"';
    {
      content_handling: converted,
    }
  ),
  with_http_method(value):: (
    local converted = value;
    assert std.isString(converted) : '"http_method" expected to be of type "string"';
    {
      http_method: converted,
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
  with_resource_id(value):: (
    local converted = value;
    assert std.isString(converted) : '"resource_id" expected to be of type "string"';
    {
      resource_id: converted,
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
  with_rest_api_id(value):: (
    local converted = value;
    assert std.isString(converted) : '"rest_api_id" expected to be of type "string"';
    {
      rest_api_id: converted,
    }
  ),
  with_selection_pattern(value):: (
    local converted = value;
    assert std.isString(converted) : '"selection_pattern" expected to be of type "string"';
    {
      selection_pattern: converted,
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
