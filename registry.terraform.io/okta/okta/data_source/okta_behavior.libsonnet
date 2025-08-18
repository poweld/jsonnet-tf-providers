{
  local block = self,
  new():: (
    {
      terraformObject:: "okta_behavior",
      terraformType:: "data",
    }
  ),
  "#withId":: "Behavior ID.",
  withId(value):: (
    local converted = value;
    assert std.isString(converted) : '"id" expected to be of type "string"';
    {
      id: converted,
    }
  ),
  "#withName":: "Behavior name.",
  withName(value):: (
    local converted = value;
    assert std.isString(converted) : '"name" expected to be of type "string"';
    {
      name: converted,
    }
  ),
}
