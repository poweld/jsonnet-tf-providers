{
  local block = self,
  new(email_domain_id):: (
    {}
    + block.with_email_domain_id(email_domain_id)
  ),
  '#with_email_domain_id':: 'Email domain ID',
  with_email_domain_id(value):: (
    local converted = value;
    assert std.isString(converted) : '"email_domain_id" expected to be of type "string"';
    {
      email_domain_id: converted,
    }
  ),
  with_id(value):: (
    local converted = value;
    assert std.isString(converted) : '"id" expected to be of type "string"';
    {
      id: converted,
    }
  ),
}
