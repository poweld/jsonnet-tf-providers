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
}
