{
  local block = self,
  new():: (
    {}
  ),
  with_delegated_admin_account(value):: (
    local converted = value;
    assert std.isString(converted) : '"delegated_admin_account" expected to be of type "string"';
    {
      delegated_admin_account: converted,
    }
  ),
  with_deregister_on_destroy(value):: (
    local converted = value;
    assert std.isBoolean(converted) : '"deregister_on_destroy" expected to be of type "bool"';
    {
      deregister_on_destroy: converted,
    }
  ),
  with_id(value):: (
    local converted = value;
    assert std.isString(converted) : '"id" expected to be of type "string"';
    {
      id: converted,
    }
  ),
  with_kms_key(value):: (
    local converted = value;
    assert std.isString(converted) : '"kms_key" expected to be of type "string"';
    {
      kms_key: converted,
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
  with_status(value):: (
    local converted = value;
    assert std.isString(converted) : '"status" expected to be of type "string"';
    {
      status: converted,
    }
  ),
}
