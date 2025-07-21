{
  local block = self,
  new(api_id, integration_type):: (
    {}
    + block.with_api_id(api_id)
    + block.with_integration_type(integration_type)
  ),
  with_api_id(value):: (
    local converted = value;
    assert std.isString(converted) : '"api_id" expected to be of type "string"';
    {
      api_id: converted,
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
  with_content_handling_strategy(value):: (
    local converted = value;
    assert std.isString(converted) : '"content_handling_strategy" expected to be of type "string"';
    {
      content_handling_strategy: converted,
    }
  ),
  with_credentials_arn(value):: (
    local converted = value;
    assert std.isString(converted) : '"credentials_arn" expected to be of type "string"';
    {
      credentials_arn: converted,
    }
  ),
  with_description(value):: (
    local converted = value;
    assert std.isString(converted) : '"description" expected to be of type "string"';
    {
      description: converted,
    }
  ),
  with_id(value):: (
    local converted = value;
    assert std.isString(converted) : '"id" expected to be of type "string"';
    {
      id: converted,
    }
  ),
  with_integration_method(value):: (
    local converted = value;
    assert std.isString(converted) : '"integration_method" expected to be of type "string"';
    {
      integration_method: converted,
    }
  ),
  with_integration_response_selection_expression(value):: (
    local converted = value;
    assert std.isString(converted) : '"integration_response_selection_expression" expected to be of type "string"';
    {
      integration_response_selection_expression: converted,
    }
  ),
  with_integration_subtype(value):: (
    local converted = value;
    assert std.isString(converted) : '"integration_subtype" expected to be of type "string"';
    {
      integration_subtype: converted,
    }
  ),
  with_integration_type(value):: (
    local converted = value;
    assert std.isString(converted) : '"integration_type" expected to be of type "string"';
    {
      integration_type: converted,
    }
  ),
  with_integration_uri(value):: (
    local converted = value;
    assert std.isString(converted) : '"integration_uri" expected to be of type "string"';
    {
      integration_uri: converted,
    }
  ),
  with_passthrough_behavior(value):: (
    local converted = value;
    assert std.isString(converted) : '"passthrough_behavior" expected to be of type "string"';
    {
      passthrough_behavior: converted,
    }
  ),
  with_payload_format_version(value):: (
    local converted = value;
    assert std.isString(converted) : '"payload_format_version" expected to be of type "string"';
    {
      payload_format_version: converted,
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
  with_template_selection_expression(value):: (
    local converted = value;
    assert std.isString(converted) : '"template_selection_expression" expected to be of type "string"';
    {
      template_selection_expression: converted,
    }
  ),
  with_timeout_milliseconds(value):: (
    local converted = value;
    assert std.isNumber(converted) : '"timeout_milliseconds" expected to be of type "number"';
    {
      timeout_milliseconds: converted,
    }
  ),
  response_parameters:: {
    local block = self,
    new(mappings, status_code):: (
      {}
      + block.with_mappings(mappings)
      + block.with_status_code(status_code)
    ),
    with_mappings(value):: (
      local converted = value;
      assert std.isObject(converted) : '"mappings" expected to be of type "map"';
      {
        mappings: converted,
      }
    ),
    with_status_code(value):: (
      local converted = value;
      assert std.isString(converted) : '"status_code" expected to be of type "string"';
      {
        status_code: converted,
      }
    ),
  },
  tls_config:: {
    local block = self,
    new():: (
      {}
    ),
    with_server_name_to_verify(value):: (
      local converted = value;
      assert std.isString(converted) : '"server_name_to_verify" expected to be of type "string"';
      {
        server_name_to_verify: converted,
      }
    ),
  },
  with_response_parameters(value):: (
    local converted = if std.isArray(value) then value else [value];
    {
      response_parameters: value,
    }
  ),
  with_tls_config(value):: (
    local converted = if std.isArray(value) then value else [value];
    {
      tls_config: value,
    }
  ),
  with_response_parameters_mixin(value):: (
    local converted = if std.isArray(value) then value else [value];
    {
      response_parameters+: converted,
    }
  ),
  with_tls_config_mixin(value):: (
    local converted = if std.isArray(value) then value else [value];
    {
      tls_config+: converted,
    }
  ),
}
