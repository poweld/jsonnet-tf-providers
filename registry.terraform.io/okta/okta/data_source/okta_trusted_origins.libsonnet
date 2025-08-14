{
  local block = self,
  new():: (
    {
      terraformObject:: "okta_trusted_origins",
      terraformType:: "data",
    }
  ),
  "#withFilter":: "Filter criteria. Filter value will be URL-encoded by the provider",
  withFilter(value):: (
    local converted = value;
    assert std.isString(converted) : '"filter" expected to be of type "string"';
    {
      filter: converted,
    }
  ),
  withId(value):: (
    local converted = value;
    assert std.isString(converted) : '"id" expected to be of type "string"';
    {
      id: converted,
    }
  ),
  withTrustedOrigins(value):: (
    local converted = if std.isArray(value) then value else [value];
    assert std.isArray(converted) : '"trusted_origins" expected to be of type "list"';
    {
      trusted_origins: converted,
    }
  ),
  withTrustedOriginsMixin(value):: (
    local converted = if std.isArray(value) then value else [value];
    assert std.isArray(converted) : '"trusted_origins" expected to be of type "list"';
    {
      trusted_origins+: converted,
    }
  ),
}
