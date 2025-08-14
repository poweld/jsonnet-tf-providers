{
  local block = self,
  new(app_id, user_id):: (
    {
      terraformObject:: "okta_app_user",
    }
    + block.withAppId(app_id)
    + block.withUserId(user_id)
  ),
  "#withAppId":: "App to associate user with",
  withAppId(value):: (
    local converted = value;
    assert std.isString(converted) : '"app_id" expected to be of type "string"';
    {
      app_id: converted,
    }
  ),
  withHasSharedUsername(value):: (
    local converted = value;
    assert std.isBoolean(converted) : '"has_shared_username" expected to be of type "bool"';
    {
      has_shared_username: converted,
    }
  ),
  withId(value):: (
    local converted = value;
    assert std.isString(converted) : '"id" expected to be of type "string"';
    {
      id: converted,
    }
  ),
  "#withPassword":: "The password to use.",
  withPassword(value):: (
    local converted = value;
    assert std.isString(converted) : '"password" expected to be of type "string"';
    {
      password: converted,
    }
  ),
  "#withProfile":: "The JSON profile of the App User.",
  withProfile(value):: (
    local converted = value;
    assert std.isString(converted) : '"profile" expected to be of type "string"';
    {
      profile: converted,
    }
  ),
  "#withRetainAssignment":: "Retain the user assignment on destroy. If set to true, the resource will be removed from state but not from the Okta app.",
  withRetainAssignment(value):: (
    local converted = value;
    assert std.isBoolean(converted) : '"retain_assignment" expected to be of type "bool"';
    {
      retain_assignment: converted,
    }
  ),
  "#withUserId":: "User associated with the application",
  withUserId(value):: (
    local converted = value;
    assert std.isString(converted) : '"user_id" expected to be of type "string"';
    {
      user_id: converted,
    }
  ),
  "#withUsername":: "The username to use for the app user. In case the user is assigned to the app with `SHARED_USERNAME_AND_PASSWORD` credentials scheme, this field will be computed and should not be set.",
  withUsername(value):: (
    local converted = value;
    assert std.isString(converted) : '"username" expected to be of type "string"';
    {
      username: converted,
    }
  ),
}
