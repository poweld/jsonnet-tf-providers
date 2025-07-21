{
  local block = self,
  new(service_name, user_name):: (
    {}
    + block.with_service_name(service_name)
    + block.with_user_name(user_name)
  ),
  with_id(value):: (
    local converted = value;
    assert std.isString(converted) : '"id" expected to be of type "string"';
    {
      id: converted,
    }
  ),
  with_service_name(value):: (
    local converted = value;
    assert std.isString(converted) : '"service_name" expected to be of type "string"';
    {
      service_name: converted,
    }
  ),
  with_service_password(value):: (
    local converted = value;
    assert std.isString(converted) : '"service_password" expected to be of type "string"';
    {
      service_password: converted,
    }
  ),
  with_service_specific_credential_id(value):: (
    local converted = value;
    assert std.isString(converted) : '"service_specific_credential_id" expected to be of type "string"';
    {
      service_specific_credential_id: converted,
    }
  ),
  with_service_user_name(value):: (
    local converted = value;
    assert std.isString(converted) : '"service_user_name" expected to be of type "string"';
    {
      service_user_name: converted,
    }
  ),
  with_status(value):: (
    local converted = value;
    assert std.isString(converted) : '"status" expected to be of type "string"';
    {
      status: converted,
    }
  ),
  with_user_name(value):: (
    local converted = value;
    assert std.isString(converted) : '"user_name" expected to be of type "string"';
    {
      user_name: converted,
    }
  ),
}
