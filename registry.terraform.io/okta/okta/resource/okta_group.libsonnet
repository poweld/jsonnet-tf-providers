{
  local block = self,
  new(name):: (
    {}
    + block.with_name(name)
  ),
  '#with_custom_profile_attributes':: 'JSON formatted custom attributes for a group. It must be JSON due to various types Okta allows.',
  with_custom_profile_attributes(value):: (
    local converted = value;
    assert std.isString(converted) : '"custom_profile_attributes" expected to be of type "string"';
    {
      custom_profile_attributes: converted,
    }
  ),
  '#with_description':: 'The description of the Okta Group.',
  with_description(value):: (
    local converted = value;
    assert std.isString(converted) : '"description" expected to be of type "string"';
    {
      description: converted,
    }
  ),
  with_id(value):: (
    local converted = value;
    assert std.isString(converted) : '"id" expected to be of type "string"';
    {
      id: converted,
    }
  ),
  '#with_name':: 'The name of the Okta Group.',
  with_name(value):: (
    local converted = value;
    assert std.isString(converted) : '"name" expected to be of type "string"';
    {
      name: converted,
    }
  ),
  '#with_skip_users':: "Ignore users sync. This is a temporary solution until 'users' field is supported in all the app-like resources",
  with_skip_users(value):: (
    local converted = value;
    assert std.isBoolean(converted) : '"skip_users" expected to be of type "bool"';
    {
      skip_users: converted,
    }
  ),
}
