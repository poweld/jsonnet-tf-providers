{
  local block = self,
  new(policy_id, unknown_user_action):: (
    {}
    + block.with_policy_id(policy_id)
    + block.with_unknown_user_action(unknown_user_action)
  ),
  '#with_access':: 'Allow or deny access based on the rule conditions. Valid values are: `ALLOW`, `DENY`. Default: `ALLOW`.',
  with_access(value):: (
    local converted = value;
    assert std.isString(converted) : '"access" expected to be of type "string"';
    {
      access: converted,
    }
  ),
  '#with_email_verification':: 'Indicates whether email verification should occur before access is granted. Default: `true`.',
  with_email_verification(value):: (
    local converted = value;
    assert std.isBoolean(converted) : '"email_verification" expected to be of type "bool"';
    {
      email_verification: converted,
    }
  ),
  '#with_enroll_authenticator_types':: 'Enrolls authenticator types',
  with_enroll_authenticator_types(value):: (
    local converted = if std.isArray(value) then value else [value];
    assert (std.isArray(converted) && std.length(std.set(converted)) == std.length(converted)) : '"enroll_authenticator_types" expected to be of type "set"';
    {
      enroll_authenticator_types: converted,
    }
  ),
  '#with_enroll_authenticator_types_mixin':: 'Enrolls authenticator types',
  with_enroll_authenticator_types_mixin(value):: (
    local converted = if std.isArray(value) then value else [value];
    assert (std.isArray(converted) && std.length(std.set(converted)) == std.length(converted)) : '"enroll_authenticator_types" expected to be of type "set"';
    {
      enroll_authenticator_types+: converted,
    }
  ),
  with_id(value):: (
    local converted = value;
    assert std.isString(converted) : '"id" expected to be of type "string"';
    {
      id: converted,
    }
  ),
  '#with_inline_hook_id':: 'ID of a Registration Inline Hook',
  with_inline_hook_id(value):: (
    local converted = value;
    assert std.isString(converted) : '"inline_hook_id" expected to be of type "string"';
    {
      inline_hook_id: converted,
    }
  ),
  '#with_name':: 'Name of the rule',
  with_name(value):: (
    local converted = value;
    assert std.isString(converted) : '"name" expected to be of type "string"';
    {
      name: converted,
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
  '#with_progressive_profiling_action':: 'Enabled or disabled progressive profiling action rule conditions: `ENABLED` or `DISABLED`. Default: `DISABLED`',
  with_progressive_profiling_action(value):: (
    local converted = value;
    assert std.isString(converted) : '"progressive_profiling_action" expected to be of type "string"';
    {
      progressive_profiling_action: converted,
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
  '#with_target_group_id':: 'The ID of a Group that this User should be added to',
  with_target_group_id(value):: (
    local converted = value;
    assert std.isString(converted) : '"target_group_id" expected to be of type "string"';
    {
      target_group_id: converted,
    }
  ),
  '#with_ui_schema_id':: 'Value created by the backend. If present all policy updates must include this attribute/value.',
  with_ui_schema_id(value):: (
    local converted = value;
    assert std.isString(converted) : '"ui_schema_id" expected to be of type "string"';
    {
      ui_schema_id: converted,
    }
  ),
  '#with_unknown_user_action':: 'Which action should be taken if this User is new. Valid values are: `DENY`, `REGISTER`',
  with_unknown_user_action(value):: (
    local converted = value;
    assert std.isString(converted) : '"unknown_user_action" expected to be of type "string"';
    {
      unknown_user_action: converted,
    }
  ),
  profile_attributes:: {
    local block = self,
    new(label, name):: (
      {}
      + block.with_label(label)
      + block.with_name(name)
    ),
    '#with_label':: 'A display-friendly label for this property',
    with_label(value):: (
      local converted = value;
      assert std.isString(converted) : '"label" expected to be of type "string"';
      {
        label: converted,
      }
    ),
    '#with_name':: 'The name of a User Profile property',
    with_name(value):: (
      local converted = value;
      assert std.isString(converted) : '"name" expected to be of type "string"';
      {
        name: converted,
      }
    ),
    '#with_required':: 'Indicates if this property is required for enrollment',
    with_required(value):: (
      local converted = value;
      assert std.isBoolean(converted) : '"required" expected to be of type "bool"';
      {
        required: converted,
      }
    ),
  },
  with_profile_attributes(value):: (
    local converted = if std.isArray(value) then value else [value];
    {
      profile_attributes: value,
    }
  ),
  with_profile_attributes_mixin(value):: (
    local converted = if std.isArray(value) then value else [value];
    {
      profile_attributes+: converted,
    }
  ),
}
