{
  local block = self,
  new(name):: (
    {}
    + block.with_name(name)
  ),
  with_id(value):: (
    local converted = value;
    assert std.isString(converted) : '"id" expected to be of type "string"';
    {
      id: converted,
    }
  ),
  '#with_name':: 'Policy Rule Name',
  with_name(value):: (
    local converted = value;
    assert std.isString(converted) : '"name" expected to be of type "string"';
    {
      name: converted,
    }
  ),
  '#with_network_connection':: 'Network selection mode: `ANYWHERE`, `ZONE`, `ON_NETWORK`, or `OFF_NETWORK`. Default: `ANYWHERE`',
  with_network_connection(value):: (
    local converted = value;
    assert std.isString(converted) : '"network_connection" expected to be of type "string"';
    {
      network_connection: converted,
    }
  ),
  '#with_network_excludes':: 'Required if `network_connection` = `ZONE`. Indicates the network zones to exclude.',
  with_network_excludes(value):: (
    local converted = if std.isArray(value) then value else [value];
    assert std.isArray(converted) : '"network_excludes" expected to be of type "list"';
    {
      network_excludes: converted,
    }
  ),
  '#with_network_excludes_mixin':: 'Required if `network_connection` = `ZONE`. Indicates the network zones to exclude.',
  with_network_excludes_mixin(value):: (
    local converted = if std.isArray(value) then value else [value];
    assert std.isArray(converted) : '"network_excludes" expected to be of type "list"';
    {
      network_excludes+: converted,
    }
  ),
  '#with_network_includes':: 'Required if `network_connection` = `ZONE`. Indicates the network zones to include.',
  with_network_includes(value):: (
    local converted = if std.isArray(value) then value else [value];
    assert std.isArray(converted) : '"network_includes" expected to be of type "list"';
    {
      network_includes: converted,
    }
  ),
  '#with_network_includes_mixin':: 'Required if `network_connection` = `ZONE`. Indicates the network zones to include.',
  with_network_includes_mixin(value):: (
    local converted = if std.isArray(value) then value else [value];
    assert std.isArray(converted) : '"network_includes" expected to be of type "list"';
    {
      network_includes+: converted,
    }
  ),
  '#with_password_change':: 'Allow or deny a user to change their password: `ALLOW` or `DENY`. Default: `ALLOW`',
  with_password_change(value):: (
    local converted = value;
    assert std.isString(converted) : '"password_change" expected to be of type "string"';
    {
      password_change: converted,
    }
  ),
  '#with_password_reset':: 'Allow or deny a user to reset their password: `ALLOW` or `DENY`. Default: `ALLOW`',
  with_password_reset(value):: (
    local converted = value;
    assert std.isString(converted) : '"password_reset" expected to be of type "string"';
    {
      password_reset: converted,
    }
  ),
  '#with_password_unlock':: 'Allow or deny a user to unlock. Default: `DENY`',
  with_password_unlock(value):: (
    local converted = value;
    assert std.isString(converted) : '"password_unlock" expected to be of type "string"';
    {
      password_unlock: converted,
    }
  ),
  '#with_policy_id':: 'Policy ID of the Rule',
  with_policy_id(value):: (
    local converted = value;
    assert std.isString(converted) : '"policy_id" expected to be of type "string"';
    {
      policy_id: converted,
    }
  ),
  '#with_priority':: 'Rule priority. This attribute can be set to a valid priority. To avoid an endless diff situation an error is thrown if an invalid property is provided. The Okta API defaults to the last (lowest) if not provided.',
  with_priority(value):: (
    local converted = value;
    assert std.isNumber(converted) : '"priority" expected to be of type "number"';
    {
      priority: converted,
    }
  ),
  '#with_status':: 'Policy Rule Status: `ACTIVE` or `INACTIVE`. Default: `ACTIVE`',
  with_status(value):: (
    local converted = value;
    assert std.isString(converted) : '"status" expected to be of type "string"';
    {
      status: converted,
    }
  ),
  '#with_users_excluded':: 'Set of User IDs to Exclude',
  with_users_excluded(value):: (
    local converted = if std.isArray(value) then value else [value];
    assert (std.isArray(converted) && std.length(std.set(converted)) == std.length(converted)) : '"users_excluded" expected to be of type "set"';
    {
      users_excluded: converted,
    }
  ),
  '#with_users_excluded_mixin':: 'Set of User IDs to Exclude',
  with_users_excluded_mixin(value):: (
    local converted = if std.isArray(value) then value else [value];
    assert (std.isArray(converted) && std.length(std.set(converted)) == std.length(converted)) : '"users_excluded" expected to be of type "set"';
    {
      users_excluded+: converted,
    }
  ),
}
