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
  with_default_ttl(value):: (
    local converted = value;
    assert std.isNumber(converted) : '"default_ttl" expected to be of type "number"';
    {
      default_ttl: converted,
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
  with_max_ttl(value):: (
    local converted = value;
    assert std.isNumber(converted) : '"max_ttl" expected to be of type "number"';
    {
      max_ttl: converted,
    }
  ),
  with_min_ttl(value):: (
    local converted = value;
    assert std.isNumber(converted) : '"min_ttl" expected to be of type "number"';
    {
      min_ttl: converted,
    }
  ),
  with_name(value):: (
    local converted = value;
    assert std.isString(converted) : '"name" expected to be of type "string"';
    {
      name: converted,
    }
  ),
  with_parameters_in_cache_key_and_forwarded_to_origin(value):: (
    local converted = if std.isArray(value) then value else [value];
    assert std.isArray(converted) : '"parameters_in_cache_key_and_forwarded_to_origin" expected to be of type "list"';
    {
      parameters_in_cache_key_and_forwarded_to_origin: converted,
    }
  ),
  with_parameters_in_cache_key_and_forwarded_to_origin_mixin(value):: (
    local converted = if std.isArray(value) then value else [value];
    assert std.isArray(converted) : '"parameters_in_cache_key_and_forwarded_to_origin" expected to be of type "list"';
    {
      parameters_in_cache_key_and_forwarded_to_origin+: converted,
    }
  ),
}
