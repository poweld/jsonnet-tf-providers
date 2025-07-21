{
  local block = self,
  new():: (
    {}
  ),
  '#with_expression_type':: 'The expression type to use to invoke the rule.',
  with_expression_type(value):: (
    local converted = value;
    assert std.isString(converted) : '"expression_type" expected to be of type "string"';
    {
      expression_type: converted,
    }
  ),
  '#with_expression_value':: 'The expression value.',
  with_expression_value(value):: (
    local converted = value;
    assert std.isString(converted) : '"expression_value" expected to be of type "string"';
    {
      expression_value: converted,
    }
  ),
  '#with_group_assignments':: 'The list of group ids to assign the users to.',
  with_group_assignments(value):: (
    local converted = if std.isArray(value) then value else [value];
    assert (std.isArray(converted) && std.length(std.set(converted)) == std.length(converted)) : '"group_assignments" expected to be of type "set"';
    {
      group_assignments: converted,
    }
  ),
  '#with_group_assignments_mixin':: 'The list of group ids to assign the users to.',
  with_group_assignments_mixin(value):: (
    local converted = if std.isArray(value) then value else [value];
    assert (std.isArray(converted) && std.length(std.set(converted)) == std.length(converted)) : '"group_assignments" expected to be of type "set"';
    {
      group_assignments+: converted,
    }
  ),
  '#with_id':: 'The ID of the Group Rule.',
  with_id(value):: (
    local converted = value;
    assert std.isString(converted) : '"id" expected to be of type "string"';
    {
      id: converted,
    }
  ),
  '#with_name':: 'The name of the Group Rule.',
  with_name(value):: (
    local converted = value;
    assert std.isString(converted) : '"name" expected to be of type "string"';
    {
      name: converted,
    }
  ),
  '#with_status':: 'Default to `ACTIVE`',
  with_status(value):: (
    local converted = value;
    assert std.isString(converted) : '"status" expected to be of type "string"';
    {
      status: converted,
    }
  ),
  '#with_users_excluded':: 'The list of user IDs that would be excluded when rules are processed.',
  with_users_excluded(value):: (
    local converted = if std.isArray(value) then value else [value];
    assert (std.isArray(converted) && std.length(std.set(converted)) == std.length(converted)) : '"users_excluded" expected to be of type "set"';
    {
      users_excluded: converted,
    }
  ),
  '#with_users_excluded_mixin':: 'The list of user IDs that would be excluded when rules are processed.',
  with_users_excluded_mixin(value):: (
    local converted = if std.isArray(value) then value else [value];
    assert (std.isArray(converted) && std.length(std.set(converted)) == std.length(converted)) : '"users_excluded" expected to be of type "set"';
    {
      users_excluded+: converted,
    }
  ),
}
