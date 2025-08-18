{
  local block = self,
  new(id):: (
    {
      terraformObject:: "okta_app_user_assignments",
      terraformType:: "data",
    }
    + block.withId(id)
  ),
  "#withId":: "ID of the Okta App being queried for groups",
  withId(value):: (
    local converted = value;
    assert std.isString(converted) : '"id" expected to be of type "string"';
    {
      id: converted,
    }
  ),
}
