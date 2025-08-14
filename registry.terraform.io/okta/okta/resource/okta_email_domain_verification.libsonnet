{
  local block = self,
  new(email_domain_id):: (
    {
      terraformObject:: "okta_email_domain_verification",
    }
    + block.withEmailDomainId(email_domain_id)
  ),
  "#withEmailDomainId":: "Email domain ID",
  withEmailDomainId(value):: (
    local converted = value;
    assert std.isString(converted) : '"email_domain_id" expected to be of type "string"';
    {
      email_domain_id: converted,
    }
  ),
  withId(value):: (
    local converted = value;
    assert std.isString(converted) : '"id" expected to be of type "string"';
    {
      id: converted,
    }
  ),
}
