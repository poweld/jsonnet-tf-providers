{
  local block = self,
  new(group_id, identity_store_id, member_id):: (
    {}
    + block.with_group_id(group_id)
    + block.with_identity_store_id(identity_store_id)
    + block.with_member_id(member_id)
  ),
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
  with_identity_store_id(value):: (
    local converted = value;
    assert std.isString(converted) : '"identity_store_id" expected to be of type "string"';
    {
      identity_store_id: converted,
    }
  ),
  with_member_id(value):: (
    local converted = value;
    assert std.isString(converted) : '"member_id" expected to be of type "string"';
    {
      member_id: converted,
    }
  ),
  with_membership_id(value):: (
    local converted = value;
    assert std.isString(converted) : '"membership_id" expected to be of type "string"';
    {
      membership_id: converted,
    }
  ),
  '#with_region':: 'Region where this resource will be [managed](https://docs.aws.amazon.com/general/latest/gr/rande.html#regional-endpoints). Defaults to the Region set in the [provider configuration](https://registry.terraform.io/providers/hashicorp/aws/latest/docs#aws-configuration-reference).',
  with_region(value):: (
    local converted = value;
    assert std.isString(converted) : '"region" expected to be of type "string"';
    {
      region: converted,
    }
  ),
}
