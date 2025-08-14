{
  local block = self,
  new(policy_id):: (
    {}
    + block.withPolicyId(policy_id)
  ),
  "#withApps":: "List of app IDs to be added to this policy",
  withApps(value):: (
    local converted = if std.isArray(value) then value else [value];
    assert (std.isArray(converted) && std.length(std.set(converted)) == std.length(converted)) : '"apps" expected to be of type "set"';
    {
      apps: converted,
    }
  ),
  "#withAppsMixin":: "List of app IDs to be added to this policy",
  withAppsMixin(value):: (
    local converted = if std.isArray(value) then value else [value];
    assert (std.isArray(converted) && std.length(std.set(converted)) == std.length(converted)) : '"apps" expected to be of type "set"';
    {
      apps+: converted,
    }
  ),
  "#withDefaultPolicyId":: "ID of the Default Enrollment Policy. This policy is used as a policy to re-assign apps to when they are unassigned from this one",
  withDefaultPolicyId(value):: (
    local converted = value;
    assert std.isString(converted) : '"default_policy_id" expected to be of type "string"';
    {
      default_policy_id: converted,
    }
  ),
  withId(value):: (
    local converted = value;
    assert std.isString(converted) : '"id" expected to be of type "string"';
    {
      id: converted,
    }
  ),
  "#withPolicyId":: "ID of the enrollment policy.",
  withPolicyId(value):: (
    local converted = value;
    assert std.isString(converted) : '"policy_id" expected to be of type "string"';
    {
      policy_id: converted,
    }
  ),
}
