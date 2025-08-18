{
  local block = self,
  new():: (
    {
      terraformObject:: "okta_authenticator",
      terraformType:: "data",
    }
  ),
  "#withId":: "ID of the authenticator.",
  withId(value):: (
    local converted = value;
    assert std.isString(converted) : '"id" expected to be of type "string"';
    {
      id: converted,
    }
  ),
  "#withKey":: "A human-readable string that identifies the authenticator.",
  withKey(value):: (
    local converted = value;
    assert std.isString(converted) : '"key" expected to be of type "string"';
    {
      key: converted,
    }
  ),
  "#withName":: "Name of the authenticator.",
  withName(value):: (
    local converted = value;
    assert std.isString(converted) : '"name" expected to be of type "string"';
    {
      name: converted,
    }
  ),
}
