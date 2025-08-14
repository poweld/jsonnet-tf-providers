{
  local block = self,
  new(group_id, id_of_group_owner, type):: (
    {
      terraformObject:: "okta_group_owner",
    }
    + block.withGroupId(group_id)
    + block.withIdOfGroupOwner(id_of_group_owner)
    + block.withType(type)
  ),
  "#withDisplayName":: "The display name of the group owner",
  withDisplayName(value):: (
    local converted = value;
    assert std.isString(converted) : '"display_name" expected to be of type "string"';
    {
      display_name: converted,
    }
  ),
  "#withGroupId":: "The id of the group",
  withGroupId(value):: (
    local converted = value;
    assert std.isString(converted) : '"group_id" expected to be of type "string"';
    {
      group_id: converted,
    }
  ),
  "#withId":: "The id of the group owner resource",
  withId(value):: (
    local converted = value;
    assert std.isString(converted) : '"id" expected to be of type "string"';
    {
      id: converted,
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
  "#withOriginId":: "The ID of the app instance if the originType is APPLICATION. This value is NULL if originType is OKTA_DIRECTORY.",
  withOriginId(value):: (
    local converted = value;
    assert std.isString(converted) : '"origin_id" expected to be of type "string"';
    {
      origin_id: converted,
    }
  ),
  "#withOriginType":: "The source where group ownership is managed. Enum: 'APPLICATION' 'OKTA_DIRECTORY'",
  withOriginType(value):: (
    local converted = value;
    assert std.isString(converted) : '"origin_type" expected to be of type "string"';
    {
      origin_type: converted,
    }
  ),
  "#withResolved":: "If originType is APPLICATION, this parameter is set to FALSE until the owner's originId is reconciled with an associated Okta ID.",
  withResolved(value):: (
    local converted = value;
    assert std.isBoolean(converted) : '"resolved" expected to be of type "bool"';
    {
      resolved: converted,
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
