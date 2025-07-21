{
  local block = self,
  new(delegated_admin_account_id):: (
    {}
    + block.with_delegated_admin_account_id(delegated_admin_account_id)
  ),
  with_arn(value):: (
    local converted = value;
    assert std.isString(converted) : '"arn" expected to be of type "string"';
    {
      arn: converted,
    }
  ),
  with_delegated_admin_account_id(value):: (
    local converted = value;
    assert std.isString(converted) : '"delegated_admin_account_id" expected to be of type "string"';
    {
      delegated_admin_account_id: converted,
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
  with_name(value):: (
    local converted = value;
    assert std.isString(converted) : '"name" expected to be of type "string"';
    {
      name: converted,
    }
  ),
  with_service_principal(value):: (
    local converted = value;
    assert std.isString(converted) : '"service_principal" expected to be of type "string"';
    {
      service_principal: converted,
    }
  ),
}
