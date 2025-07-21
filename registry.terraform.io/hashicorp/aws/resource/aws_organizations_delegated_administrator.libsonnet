{
  local block = self,
  new(account_id, service_principal):: (
    {}
    + block.with_account_id(account_id)
    + block.with_service_principal(service_principal)
  ),
  with_account_id(value):: (
    local converted = value;
    assert std.isString(converted) : '"account_id" expected to be of type "string"';
    {
      account_id: converted,
    }
  ),
  with_arn(value):: (
    local converted = value;
    assert std.isString(converted) : '"arn" expected to be of type "string"';
    {
      arn: converted,
    }
  ),
  with_delegation_enabled_date(value):: (
    local converted = value;
    assert std.isString(converted) : '"delegation_enabled_date" expected to be of type "string"';
    {
      delegation_enabled_date: converted,
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
  with_joined_method(value):: (
    local converted = value;
    assert std.isString(converted) : '"joined_method" expected to be of type "string"';
    {
      joined_method: converted,
    }
  ),
  with_joined_timestamp(value):: (
    local converted = value;
    assert std.isString(converted) : '"joined_timestamp" expected to be of type "string"';
    {
      joined_timestamp: converted,
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
  with_status(value):: (
    local converted = value;
    assert std.isString(converted) : '"status" expected to be of type "string"';
    {
      status: converted,
    }
  ),
}
