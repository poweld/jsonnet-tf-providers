{
  local block = self,
  new(group_id, users):: (
    {}
    + block.with_group_id(group_id)
    + block.with_users(users)
  ),
  '#with_group_id':: 'ID of a Okta group.',
  with_group_id(value):: (
    local converted = value;
    assert std.isString(converted) : '"group_id" expected to be of type "string"';
    {
      group_id: converted,
    }
  ),
  with_id(value):: (
    local converted = value;
    assert std.isString(converted) : '"id" expected to be of type "string"';
    {
      id: converted,
    }
  ),
  '#with_track_all_users':: 'The resource concerns itself with all users added/deleted to the group; even those managed outside of the resource.',
  with_track_all_users(value):: (
    local converted = value;
    assert std.isBoolean(converted) : '"track_all_users" expected to be of type "bool"';
    {
      track_all_users: converted,
    }
  ),
  '#with_users':: 'The list of Okta user IDs which the group should have membership managed for.',
  with_users(value):: (
    local converted = if std.isArray(value) then value else [value];
    assert (std.isArray(converted) && std.length(std.set(converted)) == std.length(converted)) : '"users" expected to be of type "set"';
    {
      users: converted,
    }
  ),
  '#with_users_mixin':: 'The list of Okta user IDs which the group should have membership managed for.',
  with_users_mixin(value):: (
    local converted = if std.isArray(value) then value else [value];
    assert (std.isArray(converted) && std.length(std.set(converted)) == std.length(converted)) : '"users" expected to be of type "set"';
    {
      users+: converted,
    }
  ),
}
