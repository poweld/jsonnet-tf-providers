{
  local block = self,
  new(name):: (
    {}
    + block.with_name(name)
  ),
  '#with_enroll':: 'When a user should be prompted for MFA. It can be `CHALLENGE`, `LOGIN`, or `NEVER`.',
  with_enroll(value):: (
    local converted = value;
    assert std.isString(converted) : '"enroll" expected to be of type "string"';
    {
      enroll: converted,
    }
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
  app_exclude:: {
    local block = self,
    new(type):: (
      {}
      + block.with_type(type)
    ),
    with_id(value):: (
      local converted = value;
      assert std.isString(converted) : '"id" expected to be of type "string"';
      {
        id: converted,
      }
    ),
    with_name(value):: (
      local converted = value;
      assert std.isString(converted) : '"name" expected to be of type "string"';
      {
        name: converted,
      }
    ),
    with_type(value):: (
      local converted = value;
      assert std.isString(converted) : '"type" expected to be of type "string"';
      {
        type: converted,
      }
    ),
  },
  app_include:: {
    local block = self,
    new(type):: (
      {}
      + block.with_type(type)
    ),
    with_id(value):: (
      local converted = value;
      assert std.isString(converted) : '"id" expected to be of type "string"';
      {
        id: converted,
      }
    ),
    with_name(value):: (
      local converted = value;
      assert std.isString(converted) : '"name" expected to be of type "string"';
      {
        name: converted,
      }
    ),
    with_type(value):: (
      local converted = value;
      assert std.isString(converted) : '"type" expected to be of type "string"';
      {
        type: converted,
      }
    ),
  },
  with_app_exclude(value):: (
    local converted = if std.isArray(value) then value else [value];
    {
      app_exclude: value,
    }
  ),
  with_app_include(value):: (
    local converted = if std.isArray(value) then value else [value];
    {
      app_include: value,
    }
  ),
  with_app_exclude_mixin(value):: (
    local converted = if std.isArray(value) then value else [value];
    {
      app_exclude+: converted,
    }
  ),
  with_app_include_mixin(value):: (
    local converted = if std.isArray(value) then value else [value];
    {
      app_include+: converted,
    }
  ),
}
