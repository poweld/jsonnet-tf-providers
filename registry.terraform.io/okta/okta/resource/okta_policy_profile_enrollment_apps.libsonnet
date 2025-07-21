{
  local block = self,
  new(policy_id):: (
    {}
    + block.with_policy_id(policy_id)
  ),
  '#with_apps':: 'List of app IDs to be added to this policy',
  with_apps(value):: (
    local converted = if std.isArray(value) then value else [value];
    assert (std.isArray(converted) && std.length(std.set(converted)) == std.length(converted)) : '"apps" expected to be of type "set"';
    {
      apps: converted,
    }
  ),
  '#with_apps_mixin':: 'List of app IDs to be added to this policy',
  with_apps_mixin(value):: (
    local converted = if std.isArray(value) then value else [value];
    assert (std.isArray(converted) && std.length(std.set(converted)) == std.length(converted)) : '"apps" expected to be of type "set"';
    {
      apps+: converted,
    }
  ),
  '#with_default_policy_id':: 'ID of the Default Enrollment Policy. This policy is used as a policy to re-assign apps to when they are unassigned from this one',
  with_default_policy_id(value):: (
    local converted = value;
    assert std.isString(converted) : '"default_policy_id" expected to be of type "string"';
    {
      default_policy_id: converted,
    }
  ),
  with_id(value):: (
    local converted = value;
    assert std.isString(converted) : '"id" expected to be of type "string"';
    {
      id: converted,
    }
  ),
  '#with_policy_id':: 'ID of the enrollment policy.',
  with_policy_id(value):: (
    local converted = value;
    assert std.isString(converted) : '"policy_id" expected to be of type "string"';
    {
      policy_id: converted,
    }
  ),
}
