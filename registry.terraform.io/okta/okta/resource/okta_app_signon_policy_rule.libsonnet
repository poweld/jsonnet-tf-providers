{
  local block = self,
  new(name, policy_id):: (
    {}
    + block.with_name(name)
    + block.with_policy_id(policy_id)
  ),
  '#with_access':: 'Allow or deny access based on the rule conditions: ALLOW or DENY',
  with_access(value):: (
    local converted = value;
    assert std.isString(converted) : '"access" expected to be of type "string"';
    {
      access: converted,
    }
  ),
  '#with_chains':: 'Use with verification method = `AUTH_METHOD_CHAIN` only',
  with_chains(value):: (
    local converted = if std.isArray(value) then value else [value];
    assert std.isArray(converted) : '"chains" expected to be of type "list"';
    {
      chains: converted,
    }
  ),
  '#with_chains_mixin':: 'Use with verification method = `AUTH_METHOD_CHAIN` only',
  with_chains_mixin(value):: (
    local converted = if std.isArray(value) then value else [value];
    assert std.isArray(converted) : '"chains" expected to be of type "list"';
    {
      chains+: converted,
    }
  ),
  '#with_constraints':: 'An array that contains nested Authenticator Constraint objects that are organized by the Authenticator class',
  with_constraints(value):: (
    local converted = if std.isArray(value) then value else [value];
    assert std.isArray(converted) : '"constraints" expected to be of type "list"';
    {
      constraints: converted,
    }
  ),
  '#with_constraints_mixin':: 'An array that contains nested Authenticator Constraint objects that are organized by the Authenticator class',
  with_constraints_mixin(value):: (
    local converted = if std.isArray(value) then value else [value];
    assert std.isArray(converted) : '"constraints" expected to be of type "list"';
    {
      constraints+: converted,
    }
  ),
  '#with_custom_expression':: 'This is an optional advanced setting. If the expression is formatted incorrectly or conflicts with conditions set above, the rule may not match any users.',
  with_custom_expression(value):: (
    local converted = value;
    assert std.isString(converted) : '"custom_expression" expected to be of type "string"';
    {
      custom_expression: converted,
    }
  ),
  '#with_device_assurances_included':: 'List of device assurance IDs to include',
  with_device_assurances_included(value):: (
    local converted = if std.isArray(value) then value else [value];
    assert (std.isArray(converted) && std.length(std.set(converted)) == std.length(converted)) : '"device_assurances_included" expected to be of type "set"';
    {
      device_assurances_included: converted,
    }
  ),
  '#with_device_assurances_included_mixin':: 'List of device assurance IDs to include',
  with_device_assurances_included_mixin(value):: (
    local converted = if std.isArray(value) then value else [value];
    assert (std.isArray(converted) && std.length(std.set(converted)) == std.length(converted)) : '"device_assurances_included" expected to be of type "set"';
    {
      device_assurances_included+: converted,
    }
  ),
  '#with_device_is_managed':: "If the device is managed. A device is managed if it's managed by a device management system. When managed is passed, registered must also be included and must be set to true.",
  with_device_is_managed(value):: (
    local converted = value;
    assert std.isBoolean(converted) : '"device_is_managed" expected to be of type "bool"';
    {
      device_is_managed: converted,
    }
  ),
  '#with_device_is_registered':: 'If the device is registered. A device is registered if the User enrolls with Okta Verify that is installed on the device.',
  with_device_is_registered(value):: (
    local converted = value;
    assert std.isBoolean(converted) : '"device_is_registered" expected to be of type "bool"';
    {
      device_is_registered: converted,
    }
  ),
  '#with_factor_mode':: 'The number of factors required to satisfy this assurance level',
  with_factor_mode(value):: (
    local converted = value;
    assert std.isString(converted) : '"factor_mode" expected to be of type "string"';
    {
      factor_mode: converted,
    }
  ),
  '#with_groups_excluded':: 'List of group IDs to exclude',
  with_groups_excluded(value):: (
    local converted = if std.isArray(value) then value else [value];
    assert (std.isArray(converted) && std.length(std.set(converted)) == std.length(converted)) : '"groups_excluded" expected to be of type "set"';
    {
      groups_excluded: converted,
    }
  ),
  '#with_groups_excluded_mixin':: 'List of group IDs to exclude',
  with_groups_excluded_mixin(value):: (
    local converted = if std.isArray(value) then value else [value];
    assert (std.isArray(converted) && std.length(std.set(converted)) == std.length(converted)) : '"groups_excluded" expected to be of type "set"';
    {
      groups_excluded+: converted,
    }
  ),
  '#with_groups_included':: 'List of group IDs to include',
  with_groups_included(value):: (
    local converted = if std.isArray(value) then value else [value];
    assert (std.isArray(converted) && std.length(std.set(converted)) == std.length(converted)) : '"groups_included" expected to be of type "set"';
    {
      groups_included: converted,
    }
  ),
  '#with_groups_included_mixin':: 'List of group IDs to include',
  with_groups_included_mixin(value):: (
    local converted = if std.isArray(value) then value else [value];
    assert (std.isArray(converted) && std.length(std.set(converted)) == std.length(converted)) : '"groups_included" expected to be of type "set"';
    {
      groups_included+: converted,
    }
  ),
  with_id(value):: (
    local converted = value;
    assert std.isString(converted) : '"id" expected to be of type "string"';
    {
      id: converted,
    }
  ),
  '#with_inactivity_period':: 'The inactivity duration after which the end user must re-authenticate. Use the ISO 8601 Period format for recurring time intervals.',
  with_inactivity_period(value):: (
    local converted = value;
    assert std.isString(converted) : '"inactivity_period" expected to be of type "string"';
    {
      inactivity_period: converted,
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
  '#with_network_connection':: 'Network selection mode: ANYWHERE, ZONE, ON_NETWORK, or OFF_NETWORK.',
  with_network_connection(value):: (
    local converted = value;
    assert std.isString(converted) : '"network_connection" expected to be of type "string"';
    {
      network_connection: converted,
    }
  ),
  '#with_network_excludes':: 'The zones to exclude',
  with_network_excludes(value):: (
    local converted = if std.isArray(value) then value else [value];
    assert std.isArray(converted) : '"network_excludes" expected to be of type "list"';
    {
      network_excludes: converted,
    }
  ),
  '#with_network_excludes_mixin':: 'The zones to exclude',
  with_network_excludes_mixin(value):: (
    local converted = if std.isArray(value) then value else [value];
    assert std.isArray(converted) : '"network_excludes" expected to be of type "list"';
    {
      network_excludes+: converted,
    }
  ),
  '#with_network_includes':: 'The zones to include',
  with_network_includes(value):: (
    local converted = if std.isArray(value) then value else [value];
    assert std.isArray(converted) : '"network_includes" expected to be of type "list"';
    {
      network_includes: converted,
    }
  ),
  '#with_network_includes_mixin':: 'The zones to include',
  with_network_includes_mixin(value):: (
    local converted = if std.isArray(value) then value else [value];
    assert std.isArray(converted) : '"network_includes" expected to be of type "list"';
    {
      network_includes+: converted,
    }
  ),
  '#with_policy_id':: 'ID of the policy',
  with_policy_id(value):: (
    local converted = value;
    assert std.isString(converted) : '"policy_id" expected to be of type "string"';
    {
      policy_id: converted,
    }
  ),
  '#with_priority':: 'Priority of the rule.',
  with_priority(value):: (
    local converted = value;
    assert std.isNumber(converted) : '"priority" expected to be of type "number"';
    {
      priority: converted,
    }
  ),
  '#with_re_authentication_frequency':: 'The duration after which the end user must re-authenticate, regardless of user activity. Use the ISO 8601 Period format for recurring time intervals. PT0S - Every sign-in attempt, PT43800H - Once per session',
  with_re_authentication_frequency(value):: (
    local converted = value;
    assert std.isString(converted) : '"re_authentication_frequency" expected to be of type "string"';
    {
      re_authentication_frequency: converted,
    }
  ),
  '#with_risk_score':: 'The risk score specifies a particular level of risk to match on: ANY, LOW, MEDIUM, HIGH',
  with_risk_score(value):: (
    local converted = value;
    assert std.isString(converted) : '"risk_score" expected to be of type "string"';
    {
      risk_score: converted,
    }
  ),
  '#with_status':: 'Status of the rule',
  with_status(value):: (
    local converted = value;
    assert std.isString(converted) : '"status" expected to be of type "string"';
    {
      status: converted,
    }
  ),
  '#with_system':: 'Often the `Catch-all Rule` this rule is the system (default) rule for its associated policy',
  with_system(value):: (
    local converted = value;
    assert std.isBoolean(converted) : '"system" expected to be of type "bool"';
    {
      system: converted,
    }
  ),
  '#with_type':: 'The Verification Method type',
  with_type(value):: (
    local converted = value;
    assert std.isString(converted) : '"type" expected to be of type "string"';
    {
      type: converted,
    }
  ),
  '#with_user_types_excluded':: 'Set of User Type IDs to exclude',
  with_user_types_excluded(value):: (
    local converted = if std.isArray(value) then value else [value];
    assert (std.isArray(converted) && std.length(std.set(converted)) == std.length(converted)) : '"user_types_excluded" expected to be of type "set"';
    {
      user_types_excluded: converted,
    }
  ),
  '#with_user_types_excluded_mixin':: 'Set of User Type IDs to exclude',
  with_user_types_excluded_mixin(value):: (
    local converted = if std.isArray(value) then value else [value];
    assert (std.isArray(converted) && std.length(std.set(converted)) == std.length(converted)) : '"user_types_excluded" expected to be of type "set"';
    {
      user_types_excluded+: converted,
    }
  ),
  '#with_user_types_included':: 'Set of User Type IDs to include',
  with_user_types_included(value):: (
    local converted = if std.isArray(value) then value else [value];
    assert (std.isArray(converted) && std.length(std.set(converted)) == std.length(converted)) : '"user_types_included" expected to be of type "set"';
    {
      user_types_included: converted,
    }
  ),
  '#with_user_types_included_mixin':: 'Set of User Type IDs to include',
  with_user_types_included_mixin(value):: (
    local converted = if std.isArray(value) then value else [value];
    assert (std.isArray(converted) && std.length(std.set(converted)) == std.length(converted)) : '"user_types_included" expected to be of type "set"';
    {
      user_types_included+: converted,
    }
  ),
  '#with_users_excluded':: 'Set of User IDs to exclude',
  with_users_excluded(value):: (
    local converted = if std.isArray(value) then value else [value];
    assert (std.isArray(converted) && std.length(std.set(converted)) == std.length(converted)) : '"users_excluded" expected to be of type "set"';
    {
      users_excluded: converted,
    }
  ),
  '#with_users_excluded_mixin':: 'Set of User IDs to exclude',
  with_users_excluded_mixin(value):: (
    local converted = if std.isArray(value) then value else [value];
    assert (std.isArray(converted) && std.length(std.set(converted)) == std.length(converted)) : '"users_excluded" expected to be of type "set"';
    {
      users_excluded+: converted,
    }
  ),
  '#with_users_included':: 'Set of User IDs to include',
  with_users_included(value):: (
    local converted = if std.isArray(value) then value else [value];
    assert (std.isArray(converted) && std.length(std.set(converted)) == std.length(converted)) : '"users_included" expected to be of type "set"';
    {
      users_included: converted,
    }
  ),
  '#with_users_included_mixin':: 'Set of User IDs to include',
  with_users_included_mixin(value):: (
    local converted = if std.isArray(value) then value else [value];
    assert (std.isArray(converted) && std.length(std.set(converted)) == std.length(converted)) : '"users_included" expected to be of type "set"';
    {
      users_included+: converted,
    }
  ),
  platform_include:: {
    local block = self,
    new():: (
      {}
    ),
    '#with_os_expression':: 'Only available with OTHER OS type',
    with_os_expression(value):: (
      local converted = value;
      assert std.isString(converted) : '"os_expression" expected to be of type "string"';
      {
        os_expression: converted,
      }
    ),
    with_os_type(value):: (
      local converted = value;
      assert std.isString(converted) : '"os_type" expected to be of type "string"';
      {
        os_type: converted,
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
  with_platform_include(value):: (
    local converted = if std.isArray(value) then value else [value];
    {
      platform_include: value,
    }
  ),
  with_platform_include_mixin(value):: (
    local converted = if std.isArray(value) then value else [value];
    {
      platform_include+: converted,
    }
  ),
}
