{
  local block = self,
  new(name):: (
    {}
    + block.with_name(name)
  ),
  with_arn(value):: (
    local converted = value;
    assert std.isString(converted) : '"arn" expected to be of type "string"';
    {
      arn: converted,
    }
  ),
  with_duration_seconds(value):: (
    local converted = value;
    assert std.isNumber(converted) : '"duration_seconds" expected to be of type "number"';
    {
      duration_seconds: converted,
    }
  ),
  with_enabled(value):: (
    local converted = value;
    assert std.isBoolean(converted) : '"enabled" expected to be of type "bool"';
    {
      enabled: converted,
    }
  ),
  with_id(value):: (
    local converted = value;
    assert std.isString(converted) : '"id" expected to be of type "string"';
    {
      id: converted,
    }
  ),
  with_managed_policy_arns(value):: (
    local converted = if std.isArray(value) then value else [value];
    assert (std.isArray(converted) && std.length(std.set(converted)) == std.length(converted)) : '"managed_policy_arns" expected to be of type "set"';
    {
      managed_policy_arns: converted,
    }
  ),
  with_managed_policy_arns_mixin(value):: (
    local converted = if std.isArray(value) then value else [value];
    assert (std.isArray(converted) && std.length(std.set(converted)) == std.length(converted)) : '"managed_policy_arns" expected to be of type "set"';
    {
      managed_policy_arns+: converted,
    }
  ),
  with_name(value):: (
    local converted = value;
    assert std.isString(converted) : '"name" expected to be of type "string"';
    {
      name: converted,
    }
  ),
  with_require_instance_properties(value):: (
    local converted = value;
    assert std.isBoolean(converted) : '"require_instance_properties" expected to be of type "bool"';
    {
      require_instance_properties: converted,
    }
  ),
  with_role_arns(value):: (
    local converted = if std.isArray(value) then value else [value];
    assert (std.isArray(converted) && std.length(std.set(converted)) == std.length(converted)) : '"role_arns" expected to be of type "set"';
    {
      role_arns: converted,
    }
  ),
  with_role_arns_mixin(value):: (
    local converted = if std.isArray(value) then value else [value];
    assert (std.isArray(converted) && std.length(std.set(converted)) == std.length(converted)) : '"role_arns" expected to be of type "set"';
    {
      role_arns+: converted,
    }
  ),
  with_session_policy(value):: (
    local converted = value;
    assert std.isString(converted) : '"session_policy" expected to be of type "string"';
    {
      session_policy: converted,
    }
  ),
  with_tags(value):: (
    local converted = value;
    assert std.isObject(converted) : '"tags" expected to be of type "map"';
    {
      tags: converted,
    }
  ),
  with_tags_all(value):: (
    local converted = value;
    assert std.isObject(converted) : '"tags_all" expected to be of type "map"';
    {
      tags_all: converted,
    }
  ),
}
