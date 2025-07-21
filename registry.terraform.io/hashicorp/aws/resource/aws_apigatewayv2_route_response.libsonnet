{
  local block = self,
  new(api_id, route_id, route_response_key):: (
    {}
    + block.with_api_id(api_id)
    + block.with_route_id(route_id)
    + block.with_route_response_key(route_response_key)
  ),
  with_api_id(value):: (
    local converted = value;
    assert std.isString(converted) : '"api_id" expected to be of type "string"';
    {
      api_id: converted,
    }
  ),
  with_id(value):: (
    local converted = value;
    assert std.isString(converted) : '"id" expected to be of type "string"';
    {
      id: converted,
    }
  ),
  with_model_selection_expression(value):: (
    local converted = value;
    assert std.isString(converted) : '"model_selection_expression" expected to be of type "string"';
    {
      model_selection_expression: converted,
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
  with_response_models(value):: (
    local converted = value;
    assert std.isObject(converted) : '"response_models" expected to be of type "map"';
    {
      response_models: converted,
    }
  ),
  with_route_id(value):: (
    local converted = value;
    assert std.isString(converted) : '"route_id" expected to be of type "string"';
    {
      route_id: converted,
    }
  ),
  with_route_response_key(value):: (
    local converted = value;
    assert std.isString(converted) : '"route_response_key" expected to be of type "string"';
    {
      route_response_key: converted,
    }
  ),
}
