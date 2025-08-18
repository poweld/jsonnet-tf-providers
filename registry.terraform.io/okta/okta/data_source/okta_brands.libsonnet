{
  local block = self,
  new():: (
    {
      terraformObject:: "okta_brands",
      terraformType:: "data",
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
