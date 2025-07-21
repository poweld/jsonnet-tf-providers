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
  with_client_id_list(value):: (
    local converted = if std.isArray(value) then value else [value];
    assert std.isArray(converted) : '"client_id_list" expected to be of type "list"';
    {
      client_id_list: converted,
    }
  ),
  with_client_id_list_mixin(value):: (
    local converted = if std.isArray(value) then value else [value];
    assert std.isArray(converted) : '"client_id_list" expected to be of type "list"';
    {
      client_id_list+: converted,
    }
  ),
  with_id(value):: (
    local converted = value;
    assert std.isString(converted) : '"id" expected to be of type "string"';
    {
      id: converted,
    }
  ),
  with_tags(value):: (
    local converted = value;
    assert std.isObject(converted) : '"tags" expected to be of type "map"';
    {
      tags: converted,
    }
  ),
  with_thumbprint_list(value):: (
    local converted = if std.isArray(value) then value else [value];
    assert std.isArray(converted) : '"thumbprint_list" expected to be of type "list"';
    {
      thumbprint_list: converted,
    }
  ),
  with_thumbprint_list_mixin(value):: (
    local converted = if std.isArray(value) then value else [value];
    assert std.isArray(converted) : '"thumbprint_list" expected to be of type "list"';
    {
      thumbprint_list+: converted,
    }
  ),
  with_url(value):: (
    local converted = value;
    assert std.isString(converted) : '"url" expected to be of type "string"';
    {
      url: converted,
    }
  ),
}
