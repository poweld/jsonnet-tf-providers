{
  local block = self,
  new(bucket):: (
    {}
    + block.with_bucket(bucket)
  ),
  with_bucket(value):: (
    local converted = value;
    assert std.isString(converted) : '"bucket" expected to be of type "string"';
    {
      bucket: converted,
    }
  ),
  with_expected_bucket_owner(value):: (
    local converted = value;
    assert std.isString(converted) : '"expected_bucket_owner" expected to be of type "string"';
    {
      expected_bucket_owner: converted,
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
  cors_rule:: {
    local block = self,
    new(allowed_methods, allowed_origins):: (
      {}
      + block.with_allowed_methods(allowed_methods)
      + block.with_allowed_origins(allowed_origins)
    ),
    with_allowed_headers(value):: (
      local converted = if std.isArray(value) then value else [value];
      assert (std.isArray(converted) && std.length(std.set(converted)) == std.length(converted)) : '"allowed_headers" expected to be of type "set"';
      {
        allowed_headers: converted,
      }
    ),
    with_allowed_headers_mixin(value):: (
      local converted = if std.isArray(value) then value else [value];
      assert (std.isArray(converted) && std.length(std.set(converted)) == std.length(converted)) : '"allowed_headers" expected to be of type "set"';
      {
        allowed_headers+: converted,
      }
    ),
    with_allowed_methods(value):: (
      local converted = if std.isArray(value) then value else [value];
      assert (std.isArray(converted) && std.length(std.set(converted)) == std.length(converted)) : '"allowed_methods" expected to be of type "set"';
      {
        allowed_methods: converted,
      }
    ),
    with_allowed_methods_mixin(value):: (
      local converted = if std.isArray(value) then value else [value];
      assert (std.isArray(converted) && std.length(std.set(converted)) == std.length(converted)) : '"allowed_methods" expected to be of type "set"';
      {
        allowed_methods+: converted,
      }
    ),
    with_allowed_origins(value):: (
      local converted = if std.isArray(value) then value else [value];
      assert (std.isArray(converted) && std.length(std.set(converted)) == std.length(converted)) : '"allowed_origins" expected to be of type "set"';
      {
        allowed_origins: converted,
      }
    ),
    with_allowed_origins_mixin(value):: (
      local converted = if std.isArray(value) then value else [value];
      assert (std.isArray(converted) && std.length(std.set(converted)) == std.length(converted)) : '"allowed_origins" expected to be of type "set"';
      {
        allowed_origins+: converted,
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
    with_id(value):: (
      local converted = value;
      assert std.isString(converted) : '"id" expected to be of type "string"';
      {
        id: converted,
      }
    ),
    with_max_age_seconds(value):: (
      local converted = value;
      assert std.isNumber(converted) : '"max_age_seconds" expected to be of type "number"';
      {
        max_age_seconds: converted,
      }
    ),
  },
  with_cors_rule(value):: (
    local converted = if std.isArray(value) then value else [value];
    {
      cors_rule: value,
    }
  ),
  with_cors_rule_mixin(value):: (
    local converted = if std.isArray(value) then value else [value];
    {
      cors_rule+: converted,
    }
  ),
}
