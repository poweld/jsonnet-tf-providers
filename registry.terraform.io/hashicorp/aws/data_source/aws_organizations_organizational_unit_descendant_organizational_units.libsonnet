{
  local block = self,
  new(parent_id):: (
    {}
    + block.with_parent_id(parent_id)
  ),
  with_children(value):: (
    local converted = if std.isArray(value) then value else [value];
    assert std.isArray(converted) : '"children" expected to be of type "list"';
    {
      children: converted,
    }
  ),
  with_children_mixin(value):: (
    local converted = if std.isArray(value) then value else [value];
    assert std.isArray(converted) : '"children" expected to be of type "list"';
    {
      children+: converted,
    }
  ),
  with_id(value):: (
    local converted = value;
    assert std.isString(converted) : '"id" expected to be of type "string"';
    {
      id: converted,
    }
  ),
  with_parent_id(value):: (
    local converted = value;
    assert std.isString(converted) : '"parent_id" expected to be of type "string"';
    {
      parent_id: converted,
    }
  ),
}
