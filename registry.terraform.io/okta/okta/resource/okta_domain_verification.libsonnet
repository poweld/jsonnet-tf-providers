{
  local block = self,
  new(domain_id):: (
    {
      terraformObject:: "okta_domain_verification",
      terraformType:: "resource",
    }
    + block.withDomainId(domain_id)
  ),
  "#withDomainId":: "Domain's ID",
  withDomainId(value):: (
    local converted = value;
    assert std.isString(converted) : '"domain_id" expected to be of type "string"';
    {
      domain_id: converted,
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
