{
  local block = self,
  new():: (
    {
      terraformObject:: "okta_everyone_group",
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
  "#withIncludeUsers":: "Fetch group users, having default off cuts down on API calls.",
  withIncludeUsers(value):: (
    local converted = value;
    assert std.isBoolean(converted) : '"include_users" expected to be of type "bool"';
    {
      include_users: converted,
    }
  ),
}
