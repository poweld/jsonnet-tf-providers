{
  local block = self,
  new(group_id, identity_store_id):: (
    {}
    + block.with_group_id(group_id)
    + block.with_identity_store_id(identity_store_id)
  ),
  with_group_id(value):: (
    local converted = value;
    assert std.isString(converted) : '"group_id" expected to be of type "string"';
    {
      group_id: converted,
    }
  ),
  with_group_memberships(value):: (
    local converted = if std.isArray(value) then value else [value];
    assert std.isArray(converted) : '"group_memberships" expected to be of type "list"';
    {
      group_memberships: converted,
    }
  ),
  with_group_memberships_mixin(value):: (
    local converted = if std.isArray(value) then value else [value];
    assert std.isArray(converted) : '"group_memberships" expected to be of type "list"';
    {
      group_memberships+: converted,
    }
  ),
  with_identity_store_id(value):: (
    local converted = value;
    assert std.isString(converted) : '"identity_store_id" expected to be of type "string"';
    {
      identity_store_id: converted,
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
