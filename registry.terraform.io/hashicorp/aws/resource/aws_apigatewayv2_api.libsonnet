{
  local block = self,
  new(name, protocol_type):: (
    {}
    + block.with_name(name)
    + block.with_protocol_type(protocol_type)
  ),
  with_api_endpoint(value):: (
    local converted = value;
    assert std.isString(converted) : '"api_endpoint" expected to be of type "string"';
    {
      api_endpoint: converted,
    }
  ),
  with_api_key_selection_expression(value):: (
    local converted = value;
    assert std.isString(converted) : '"api_key_selection_expression" expected to be of type "string"';
    {
      api_key_selection_expression: converted,
    }
  ),
  with_arn(value):: (
    local converted = value;
    assert std.isString(converted) : '"arn" expected to be of type "string"';
    {
      arn: converted,
    }
  ),
  with_body(value):: (
    local converted = value;
    assert std.isString(converted) : '"body" expected to be of type "string"';
    {
      body: converted,
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
  with_disable_execute_api_endpoint(value):: (
    local converted = value;
    assert std.isBoolean(converted) : '"disable_execute_api_endpoint" expected to be of type "bool"';
    {
      disable_execute_api_endpoint: converted,
    }
  ),
  with_execution_arn(value):: (
    local converted = value;
    assert std.isString(converted) : '"execution_arn" expected to be of type "string"';
    {
      execution_arn: converted,
    }
  ),
  with_fail_on_warnings(value):: (
    local converted = value;
    assert std.isBoolean(converted) : '"fail_on_warnings" expected to be of type "bool"';
    {
      fail_on_warnings: converted,
    }
  ),
  with_id(value):: (
    local converted = value;
    assert std.isString(converted) : '"id" expected to be of type "string"';
    {
      id: converted,
    }
  ),
  with_ip_address_type(value):: (
    local converted = value;
    assert std.isString(converted) : '"ip_address_type" expected to be of type "string"';
    {
      ip_address_type: converted,
    }
  ),
  with_name(value):: (
    local converted = value;
    assert std.isString(converted) : '"name" expected to be of type "string"';
    {
      name: converted,
    }
  ),
  with_protocol_type(value):: (
    local converted = value;
    assert std.isString(converted) : '"protocol_type" expected to be of type "string"';
    {
      protocol_type: converted,
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
  with_route_key(value):: (
    local converted = value;
    assert std.isString(converted) : '"route_key" expected to be of type "string"';
    {
      route_key: converted,
    }
  ),
  with_route_selection_expression(value):: (
    local converted = value;
    assert std.isString(converted) : '"route_selection_expression" expected to be of type "string"';
    {
      route_selection_expression: converted,
    }
  ),
  with_tags(value):: (
    local converted = value;
    assert std.isObject(converted) : '"tags" expected to be of type "map"';
    {
      tags: converted,
    }
  ),
  with_tags_all(value):: (
    local converted = value;
    assert std.isObject(converted) : '"tags_all" expected to be of type "map"';
    {
      tags_all: converted,
    }
  ),
  with_target(value):: (
    local converted = value;
    assert std.isString(converted) : '"target" expected to be of type "string"';
    {
      target: converted,
    }
  ),
  with_version(value):: (
    local converted = value;
    assert std.isString(converted) : '"version" expected to be of type "string"';
    {
      version: converted,
    }
  ),
  cors_configuration:: {
    local block = self,
    new():: (
      {}
    ),
    with_allow_credentials(value):: (
      local converted = value;
      assert std.isBoolean(converted) : '"allow_credentials" expected to be of type "bool"';
      {
        allow_credentials: converted,
      }
    ),
    with_allow_headers(value):: (
      local converted = if std.isArray(value) then value else [value];
      assert (std.isArray(converted) && std.length(std.set(converted)) == std.length(converted)) : '"allow_headers" expected to be of type "set"';
      {
        allow_headers: converted,
      }
    ),
    with_allow_headers_mixin(value):: (
      local converted = if std.isArray(value) then value else [value];
      assert (std.isArray(converted) && std.length(std.set(converted)) == std.length(converted)) : '"allow_headers" expected to be of type "set"';
      {
        allow_headers+: converted,
      }
    ),
    with_allow_methods(value):: (
      local converted = if std.isArray(value) then value else [value];
      assert (std.isArray(converted) && std.length(std.set(converted)) == std.length(converted)) : '"allow_methods" expected to be of type "set"';
      {
        allow_methods: converted,
      }
    ),
    with_allow_methods_mixin(value):: (
      local converted = if std.isArray(value) then value else [value];
      assert (std.isArray(converted) && std.length(std.set(converted)) == std.length(converted)) : '"allow_methods" expected to be of type "set"';
      {
        allow_methods+: converted,
      }
    ),
    with_allow_origins(value):: (
      local converted = if std.isArray(value) then value else [value];
      assert (std.isArray(converted) && std.length(std.set(converted)) == std.length(converted)) : '"allow_origins" expected to be of type "set"';
      {
        allow_origins: converted,
      }
    ),
    with_allow_origins_mixin(value):: (
      local converted = if std.isArray(value) then value else [value];
      assert (std.isArray(converted) && std.length(std.set(converted)) == std.length(converted)) : '"allow_origins" expected to be of type "set"';
      {
        allow_origins+: converted,
      }
    ),
    with_expose_headers(value):: (
      local converted = if std.isArray(value) then value else [value];
      assert (std.isArray(converted) && std.length(std.set(converted)) == std.length(converted)) : '"expose_headers" expected to be of type "set"';
      {
        expose_headers: converted,
      }
    ),
    with_expose_headers_mixin(value):: (
      local converted = if std.isArray(value) then value else [value];
      assert (std.isArray(converted) && std.length(std.set(converted)) == std.length(converted)) : '"expose_headers" expected to be of type "set"';
      {
        expose_headers+: converted,
      }
    ),
    with_max_age(value):: (
      local converted = value;
      assert std.isNumber(converted) : '"max_age" expected to be of type "number"';
      {
        max_age: converted,
      }
    ),
  },
  with_cors_configuration(value):: (
    local converted = if std.isArray(value) then value else [value];
    {
      cors_configuration: value,
    }
  ),
  with_cors_configuration_mixin(value):: (
    local converted = if std.isArray(value) then value else [value];
    {
      cors_configuration+: converted,
    }
  ),
}
