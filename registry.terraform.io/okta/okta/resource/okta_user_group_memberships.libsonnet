{
  local block = self,
  new(groups, user_id):: (
    {}
    + block.with_groups(groups)
    + block.with_user_id(user_id)
  ),
  '#with_groups':: 'The list of Okta group IDs which the user should have membership managed for.',
  with_groups(value):: (
    local converted = if std.isArray(value) then value else [value];
    assert (std.isArray(converted) && std.length(std.set(converted)) == std.length(converted)) : '"groups" expected to be of type "set"';
    {
      groups: converted,
    }
  ),
  '#with_groups_mixin':: 'The list of Okta group IDs which the user should have membership managed for.',
  with_groups_mixin(value):: (
    local converted = if std.isArray(value) then value else [value];
    assert (std.isArray(converted) && std.length(std.set(converted)) == std.length(converted)) : '"groups" expected to be of type "set"';
    {
      groups+: converted,
    }
  ),
  with_id(value):: (
    local converted = value;
    assert std.isString(converted) : '"id" expected to be of type "string"';
    {
      id: converted,
    }
  ),
  '#with_user_id':: 'ID of a Okta User',
  with_user_id(value):: (
    local converted = value;
    assert std.isString(converted) : '"user_id" expected to be of type "string"';
    {
      user_id: converted,
    }
  ),
}
