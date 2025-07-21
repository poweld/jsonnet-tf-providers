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
  with_id(value):: (
    local converted = value;
    assert std.isString(converted) : '"id" expected to be of type "string"';
    {
      id: converted,
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
  with_role_last_used(value):: (
    local converted = if std.isArray(value) then value else [value];
    assert std.isArray(converted) : '"role_last_used" expected to be of type "list"';
    {
      role_last_used: converted,
    }
  ),
  with_role_last_used_mixin(value):: (
    local converted = if std.isArray(value) then value else [value];
    assert std.isArray(converted) : '"role_last_used" expected to be of type "list"';
    {
      role_last_used+: converted,
    }
  ),
  with_tags(value):: (
    local converted = value;
    assert std.isObject(converted) : '"tags" expected to be of type "map"';
    {
      tags: converted,
    }
  ),
  with_unique_id(value):: (
    local converted = value;
    assert std.isString(converted) : '"unique_id" expected to be of type "string"';
    {
      unique_id: converted,
    }
  ),
}
