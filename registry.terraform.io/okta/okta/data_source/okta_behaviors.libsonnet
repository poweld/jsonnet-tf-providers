{
  local block = self,
  new():: (
    {
      terraformObject:: "okta_behaviors",
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
  "#withQ":: "Searches the name property of behaviors for matching value",
  withQ(value):: (
    local converted = value;
    assert std.isString(converted) : '"q" expected to be of type "string"';
    {
      q: converted,
    }
  ),
}
