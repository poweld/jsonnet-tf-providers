{
  local block = self,
  new(from_address, from_name, subdomain):: (
    {}
    + block.withFromAddress(from_address)
    + block.withFromName(from_name)
    + block.withSubdomain(subdomain)
  ),
  "#withDnsRecords":: "TXT and CNAME records to be registered for the Domain",
  withDnsRecords(value):: (
    local converted = if std.isArray(value) then value else [value];
    assert std.isArray(converted) : '"dns_records" expected to be of type "list"';
    {
      dns_records: converted,
    }
  ),
  "#withDnsRecordsMixin":: "TXT and CNAME records to be registered for the Domain",
  withDnsRecordsMixin(value):: (
    local converted = if std.isArray(value) then value else [value];
    assert std.isArray(converted) : '"dns_records" expected to be of type "list"';
    {
      dns_records+: converted,
    }
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
  "#withStatus":: "Verification status",
  withStatus(value):: (
    local converted = value;
    assert std.isString(converted) : '"status" expected to be of type "string"';
    {
      status: converted,
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
