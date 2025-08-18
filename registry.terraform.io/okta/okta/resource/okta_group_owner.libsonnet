{
  local block = self,
  new(group_id, id_of_group_owner, type):: (
    {
      terraformObject:: "okta_group_owner",
      terraformType:: "resource",
    }
    + block.withGroupId(group_id)
    + block.withIdOfGroupOwner(id_of_group_owner)
    + block.withType(type)
  ),
  "#withGroupId":: "The id of the group",
  withGroupId(value):: (
    local converted = value;
    assert std.isString(converted) : '"group_id" expected to be of type "string"';
    {
      group_id: converted,
    }
  ),
  "#withIdOfGroupOwner":: "The user id of the group owner",
  withIdOfGroupOwner(value):: (
    local converted = value;
    assert std.isString(converted) : '"id_of_group_owner" expected to be of type "string"';
    {
      id_of_group_owner: converted,
    }
  ),
  "#withType":: "The entity type of the owner. Enum: 'GROUP' 'USER'",
  withType(value):: (
    local converted = value;
    assert std.isString(converted) : '"type" expected to be of type "string"';
    {
      type: converted,
    }
  ),
}
