{
  local block = self,
  new(domain_id_or_name):: (
    {
      terraformObject:: "okta_domain",
      terraformType:: "data",
    }
    + block.withDomainIdOrName(domain_id_or_name)
  ),
  "#withDomainIdOrName":: "Brand ID",
  withDomainIdOrName(value):: (
    local converted = value;
    assert std.isString(converted) : '"domain_id_or_name" expected to be of type "string"';
    {
      domain_id_or_name: converted,
    }
  ),
}
