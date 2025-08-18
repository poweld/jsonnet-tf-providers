{
  local block = self,
  new():: (
    {
      terraformObject:: "okta_realm_assignment",
      terraformType:: "data",
    }
  ),
  "#withName":: "The name of the Okta Realm Assignment.",
  withName(value):: (
    local converted = value;
    assert std.isString(converted) : '"name" expected to be of type "string"';
    {
      name: converted,
    }
  ),
}
