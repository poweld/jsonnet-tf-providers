{
  local block = self,
  new(app_id):: (
    {
      terraformObject:: "okta_app_signon_policy",
      terraformType:: "data",
    }
    + block.withAppId(app_id)
  ),
  "#withAppId":: "App ID",
  withAppId(value):: (
    local converted = value;
    assert std.isString(converted) : '"app_id" expected to be of type "string"';
    {
      app_id: converted,
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
