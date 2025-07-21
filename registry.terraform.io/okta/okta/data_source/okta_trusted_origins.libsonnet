{
  local block = self,
  new():: (
    {}
  ),
  '#with_filter':: 'Filter criteria. Filter value will be URL-encoded by the provider',
  with_filter(value):: (
    local converted = value;
    assert std.isString(converted) : '"filter" expected to be of type "string"';
    {
      filter: converted,
    }
  ),
  with_id(value):: (
    local converted = value;
    assert std.isString(converted) : '"id" expected to be of type "string"';
    {
      id: converted,
    }
  ),
  with_trusted_origins(value):: (
    local converted = if std.isArray(value) then value else [value];
    assert std.isArray(converted) : '"trusted_origins" expected to be of type "list"';
    {
      trusted_origins: converted,
    }
  ),
  with_trusted_origins_mixin(value):: (
    local converted = if std.isArray(value) then value else [value];
    assert std.isArray(converted) : '"trusted_origins" expected to be of type "list"';
    {
      trusted_origins+: converted,
    }
  ),
}
