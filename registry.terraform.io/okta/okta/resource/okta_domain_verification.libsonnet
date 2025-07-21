{
  local block = self,
  new(domain_id):: (
    {}
    + block.with_domain_id(domain_id)
  ),
  '#with_domain_id':: "Domain's ID",
  with_domain_id(value):: (
    local converted = value;
    assert std.isString(converted) : '"domain_id" expected to be of type "string"';
    {
      domain_id: converted,
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
