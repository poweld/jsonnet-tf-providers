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
  with_cookies_config(value):: (
    local converted = if std.isArray(value) then value else [value];
    assert std.isArray(converted) : '"cookies_config" expected to be of type "list"';
    {
      cookies_config: converted,
    }
  ),
  with_cookies_config_mixin(value):: (
    local converted = if std.isArray(value) then value else [value];
    assert std.isArray(converted) : '"cookies_config" expected to be of type "list"';
    {
      cookies_config+: converted,
    }
  ),
  with_etag(value):: (
    local converted = value;
    assert std.isString(converted) : '"etag" expected to be of type "string"';
    {
      etag: converted,
    }
  ),
  with_headers_config(value):: (
    local converted = if std.isArray(value) then value else [value];
    assert std.isArray(converted) : '"headers_config" expected to be of type "list"';
    {
      headers_config: converted,
    }
  ),
  with_headers_config_mixin(value):: (
    local converted = if std.isArray(value) then value else [value];
    assert std.isArray(converted) : '"headers_config" expected to be of type "list"';
    {
      headers_config+: converted,
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
  with_query_strings_config(value):: (
    local converted = if std.isArray(value) then value else [value];
    assert std.isArray(converted) : '"query_strings_config" expected to be of type "list"';
    {
      query_strings_config: converted,
    }
  ),
  with_query_strings_config_mixin(value):: (
    local converted = if std.isArray(value) then value else [value];
    assert std.isArray(converted) : '"query_strings_config" expected to be of type "list"';
    {
      query_strings_config+: converted,
    }
  ),
}
