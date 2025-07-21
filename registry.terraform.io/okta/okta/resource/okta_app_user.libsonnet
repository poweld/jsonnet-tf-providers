{
  local block = self,
  new(app_id, user_id):: (
    {}
    + block.with_app_id(app_id)
    + block.with_user_id(user_id)
  ),
  '#with_app_id':: 'App to associate user with',
  with_app_id(value):: (
    local converted = value;
    assert std.isString(converted) : '"app_id" expected to be of type "string"';
    {
      app_id: converted,
    }
  ),
  with_has_shared_username(value):: (
    local converted = value;
    assert std.isBoolean(converted) : '"has_shared_username" expected to be of type "bool"';
    {
      has_shared_username: converted,
    }
  ),
  with_id(value):: (
    local converted = value;
    assert std.isString(converted) : '"id" expected to be of type "string"';
    {
      id: converted,
    }
  ),
  '#with_password':: 'The password to use.',
  with_password(value):: (
    local converted = value;
    assert std.isString(converted) : '"password" expected to be of type "string"';
    {
      password: converted,
    }
  ),
  '#with_profile':: 'The JSON profile of the App User.',
  with_profile(value):: (
    local converted = value;
    assert std.isString(converted) : '"profile" expected to be of type "string"';
    {
      profile: converted,
    }
  ),
  '#with_retain_assignment':: 'Retain the user assignment on destroy. If set to true, the resource will be removed from state but not from the Okta app.',
  with_retain_assignment(value):: (
    local converted = value;
    assert std.isBoolean(converted) : '"retain_assignment" expected to be of type "bool"';
    {
      retain_assignment: converted,
    }
  ),
  '#with_user_id':: 'User associated with the application',
  with_user_id(value):: (
    local converted = value;
    assert std.isString(converted) : '"user_id" expected to be of type "string"';
    {
      user_id: converted,
    }
  ),
  '#with_username':: 'The username to use for the app user. In case the user is assigned to the app with `SHARED_USERNAME_AND_PASSWORD` credentials scheme, this field will be computed and should not be set.',
  with_username(value):: (
    local converted = value;
    assert std.isString(converted) : '"username" expected to be of type "string"';
    {
      username: converted,
    }
  ),
}
