{
  local block = self,
  new(role_type, user_id):: (
    {}
    + block.with_role_type(role_type)
    + block.with_user_id(user_id)
  ),
  '#with_apps':: "List of app names (name represents set of app instances) or a combination of app name and app instance ID (like 'salesforce' or 'facebook.0oapsqQ6dv19pqyEo0g3')",
  with_apps(value):: (
    local converted = if std.isArray(value) then value else [value];
    assert (std.isArray(converted) && std.length(std.set(converted)) == std.length(converted)) : '"apps" expected to be of type "set"';
    {
      apps: converted,
    }
  ),
  '#with_apps_mixin':: "List of app names (name represents set of app instances) or a combination of app name and app instance ID (like 'salesforce' or 'facebook.0oapsqQ6dv19pqyEo0g3')",
  with_apps_mixin(value):: (
    local converted = if std.isArray(value) then value else [value];
    assert (std.isArray(converted) && std.length(std.set(converted)) == std.length(converted)) : '"apps" expected to be of type "set"';
    {
      apps+: converted,
    }
  ),
  '#with_groups':: 'List of group IDs. Conflicts with apps',
  with_groups(value):: (
    local converted = if std.isArray(value) then value else [value];
    assert (std.isArray(converted) && std.length(std.set(converted)) == std.length(converted)) : '"groups" expected to be of type "set"';
    {
      groups: converted,
    }
  ),
  '#with_groups_mixin':: 'List of group IDs. Conflicts with apps',
  with_groups_mixin(value):: (
    local converted = if std.isArray(value) then value else [value];
    assert (std.isArray(converted) && std.length(std.set(converted)) == std.length(converted)) : '"groups" expected to be of type "set"';
    {
      groups+: converted,
    }
  ),
  with_id(value):: (
    local converted = value;
    assert std.isString(converted) : '"id" expected to be of type "string"';
    {
      id: converted,
    }
  ),
  '#with_role_id':: 'ID of a role',
  with_role_id(value):: (
    local converted = value;
    assert std.isString(converted) : '"role_id" expected to be of type "string"';
    {
      role_id: converted,
    }
  ),
  '#with_role_type':: 'Type of the role that is assigned to the user and supports optional targets. See [API Docs](https://developer.okta.com/docs/api/openapi/okta-management/guides/roles/#standard-roles)',
  with_role_type(value):: (
    local converted = value;
    assert std.isString(converted) : '"role_type" expected to be of type "string"';
    {
      role_type: converted,
    }
  ),
  '#with_user_id':: 'User associated with the role',
  with_user_id(value):: (
    local converted = value;
    assert std.isString(converted) : '"user_id" expected to be of type "string"';
    {
      user_id: converted,
    }
  ),
}
