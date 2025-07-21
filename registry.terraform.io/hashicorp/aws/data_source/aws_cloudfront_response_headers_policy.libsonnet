{
  local block = self,
  new():: (
    {}
  ),
  with_arn(value):: (
    local converted = value;
    assert std.isString(converted) : '"arn" expected to be of type "string"';
    {
      arn: converted,
    }
  ),
  with_comment(value):: (
    local converted = value;
    assert std.isString(converted) : '"comment" expected to be of type "string"';
    {
      comment: converted,
    }
  ),
  with_cors_config(value):: (
    local converted = if std.isArray(value) then value else [value];
    assert std.isArray(converted) : '"cors_config" expected to be of type "list"';
    {
      cors_config: converted,
    }
  ),
  with_cors_config_mixin(value):: (
    local converted = if std.isArray(value) then value else [value];
    assert std.isArray(converted) : '"cors_config" expected to be of type "list"';
    {
      cors_config+: converted,
    }
  ),
  with_custom_headers_config(value):: (
    local converted = if std.isArray(value) then value else [value];
    assert std.isArray(converted) : '"custom_headers_config" expected to be of type "list"';
    {
      custom_headers_config: converted,
    }
  ),
  with_custom_headers_config_mixin(value):: (
    local converted = if std.isArray(value) then value else [value];
    assert std.isArray(converted) : '"custom_headers_config" expected to be of type "list"';
    {
      custom_headers_config+: converted,
    }
  ),
  with_etag(value):: (
    local converted = value;
    assert std.isString(converted) : '"etag" expected to be of type "string"';
    {
      etag: converted,
    }
  ),
  with_id(value):: (
    local converted = value;
    assert std.isString(converted) : '"id" expected to be of type "string"';
    {
      id: converted,
    }
  ),
  with_name(value):: (
    local converted = value;
    assert std.isString(converted) : '"name" expected to be of type "string"';
    {
      name: converted,
    }
  ),
  with_remove_headers_config(value):: (
    local converted = if std.isArray(value) then value else [value];
    assert std.isArray(converted) : '"remove_headers_config" expected to be of type "list"';
    {
      remove_headers_config: converted,
    }
  ),
  with_remove_headers_config_mixin(value):: (
    local converted = if std.isArray(value) then value else [value];
    assert std.isArray(converted) : '"remove_headers_config" expected to be of type "list"';
    {
      remove_headers_config+: converted,
    }
  ),
  with_security_headers_config(value):: (
    local converted = if std.isArray(value) then value else [value];
    assert std.isArray(converted) : '"security_headers_config" expected to be of type "list"';
    {
      security_headers_config: converted,
    }
  ),
  with_security_headers_config_mixin(value):: (
    local converted = if std.isArray(value) then value else [value];
    assert std.isArray(converted) : '"security_headers_config" expected to be of type "list"';
    {
      security_headers_config+: converted,
    }
  ),
  with_server_timing_headers_config(value):: (
    local converted = if std.isArray(value) then value else [value];
    assert std.isArray(converted) : '"server_timing_headers_config" expected to be of type "list"';
    {
      server_timing_headers_config: converted,
    }
  ),
  with_server_timing_headers_config_mixin(value):: (
    local converted = if std.isArray(value) then value else [value];
    assert std.isArray(converted) : '"server_timing_headers_config" expected to be of type "list"';
    {
      server_timing_headers_config+: converted,
    }
  ),
}
