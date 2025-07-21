{
  local block = self,
  new(aggregation, pattern, protection_group_id):: (
    {}
    + block.with_aggregation(aggregation)
    + block.with_pattern(pattern)
    + block.with_protection_group_id(protection_group_id)
  ),
  with_aggregation(value):: (
    local converted = value;
    assert std.isString(converted) : '"aggregation" expected to be of type "string"';
    {
      aggregation: converted,
    }
  ),
  with_id(value):: (
    local converted = value;
    assert std.isString(converted) : '"id" expected to be of type "string"';
    {
      id: converted,
    }
  ),
  with_members(value):: (
    local converted = if std.isArray(value) then value else [value];
    assert std.isArray(converted) : '"members" expected to be of type "list"';
    {
      members: converted,
    }
  ),
  with_members_mixin(value):: (
    local converted = if std.isArray(value) then value else [value];
    assert std.isArray(converted) : '"members" expected to be of type "list"';
    {
      members+: converted,
    }
  ),
  with_pattern(value):: (
    local converted = value;
    assert std.isString(converted) : '"pattern" expected to be of type "string"';
    {
      pattern: converted,
    }
  ),
  with_protection_group_arn(value):: (
    local converted = value;
    assert std.isString(converted) : '"protection_group_arn" expected to be of type "string"';
    {
      protection_group_arn: converted,
    }
  ),
  with_protection_group_id(value):: (
    local converted = value;
    assert std.isString(converted) : '"protection_group_id" expected to be of type "string"';
    {
      protection_group_id: converted,
    }
  ),
  with_resource_type(value):: (
    local converted = value;
    assert std.isString(converted) : '"resource_type" expected to be of type "string"';
    {
      resource_type: converted,
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
