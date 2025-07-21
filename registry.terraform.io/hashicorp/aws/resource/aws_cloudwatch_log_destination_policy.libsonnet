{
  local block = self,
  new(access_policy, destination_name):: (
    {}
    + block.with_access_policy(access_policy)
    + block.with_destination_name(destination_name)
  ),
  with_access_policy(value):: (
    local converted = value;
    assert std.isString(converted) : '"access_policy" expected to be of type "string"';
    {
      access_policy: converted,
    }
  ),
  with_destination_name(value):: (
    local converted = value;
    assert std.isString(converted) : '"destination_name" expected to be of type "string"';
    {
      destination_name: converted,
    }
  ),
  with_force_update(value):: (
    local converted = value;
    assert std.isBoolean(converted) : '"force_update" expected to be of type "bool"';
    {
      force_update: converted,
    }
  ),
  with_id(value):: (
    local converted = value;
    assert std.isString(converted) : '"id" expected to be of type "string"';
    {
      id: converted,
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
