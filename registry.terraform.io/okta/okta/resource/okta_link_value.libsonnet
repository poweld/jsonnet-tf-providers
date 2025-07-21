{
  local block = self,
  new(primary_name, primary_user_id):: (
    {}
    + block.with_primary_name(primary_name)
    + block.with_primary_user_id(primary_user_id)
  ),
  '#with_associated_user_ids':: 'Set of User IDs or login values of the users to be assigned the `associated` relationship.',
  with_associated_user_ids(value):: (
    local converted = if std.isArray(value) then value else [value];
    assert (std.isArray(converted) && std.length(std.set(converted)) == std.length(converted)) : '"associated_user_ids" expected to be of type "set"';
    {
      associated_user_ids: converted,
    }
  ),
  '#with_associated_user_ids_mixin':: 'Set of User IDs or login values of the users to be assigned the `associated` relationship.',
  with_associated_user_ids_mixin(value):: (
    local converted = if std.isArray(value) then value else [value];
    assert (std.isArray(converted) && std.length(std.set(converted)) == std.length(converted)) : '"associated_user_ids" expected to be of type "set"';
    {
      associated_user_ids+: converted,
    }
  ),
  with_id(value):: (
    local converted = value;
    assert std.isString(converted) : '"id" expected to be of type "string"';
    {
      id: converted,
    }
  ),
  '#with_primary_name':: 'Name of the `primary` relationship being assigned.',
  with_primary_name(value):: (
    local converted = value;
    assert std.isString(converted) : '"primary_name" expected to be of type "string"';
    {
      primary_name: converted,
    }
  ),
  '#with_primary_user_id':: "User ID to be assigned to `primary` for the 'associated' user in the specified relationship.",
  with_primary_user_id(value):: (
    local converted = value;
    assert std.isString(converted) : '"primary_user_id" expected to be of type "string"';
    {
      primary_user_id: converted,
    }
  ),
}
