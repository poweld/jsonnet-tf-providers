{
  local block = self,
  new(authorization, http_method, resource_id, rest_api_id):: (
    {}
    + block.with_authorization(authorization)
    + block.with_http_method(http_method)
    + block.with_resource_id(resource_id)
    + block.with_rest_api_id(rest_api_id)
  ),
  with_api_key_required(value):: (
    local converted = value;
    assert std.isBoolean(converted) : '"api_key_required" expected to be of type "bool"';
    {
      api_key_required: converted,
    }
  ),
  with_authorization(value):: (
    local converted = value;
    assert std.isString(converted) : '"authorization" expected to be of type "string"';
    {
      authorization: converted,
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
  with_authorizer_id(value):: (
    local converted = value;
    assert std.isString(converted) : '"authorizer_id" expected to be of type "string"';
    {
      authorizer_id: converted,
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
  with_request_parameters(value):: (
    local converted = value;
    assert std.isObject(converted) : '"request_parameters" expected to be of type "map"';
    {
      request_parameters: converted,
    }
  ),
  with_request_validator_id(value):: (
    local converted = value;
    assert std.isString(converted) : '"request_validator_id" expected to be of type "string"';
    {
      request_validator_id: converted,
    }
  ),
  with_resource_id(value):: (
    local converted = value;
    assert std.isString(converted) : '"resource_id" expected to be of type "string"';
    {
      resource_id: converted,
    }
  ),
  with_rest_api_id(value):: (
    local converted = value;
    assert std.isString(converted) : '"rest_api_id" expected to be of type "string"';
    {
      rest_api_id: converted,
    }
  ),
}
