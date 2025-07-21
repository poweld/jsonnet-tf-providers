{
  local block = self,
  new(name, parent_id):: (
    {}
    + block.with_name(name)
    + block.with_parent_id(parent_id)
  ),
  with_accounts(value):: (
    local converted = if std.isArray(value) then value else [value];
    assert std.isArray(converted) : '"accounts" expected to be of type "list"';
    {
      accounts: converted,
    }
  ),
  with_accounts_mixin(value):: (
    local converted = if std.isArray(value) then value else [value];
    assert std.isArray(converted) : '"accounts" expected to be of type "list"';
    {
      accounts+: converted,
    }
  ),
  with_arn(value):: (
    local converted = value;
    assert std.isString(converted) : '"arn" expected to be of type "string"';
    {
      arn: converted,
    }
  ),
  with_id(value):: (
    local converted = value;
    assert std.isString(converted) : '"id" expected to be of type "string"';
    {
      id: converted,
    }
  ),
  with_name(value):: (
    local converted = value;
    assert std.isString(converted) : '"name" expected to be of type "string"';
    {
      name: converted,
    }
  ),
  with_parent_id(value):: (
    local converted = value;
    assert std.isString(converted) : '"parent_id" expected to be of type "string"';
    {
      parent_id: converted,
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
