{
  local block = self,
  new(name):: (
    {}
    + block.with_name(name)
  ),
  '#with_access':: 'Allow or deny access based on the rule conditions: `ALLOW`, `DENY` or `CHALLENGE`. Default: `ALLOW`',
  with_access(value):: (
    local converted = value;
    assert std.isString(converted) : '"access" expected to be of type "string"';
    {
      access: converted,
    }
  ),
  '#with_authtype':: 'Authentication entrypoint: `ANY`, `RADIUS` or `LDAP_INTERFACE`. Default: `ANY`',
  with_authtype(value):: (
    local converted = value;
    assert std.isString(converted) : '"authtype" expected to be of type "string"';
    {
      authtype: converted,
    }
  ),
  '#with_behaviors':: 'List of behavior IDs',
  with_behaviors(value):: (
    local converted = if std.isArray(value) then value else [value];
    assert (std.isArray(converted) && std.length(std.set(converted)) == std.length(converted)) : '"behaviors" expected to be of type "set"';
    {
      behaviors: converted,
    }
  ),
  '#with_behaviors_mixin':: 'List of behavior IDs',
  with_behaviors_mixin(value):: (
    local converted = if std.isArray(value) then value else [value];
    assert (std.isArray(converted) && std.length(std.set(converted)) == std.length(converted)) : '"behaviors" expected to be of type "set"';
    {
      behaviors+: converted,
    }
  ),
  with_id(value):: (
    local converted = value;
    assert std.isString(converted) : '"id" expected to be of type "string"';
    {
      id: converted,
    }
  ),
  '#with_identity_provider':: 'Apply rule based on the IdP used: `ANY`, `OKTA` or `SPECIFIC_IDP`. Default: `ANY`. ~> **WARNING**: Use of `identity_provider` requires a feature flag to be enabled.',
  with_identity_provider(value):: (
    local converted = value;
    assert std.isString(converted) : '"identity_provider" expected to be of type "string"';
    {
      identity_provider: converted,
    }
  ),
  '#with_identity_provider_ids':: 'When identity_provider is `SPECIFIC_IDP` then this is the list of IdP IDs to apply the rule on',
  with_identity_provider_ids(value):: (
    local converted = if std.isArray(value) then value else [value];
    assert std.isArray(converted) : '"identity_provider_ids" expected to be of type "list"';
    {
      identity_provider_ids: converted,
    }
  ),
  '#with_identity_provider_ids_mixin':: 'When identity_provider is `SPECIFIC_IDP` then this is the list of IdP IDs to apply the rule on',
  with_identity_provider_ids_mixin(value):: (
    local converted = if std.isArray(value) then value else [value];
    assert std.isArray(converted) : '"identity_provider_ids" expected to be of type "list"';
    {
      identity_provider_ids+: converted,
    }
  ),
  '#with_mfa_lifetime':: 'Elapsed time before the next MFA challenge',
  with_mfa_lifetime(value):: (
    local converted = value;
    assert std.isNumber(converted) : '"mfa_lifetime" expected to be of type "number"';
    {
      mfa_lifetime: converted,
    }
  ),
  '#with_mfa_prompt':: 'Prompt for MFA based on the device used, a factor session lifetime, or every sign-on attempt: `DEVICE`, `SESSION` or`ALWAYS`.',
  with_mfa_prompt(value):: (
    local converted = value;
    assert std.isString(converted) : '"mfa_prompt" expected to be of type "string"';
    {
      mfa_prompt: converted,
    }
  ),
  '#with_mfa_remember_device':: 'Remember MFA device. Default: `false`',
  with_mfa_remember_device(value):: (
    local converted = value;
    assert std.isBoolean(converted) : '"mfa_remember_device" expected to be of type "bool"';
    {
      mfa_remember_device: converted,
    }
  ),
  '#with_mfa_required':: 'Require MFA. Default: `false`',
  with_mfa_required(value):: (
    local converted = value;
    assert std.isBoolean(converted) : '"mfa_required" expected to be of type "bool"';
    {
      mfa_required: converted,
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
  '#with_primary_factor':: "Rule's primary factor. **WARNING** Ony works as a part of the Identity Engine. Valid values: `PASSWORD_IDP_ANY_FACTOR`, `PASSWORD_IDP`.",
  with_primary_factor(value):: (
    local converted = value;
    assert std.isString(converted) : '"primary_factor" expected to be of type "string"';
    {
      primary_factor: converted,
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
  '#with_risc_level':: 'Risc level: ANY, LOW, MEDIUM or HIGH. Default: `ANY`',
  with_risc_level(value):: (
    local converted = value;
    assert std.isString(converted) : '"risc_level" expected to be of type "string"';
    {
      risc_level: converted,
    }
  ),
  '#with_risk_level':: 'Risk level: ANY, LOW, MEDIUM or HIGH. Default: `ANY`',
  with_risk_level(value):: (
    local converted = value;
    assert std.isString(converted) : '"risk_level" expected to be of type "string"';
    {
      risk_level: converted,
    }
  ),
  '#with_session_idle':: 'Max minutes a session can be idle. Default: `120`',
  with_session_idle(value):: (
    local converted = value;
    assert std.isNumber(converted) : '"session_idle" expected to be of type "number"';
    {
      session_idle: converted,
    }
  ),
  '#with_session_lifetime':: 'Max minutes a session is active: Disable = 0. Default: `120`',
  with_session_lifetime(value):: (
    local converted = value;
    assert std.isNumber(converted) : '"session_lifetime" expected to be of type "number"';
    {
      session_lifetime: converted,
    }
  ),
  '#with_session_persistent':: 'Whether session cookies will last across browser sessions. Okta Administrators can never have persistent session cookies. Default: `false`',
  with_session_persistent(value):: (
    local converted = value;
    assert std.isBoolean(converted) : '"session_persistent" expected to be of type "bool"';
    {
      session_persistent: converted,
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
  factor_sequence:: {
    local block = self,
    new(primary_criteria_factor_type, primary_criteria_provider):: (
      {}
      + block.with_primary_criteria_factor_type(primary_criteria_factor_type)
      + block.with_primary_criteria_provider(primary_criteria_provider)
    ),
    '#with_primary_criteria_factor_type':: 'Type of a Factor',
    with_primary_criteria_factor_type(value):: (
      local converted = value;
      assert std.isString(converted) : '"primary_criteria_factor_type" expected to be of type "string"';
      {
        primary_criteria_factor_type: converted,
      }
    ),
    '#with_primary_criteria_provider':: 'Factor provider',
    with_primary_criteria_provider(value):: (
      local converted = value;
      assert std.isString(converted) : '"primary_criteria_provider" expected to be of type "string"';
      {
        primary_criteria_provider: converted,
      }
    ),
    secondary_criteria:: {
      local block = self,
      new(factor_type, provider):: (
        {}
        + block.with_factor_type(factor_type)
        + block.with_provider(provider)
      ),
      '#with_factor_type':: 'Type of a Factor',
      with_factor_type(value):: (
        local converted = value;
        assert std.isString(converted) : '"factor_type" expected to be of type "string"';
        {
          factor_type: converted,
        }
      ),
      '#with_provider':: 'Factor provider',
      with_provider(value):: (
        local converted = value;
        assert std.isString(converted) : '"provider" expected to be of type "string"';
        {
          provider: converted,
        }
      ),
    },
    with_secondary_criteria(value):: (
      local converted = if std.isArray(value) then value else [value];
      {
        secondary_criteria: value,
      }
    ),
    with_secondary_criteria_mixin(value):: (
      local converted = if std.isArray(value) then value else [value];
      {
        secondary_criteria+: converted,
      }
    ),
  },
  with_factor_sequence(value):: (
    local converted = if std.isArray(value) then value else [value];
    {
      factor_sequence: value,
    }
  ),
  with_factor_sequence_mixin(value):: (
    local converted = if std.isArray(value) then value else [value];
    {
      factor_sequence+: converted,
    }
  ),
}
