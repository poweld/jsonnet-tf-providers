{
  local block = self,
  new(complete_lock, policy, vault_name):: (
    {}
    + block.with_complete_lock(complete_lock)
    + block.with_policy(policy)
    + block.with_vault_name(vault_name)
  ),
  with_complete_lock(value):: (
    local converted = value;
    assert std.isBoolean(converted) : '"complete_lock" expected to be of type "bool"';
    {
      complete_lock: converted,
    }
  ),
  with_id(value):: (
    local converted = value;
    assert std.isString(converted) : '"id" expected to be of type "string"';
    {
      id: converted,
    }
  ),
  with_ignore_deletion_error(value):: (
    local converted = value;
    assert std.isBoolean(converted) : '"ignore_deletion_error" expected to be of type "bool"';
    {
      ignore_deletion_error: converted,
    }
  ),
  with_policy(value):: (
    local converted = value;
    assert std.isString(converted) : '"policy" expected to be of type "string"';
    {
      policy: converted,
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
  with_vault_name(value):: (
    local converted = value;
    assert std.isString(converted) : '"vault_name" expected to be of type "string"';
    {
      vault_name: converted,
    }
  ),
}
