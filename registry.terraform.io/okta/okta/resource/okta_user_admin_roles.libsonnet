{
  local block = self,
  new(admin_roles, user_id):: (
    {}
    + block.with_admin_roles(admin_roles)
    + block.with_user_id(user_id)
  ),
  '#with_admin_roles':: "The list of Okta user admin roles, e.g. `['APP_ADMIN', 'USER_ADMIN']` See [API Docs](https://developer.okta.com/docs/api/openapi/okta-management/guides/roles/#standard-roles).",
  with_admin_roles(value):: (
    local converted = if std.isArray(value) then value else [value];
    assert (std.isArray(converted) && std.length(std.set(converted)) == std.length(converted)) : '"admin_roles" expected to be of type "set"';
    {
      admin_roles: converted,
    }
  ),
  '#with_admin_roles_mixin':: "The list of Okta user admin roles, e.g. `['APP_ADMIN', 'USER_ADMIN']` See [API Docs](https://developer.okta.com/docs/api/openapi/okta-management/guides/roles/#standard-roles).",
  with_admin_roles_mixin(value):: (
    local converted = if std.isArray(value) then value else [value];
    assert (std.isArray(converted) && std.length(std.set(converted)) == std.length(converted)) : '"admin_roles" expected to be of type "set"';
    {
      admin_roles+: converted,
    }
  ),
  '#with_disable_notifications':: "When this setting is enabled, the admins won't receive any of the default Okta administrator emails. These admins also won't have access to contact Okta Support and open support cases on behalf of your org.",
  with_disable_notifications(value):: (
    local converted = value;
    assert std.isBoolean(converted) : '"disable_notifications" expected to be of type "bool"';
    {
      disable_notifications: converted,
    }
  ),
  with_id(value):: (
    local converted = value;
    assert std.isString(converted) : '"id" expected to be of type "string"';
    {
      id: converted,
    }
  ),
  '#with_user_id':: 'ID of a Okta User',
  with_user_id(value):: (
    local converted = value;
    assert std.isString(converted) : '"user_id" expected to be of type "string"';
    {
      user_id: converted,
    }
  ),
}
