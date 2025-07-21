{
  local block = self,
  new(account_id):: (
    {}
    + block.with_account_id(account_id)
  ),
  with_account_id(value):: (
    local converted = value;
    assert std.isString(converted) : '"account_id" expected to be of type "string"';
    {
      account_id: converted,
    }
  ),
  with_email(value):: (
    local converted = value;
    assert std.isString(converted) : '"email" expected to be of type "string"';
    {
      email: converted,
    }
  ),
  with_id(value):: (
    local converted = value;
    assert std.isString(converted) : '"id" expected to be of type "string"';
    {
      id: converted,
    }
  ),
  with_invite(value):: (
    local converted = value;
    assert std.isBoolean(converted) : '"invite" expected to be of type "bool"';
    {
      invite: converted,
    }
  ),
  with_master_id(value):: (
    local converted = value;
    assert std.isString(converted) : '"master_id" expected to be of type "string"';
    {
      master_id: converted,
    }
  ),
  with_member_status(value):: (
    local converted = value;
    assert std.isString(converted) : '"member_status" expected to be of type "string"';
    {
      member_status: converted,
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
