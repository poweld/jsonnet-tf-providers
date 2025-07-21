{
  local block = self,
  new(client_id_list, url):: (
    {}
    + block.with_client_id_list(client_id_list)
    + block.with_url(url)
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
    assert (std.isArray(converted) && std.length(std.set(converted)) == std.length(converted)) : '"client_id_list" expected to be of type "set"';
    {
      client_id_list: converted,
    }
  ),
  with_client_id_list_mixin(value):: (
    local converted = if std.isArray(value) then value else [value];
    assert (std.isArray(converted) && std.length(std.set(converted)) == std.length(converted)) : '"client_id_list" expected to be of type "set"';
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
  with_tags_all(value):: (
    local converted = value;
    assert std.isObject(converted) : '"tags_all" expected to be of type "map"';
    {
      tags_all: converted,
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
