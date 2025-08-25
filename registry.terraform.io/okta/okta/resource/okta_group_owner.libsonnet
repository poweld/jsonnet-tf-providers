{
  local block = self,
  new(terraformName, groupId, idOfGroupOwner, type):: (
    {
      jsonnetTfMetadata:: {
        terraformObject:: "okta_group_owner",
        terraformType:: "resource",
        terraformPrefix:: "",
        terraformAttributes:: ["display_name", "group_id", "id", "id_of_group_owner", "origin_id", "origin_type", "resolved", "type"],
      },
    }
    + block.withTerraformName(terraformName)
    + block.withGroupId(groupId)
    + block.withIdOfGroupOwner(idOfGroupOwner)
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
  withTerraformName(value):: {
    jsonnetTfMetadata+:: {
      terraformName:: value,
    },
  },
}
