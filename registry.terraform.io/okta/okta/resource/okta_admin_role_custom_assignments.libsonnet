{
  local block = self,
  new(custom_role_id, resource_set_id):: (
    {}
    + block.with_custom_role_id(custom_role_id)
    + block.with_resource_set_id(resource_set_id)
  ),
  '#with_custom_role_id':: 'ID of the Custom Role',
  with_custom_role_id(value):: (
    local converted = value;
    assert std.isString(converted) : '"custom_role_id" expected to be of type "string"';
    {
      custom_role_id: converted,
    }
  ),
  with_id(value):: (
    local converted = value;
    assert std.isString(converted) : '"id" expected to be of type "string"';
    {
      id: converted,
    }
  ),
  '#with_members':: 'The hrefs that point to User(s) and/or Group(s) that receive the Role',
  with_members(value):: (
    local converted = if std.isArray(value) then value else [value];
    assert (std.isArray(converted) && std.length(std.set(converted)) == std.length(converted)) : '"members" expected to be of type "set"';
    {
      members: converted,
    }
  ),
  '#with_members_mixin':: 'The hrefs that point to User(s) and/or Group(s) that receive the Role',
  with_members_mixin(value):: (
    local converted = if std.isArray(value) then value else [value];
    assert (std.isArray(converted) && std.length(std.set(converted)) == std.length(converted)) : '"members" expected to be of type "set"';
    {
      members+: converted,
    }
  ),
  '#with_resource_set_id':: 'ID of the target Resource Set',
  with_resource_set_id(value):: (
    local converted = value;
    assert std.isString(converted) : '"resource_set_id" expected to be of type "string"';
    {
      resource_set_id: converted,
    }
  ),
}
