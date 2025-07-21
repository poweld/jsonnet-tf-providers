{
  local block = self,
  new(assume_role_policy):: (
    {}
    + block.with_assume_role_policy(assume_role_policy)
  ),
  with_arn(value):: (
    local converted = value;
    assert std.isString(converted) : '"arn" expected to be of type "string"';
    {
      arn: converted,
    }
  ),
  with_assume_role_policy(value):: (
    local converted = value;
    assert std.isString(converted) : '"assume_role_policy" expected to be of type "string"';
    {
      assume_role_policy: converted,
    }
  ),
  with_create_date(value):: (
    local converted = value;
    assert std.isString(converted) : '"create_date" expected to be of type "string"';
    {
      create_date: converted,
    }
  ),
  with_description(value):: (
    local converted = value;
    assert std.isString(converted) : '"description" expected to be of type "string"';
    {
      description: converted,
    }
  ),
  with_force_detach_policies(value):: (
    local converted = value;
    assert std.isBoolean(converted) : '"force_detach_policies" expected to be of type "bool"';
    {
      force_detach_policies: converted,
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
  with_max_session_duration(value):: (
    local converted = value;
    assert std.isNumber(converted) : '"max_session_duration" expected to be of type "number"';
    {
      max_session_duration: converted,
    }
  ),
  with_name(value):: (
    local converted = value;
    assert std.isString(converted) : '"name" expected to be of type "string"';
    {
      name: converted,
    }
  ),
  with_name_prefix(value):: (
    local converted = value;
    assert std.isString(converted) : '"name_prefix" expected to be of type "string"';
    {
      name_prefix: converted,
    }
  ),
  with_path(value):: (
    local converted = value;
    assert std.isString(converted) : '"path" expected to be of type "string"';
    {
      path: converted,
    }
  ),
  with_permissions_boundary(value):: (
    local converted = value;
    assert std.isString(converted) : '"permissions_boundary" expected to be of type "string"';
    {
      permissions_boundary: converted,
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
  with_unique_id(value):: (
    local converted = value;
    assert std.isString(converted) : '"unique_id" expected to be of type "string"';
    {
      unique_id: converted,
    }
  ),
  inline_policy:: {
    local block = self,
    new():: (
      {}
    ),
    with_name(value):: (
      local converted = value;
      assert std.isString(converted) : '"name" expected to be of type "string"';
      {
        name: converted,
      }
    ),
    with_policy(value):: (
      local converted = value;
      assert std.isString(converted) : '"policy" expected to be of type "string"';
      {
        policy: converted,
      }
    ),
  },
  with_inline_policy(value):: (
    local converted = if std.isArray(value) then value else [value];
    {
      inline_policy: value,
    }
  ),
  with_inline_policy_mixin(value):: (
    local converted = if std.isArray(value) then value else [value];
    {
      inline_policy+: converted,
    }
  ),
}
