{
  local block = self,
  new(api_id, integration_id, integration_response_key):: (
    {}
    + block.with_api_id(api_id)
    + block.with_integration_id(integration_id)
    + block.with_integration_response_key(integration_response_key)
  ),
  with_api_id(value):: (
    local converted = value;
    assert std.isString(converted) : '"api_id" expected to be of type "string"';
    {
      api_id: converted,
    }
  ),
  with_content_handling_strategy(value):: (
    local converted = value;
    assert std.isString(converted) : '"content_handling_strategy" expected to be of type "string"';
    {
      content_handling_strategy: converted,
    }
  ),
  with_id(value):: (
    local converted = value;
    assert std.isString(converted) : '"id" expected to be of type "string"';
    {
      id: converted,
    }
  ),
  with_integration_id(value):: (
    local converted = value;
    assert std.isString(converted) : '"integration_id" expected to be of type "string"';
    {
      integration_id: converted,
    }
  ),
  with_integration_response_key(value):: (
    local converted = value;
    assert std.isString(converted) : '"integration_response_key" expected to be of type "string"';
    {
      integration_response_key: converted,
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
  with_response_templates(value):: (
    local converted = value;
    assert std.isObject(converted) : '"response_templates" expected to be of type "map"';
    {
      response_templates: converted,
    }
  ),
  with_template_selection_expression(value):: (
    local converted = value;
    assert std.isString(converted) : '"template_selection_expression" expected to be of type "string"';
    {
      template_selection_expression: converted,
    }
  ),
}
