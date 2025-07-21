{
  local block = self,
  new(authorization_type, function_name):: (
    {}
    + block.with_authorization_type(authorization_type)
    + block.with_function_name(function_name)
  ),
  with_authorization_type(value):: (
    local converted = value;
    assert std.isString(converted) : '"authorization_type" expected to be of type "string"';
    {
      authorization_type: converted,
    }
  ),
  with_function_arn(value):: (
    local converted = value;
    assert std.isString(converted) : '"function_arn" expected to be of type "string"';
    {
      function_arn: converted,
    }
  ),
  with_function_name(value):: (
    local converted = value;
    assert std.isString(converted) : '"function_name" expected to be of type "string"';
    {
      function_name: converted,
    }
  ),
  with_function_url(value):: (
    local converted = value;
    assert std.isString(converted) : '"function_url" expected to be of type "string"';
    {
      function_url: converted,
    }
  ),
  with_id(value):: (
    local converted = value;
    assert std.isString(converted) : '"id" expected to be of type "string"';
    {
      id: converted,
    }
  ),
  with_invoke_mode(value):: (
    local converted = value;
    assert std.isString(converted) : '"invoke_mode" expected to be of type "string"';
    {
      invoke_mode: converted,
    }
  ),
  with_qualifier(value):: (
    local converted = value;
    assert std.isString(converted) : '"qualifier" expected to be of type "string"';
    {
      qualifier: converted,
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
  with_url_id(value):: (
    local converted = value;
    assert std.isString(converted) : '"url_id" expected to be of type "string"';
    {
      url_id: converted,
    }
  ),
  cors:: {
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
  timeouts:: {
    local block = self,
    new():: (
      {}
    ),
    with_create(value):: (
      local converted = value;
      assert std.isString(converted) : '"create" expected to be of type "string"';
      {
        create: converted,
      }
    ),
  },
  with_cors(value):: (
    local converted = if std.isArray(value) then value else [value];
    {
      cors: value,
    }
  ),
  with_timeouts(value):: (
    local converted = value;
    {
      timeouts: value,
    }
  ),
  with_cors_mixin(value):: (
    local converted = if std.isArray(value) then value else [value];
    {
      cors+: converted,
    }
  ),
}
