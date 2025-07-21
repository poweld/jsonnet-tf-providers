{
  local block = self,
  new(http_method, resource_id, rest_api_id, type):: (
    {}
    + block.with_http_method(http_method)
    + block.with_resource_id(resource_id)
    + block.with_rest_api_id(rest_api_id)
    + block.with_type(type)
  ),
  with_cache_key_parameters(value):: (
    local converted = if std.isArray(value) then value else [value];
    assert (std.isArray(converted) && std.length(std.set(converted)) == std.length(converted)) : '"cache_key_parameters" expected to be of type "set"';
    {
      cache_key_parameters: converted,
    }
  ),
  with_cache_key_parameters_mixin(value):: (
    local converted = if std.isArray(value) then value else [value];
    assert (std.isArray(converted) && std.length(std.set(converted)) == std.length(converted)) : '"cache_key_parameters" expected to be of type "set"';
    {
      cache_key_parameters+: converted,
    }
  ),
  with_cache_namespace(value):: (
    local converted = value;
    assert std.isString(converted) : '"cache_namespace" expected to be of type "string"';
    {
      cache_namespace: converted,
    }
  ),
  with_connection_id(value):: (
    local converted = value;
    assert std.isString(converted) : '"connection_id" expected to be of type "string"';
    {
      connection_id: converted,
    }
  ),
  with_connection_type(value):: (
    local converted = value;
    assert std.isString(converted) : '"connection_type" expected to be of type "string"';
    {
      connection_type: converted,
    }
  ),
  with_content_handling(value):: (
    local converted = value;
    assert std.isString(converted) : '"content_handling" expected to be of type "string"';
    {
      content_handling: converted,
    }
  ),
  with_credentials(value):: (
    local converted = value;
    assert std.isString(converted) : '"credentials" expected to be of type "string"';
    {
      credentials: converted,
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
  with_integration_http_method(value):: (
    local converted = value;
    assert std.isString(converted) : '"integration_http_method" expected to be of type "string"';
    {
      integration_http_method: converted,
    }
  ),
  with_passthrough_behavior(value):: (
    local converted = value;
    assert std.isString(converted) : '"passthrough_behavior" expected to be of type "string"';
    {
      passthrough_behavior: converted,
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
  with_request_parameters(value):: (
    local converted = value;
    assert std.isObject(converted) : '"request_parameters" expected to be of type "map"';
    {
      request_parameters: converted,
    }
  ),
  with_request_templates(value):: (
    local converted = value;
    assert std.isObject(converted) : '"request_templates" expected to be of type "map"';
    {
      request_templates: converted,
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
  with_timeout_milliseconds(value):: (
    local converted = value;
    assert std.isNumber(converted) : '"timeout_milliseconds" expected to be of type "number"';
    {
      timeout_milliseconds: converted,
    }
  ),
  with_type(value):: (
    local converted = value;
    assert std.isString(converted) : '"type" expected to be of type "string"';
    {
      type: converted,
    }
  ),
  with_uri(value):: (
    local converted = value;
    assert std.isString(converted) : '"uri" expected to be of type "string"';
    {
      uri: converted,
    }
  ),
  tls_config:: {
    local block = self,
    new():: (
      {}
    ),
    with_insecure_skip_verification(value):: (
      local converted = value;
      assert std.isBoolean(converted) : '"insecure_skip_verification" expected to be of type "bool"';
      {
        insecure_skip_verification: converted,
      }
    ),
  },
  with_tls_config(value):: (
    local converted = if std.isArray(value) then value else [value];
    {
      tls_config: value,
    }
  ),
  with_tls_config_mixin(value):: (
    local converted = if std.isArray(value) then value else [value];
    {
      tls_config+: converted,
    }
  ),
}
