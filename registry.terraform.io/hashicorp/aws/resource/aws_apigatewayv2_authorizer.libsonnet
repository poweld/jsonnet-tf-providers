{
  local block = self,
  new(api_id, authorizer_type, name):: (
    {}
    + block.with_api_id(api_id)
    + block.with_authorizer_type(authorizer_type)
    + block.with_name(name)
  ),
  with_api_id(value):: (
    local converted = value;
    assert std.isString(converted) : '"api_id" expected to be of type "string"';
    {
      api_id: converted,
    }
  ),
  with_authorizer_credentials_arn(value):: (
    local converted = value;
    assert std.isString(converted) : '"authorizer_credentials_arn" expected to be of type "string"';
    {
      authorizer_credentials_arn: converted,
    }
  ),
  with_authorizer_payload_format_version(value):: (
    local converted = value;
    assert std.isString(converted) : '"authorizer_payload_format_version" expected to be of type "string"';
    {
      authorizer_payload_format_version: converted,
    }
  ),
  with_authorizer_result_ttl_in_seconds(value):: (
    local converted = value;
    assert std.isNumber(converted) : '"authorizer_result_ttl_in_seconds" expected to be of type "number"';
    {
      authorizer_result_ttl_in_seconds: converted,
    }
  ),
  with_authorizer_type(value):: (
    local converted = value;
    assert std.isString(converted) : '"authorizer_type" expected to be of type "string"';
    {
      authorizer_type: converted,
    }
  ),
  with_authorizer_uri(value):: (
    local converted = value;
    assert std.isString(converted) : '"authorizer_uri" expected to be of type "string"';
    {
      authorizer_uri: converted,
    }
  ),
  with_enable_simple_responses(value):: (
    local converted = value;
    assert std.isBoolean(converted) : '"enable_simple_responses" expected to be of type "bool"';
    {
      enable_simple_responses: converted,
    }
  ),
  with_id(value):: (
    local converted = value;
    assert std.isString(converted) : '"id" expected to be of type "string"';
    {
      id: converted,
    }
  ),
  with_identity_sources(value):: (
    local converted = if std.isArray(value) then value else [value];
    assert (std.isArray(converted) && std.length(std.set(converted)) == std.length(converted)) : '"identity_sources" expected to be of type "set"';
    {
      identity_sources: converted,
    }
  ),
  with_identity_sources_mixin(value):: (
    local converted = if std.isArray(value) then value else [value];
    assert (std.isArray(converted) && std.length(std.set(converted)) == std.length(converted)) : '"identity_sources" expected to be of type "set"';
    {
      identity_sources+: converted,
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
  jwt_configuration:: {
    local block = self,
    new():: (
      {}
    ),
    with_audience(value):: (
      local converted = if std.isArray(value) then value else [value];
      assert (std.isArray(converted) && std.length(std.set(converted)) == std.length(converted)) : '"audience" expected to be of type "set"';
      {
        audience: converted,
      }
    ),
    with_audience_mixin(value):: (
      local converted = if std.isArray(value) then value else [value];
      assert (std.isArray(converted) && std.length(std.set(converted)) == std.length(converted)) : '"audience" expected to be of type "set"';
      {
        audience+: converted,
      }
    ),
    with_issuer(value):: (
      local converted = value;
      assert std.isString(converted) : '"issuer" expected to be of type "string"';
      {
        issuer: converted,
      }
    ),
  },
  timeouts:: {
    local block = self,
    new():: (
      {}
    ),
    with_delete(value):: (
      local converted = value;
      assert std.isString(converted) : '"delete" expected to be of type "string"';
      {
        delete: converted,
      }
    ),
  },
  with_jwt_configuration(value):: (
    local converted = if std.isArray(value) then value else [value];
    {
      jwt_configuration: value,
    }
  ),
  with_timeouts(value):: (
    local converted = value;
    {
      timeouts: value,
    }
  ),
  with_jwt_configuration_mixin(value):: (
    local converted = if std.isArray(value) then value else [value];
    {
      jwt_configuration+: converted,
    }
  ),
}
