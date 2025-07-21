{
  local block = self,
  new(group_id, id_of_group_owner, type):: (
    {}
    + block.with_group_id(group_id)
    + block.with_id_of_group_owner(id_of_group_owner)
    + block.with_type(type)
  ),
  '#with_display_name':: 'The display name of the group owner',
  with_display_name(value):: (
    local converted = value;
    assert std.isString(converted) : '"display_name" expected to be of type "string"';
    {
      display_name: converted,
    }
  ),
  '#with_group_id':: 'The id of the group',
  with_group_id(value):: (
    local converted = value;
    assert std.isString(converted) : '"group_id" expected to be of type "string"';
    {
      group_id: converted,
    }
  ),
  '#with_id':: 'The id of the group owner resource',
  with_id(value):: (
    local converted = value;
    assert std.isString(converted) : '"id" expected to be of type "string"';
    {
      id: converted,
    }
  ),
  '#with_id_of_group_owner':: 'The user id of the group owner',
  with_id_of_group_owner(value):: (
    local converted = value;
    assert std.isString(converted) : '"id_of_group_owner" expected to be of type "string"';
    {
      id_of_group_owner: converted,
    }
  ),
  '#with_origin_id':: 'The ID of the app instance if the originType is APPLICATION. This value is NULL if originType is OKTA_DIRECTORY.',
  with_origin_id(value):: (
    local converted = value;
    assert std.isString(converted) : '"origin_id" expected to be of type "string"';
    {
      origin_id: converted,
    }
  ),
  '#with_origin_type':: "The source where group ownership is managed. Enum: 'APPLICATION' 'OKTA_DIRECTORY'",
  with_origin_type(value):: (
    local converted = value;
    assert std.isString(converted) : '"origin_type" expected to be of type "string"';
    {
      origin_type: converted,
    }
  ),
  '#with_resolved':: "If originType is APPLICATION, this parameter is set to FALSE until the owner's originId is reconciled with an associated Okta ID.",
  with_resolved(value):: (
    local converted = value;
    assert std.isBoolean(converted) : '"resolved" expected to be of type "bool"';
    {
      resolved: converted,
    }
  ),
  '#with_type':: "The entity type of the owner. Enum: 'GROUP' 'USER'",
  with_type(value):: (
    local converted = value;
    assert std.isString(converted) : '"type" expected to be of type "string"';
    {
      type: converted,
    }
  ),
}
