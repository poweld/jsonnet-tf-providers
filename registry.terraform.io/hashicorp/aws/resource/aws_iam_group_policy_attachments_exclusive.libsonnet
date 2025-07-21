{
  local block = self,
  new(group_name, policy_arns):: (
    {}
    + block.with_group_name(group_name)
    + block.with_policy_arns(policy_arns)
  ),
  with_group_name(value):: (
    local converted = value;
    assert std.isString(converted) : '"group_name" expected to be of type "string"';
    {
      group_name: converted,
    }
  ),
  with_policy_arns(value):: (
    local converted = if std.isArray(value) then value else [value];
    assert (std.isArray(converted) && std.length(std.set(converted)) == std.length(converted)) : '"policy_arns" expected to be of type "set"';
    {
      policy_arns: converted,
    }
  ),
  with_policy_arns_mixin(value):: (
    local converted = if std.isArray(value) then value else [value];
    assert (std.isArray(converted) && std.length(std.set(converted)) == std.length(converted)) : '"policy_arns" expected to be of type "set"';
    {
      policy_arns+: converted,
    }
  ),
}
