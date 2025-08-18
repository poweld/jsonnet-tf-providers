{
  local block = self,
  new(from_address, from_name, subdomain):: (
    {
      terraformObject:: "okta_email_sender",
      terraformType:: "resource",
    }
    + block.withFromAddress(from_address)
    + block.withFromName(from_name)
    + block.withSubdomain(subdomain)
  ),
  "#withFromAddress":: "Email address to send from ",
  withFromAddress(value):: (
    local converted = value;
    assert std.isString(converted) : '"from_address" expected to be of type "string"';
    {
      from_address: converted,
    }
  ),
  "#withFromName":: "Name of sender",
  withFromName(value):: (
    local converted = value;
    assert std.isString(converted) : '"from_name" expected to be of type "string"';
    {
      from_name: converted,
    }
  ),
  withId(value):: (
    local converted = value;
    assert std.isString(converted) : '"id" expected to be of type "string"';
    {
      id: converted,
    }
  ),
  "#withSubdomain":: "Mail domain to send from",
  withSubdomain(value):: (
    local converted = value;
    assert std.isString(converted) : '"subdomain" expected to be of type "string"';
    {
      subdomain: converted,
    }
  ),
}
