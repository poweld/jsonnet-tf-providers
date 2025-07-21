{
  local block = self,
  new(api_id, route_key):: (
    {}
    + block.with_api_id(api_id)
    + block.with_route_key(route_key)
  ),
  with_api_id(value):: (
    local converted = value;
    assert std.isString(converted) : '"api_id" expected to be of type "string"';
    {
      api_id: converted,
    }
  ),
  with_api_key_required(value):: (
    local converted = value;
    assert std.isBoolean(converted) : '"api_key_required" expected to be of type "bool"';
    {
      api_key_required: converted,
    }
  ),
  with_authorization_scopes(value):: (
    local converted = if std.isArray(value) then value else [value];
    assert (std.isArray(converted) && std.length(std.set(converted)) == std.length(converted)) : '"authorization_scopes" expected to be of type "set"';
    {
      authorization_scopes: converted,
    }
  ),
  with_authorization_scopes_mixin(value):: (
    local converted = if std.isArray(value) then value else [value];
    assert (std.isArray(converted) && std.length(std.set(converted)) == std.length(converted)) : '"authorization_scopes" expected to be of type "set"';
    {
      authorization_scopes+: converted,
    }
  ),
  with_authorization_type(value):: (
    local converted = value;
    assert std.isString(converted) : '"authorization_type" expected to be of type "string"';
    {
      authorization_type: converted,
    }
  ),
  with_authorizer_id(value):: (
    local converted = value;
    assert std.isString(converted) : '"authorizer_id" expected to be of type "string"';
    {
      authorizer_id: converted,
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
  with_operation_name(value):: (
    local converted = value;
    assert std.isString(converted) : '"operation_name" expected to be of type "string"';
    {
      operation_name: converted,
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
  with_request_models(value):: (
    local converted = value;
    assert std.isObject(converted) : '"request_models" expected to be of type "map"';
    {
      request_models: converted,
    }
  ),
  with_route_key(value):: (
    local converted = value;
    assert std.isString(converted) : '"route_key" expected to be of type "string"';
    {
      route_key: converted,
    }
  ),
  with_route_response_selection_expression(value):: (
    local converted = value;
    assert std.isString(converted) : '"route_response_selection_expression" expected to be of type "string"';
    {
      route_response_selection_expression: converted,
    }
  ),
  with_target(value):: (
    local converted = value;
    assert std.isString(converted) : '"target" expected to be of type "string"';
    {
      target: converted,
    }
  ),
  request_parameter:: {
    local block = self,
    new(request_parameter_key, required):: (
      {}
      + block.with_request_parameter_key(request_parameter_key)
      + block.with_required(required)
    ),
    with_request_parameter_key(value):: (
      local converted = value;
      assert std.isString(converted) : '"request_parameter_key" expected to be of type "string"';
      {
        request_parameter_key: converted,
      }
    ),
    with_required(value):: (
      local converted = value;
      assert std.isBoolean(converted) : '"required" expected to be of type "bool"';
      {
        required: converted,
      }
    ),
  },
  with_request_parameter(value):: (
    local converted = if std.isArray(value) then value else [value];
    {
      request_parameter: value,
    }
  ),
  with_request_parameter_mixin(value):: (
    local converted = if std.isArray(value) then value else [value];
    {
      request_parameter+: converted,
    }
  ),
}
