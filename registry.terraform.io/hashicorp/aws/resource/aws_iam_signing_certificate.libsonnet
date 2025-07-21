{
  local block = self,
  new(certificate_body, user_name):: (
    {}
    + block.with_certificate_body(certificate_body)
    + block.with_user_name(user_name)
  ),
  with_certificate_body(value):: (
    local converted = value;
    assert std.isString(converted) : '"certificate_body" expected to be of type "string"';
    {
      certificate_body: converted,
    }
  ),
  with_certificate_id(value):: (
    local converted = value;
    assert std.isString(converted) : '"certificate_id" expected to be of type "string"';
    {
      certificate_id: converted,
    }
  ),
  with_id(value):: (
    local converted = value;
    assert std.isString(converted) : '"id" expected to be of type "string"';
    {
      id: converted,
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
