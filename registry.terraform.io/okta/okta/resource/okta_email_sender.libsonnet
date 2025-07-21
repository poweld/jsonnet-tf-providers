{
  local block = self,
  new(from_address, from_name, subdomain):: (
    {}
    + block.with_from_address(from_address)
    + block.with_from_name(from_name)
    + block.with_subdomain(subdomain)
  ),
  '#with_dns_records':: 'TXT and CNAME records to be registered for the Domain',
  with_dns_records(value):: (
    local converted = if std.isArray(value) then value else [value];
    assert std.isArray(converted) : '"dns_records" expected to be of type "list"';
    {
      dns_records: converted,
    }
  ),
  '#with_dns_records_mixin':: 'TXT and CNAME records to be registered for the Domain',
  with_dns_records_mixin(value):: (
    local converted = if std.isArray(value) then value else [value];
    assert std.isArray(converted) : '"dns_records" expected to be of type "list"';
    {
      dns_records+: converted,
    }
  ),
  '#with_from_address':: 'Email address to send from ',
  with_from_address(value):: (
    local converted = value;
    assert std.isString(converted) : '"from_address" expected to be of type "string"';
    {
      from_address: converted,
    }
  ),
  '#with_from_name':: 'Name of sender',
  with_from_name(value):: (
    local converted = value;
    assert std.isString(converted) : '"from_name" expected to be of type "string"';
    {
      from_name: converted,
    }
  ),
  with_id(value):: (
    local converted = value;
    assert std.isString(converted) : '"id" expected to be of type "string"';
    {
      id: converted,
    }
  ),
  '#with_status':: 'Verification status',
  with_status(value):: (
    local converted = value;
    assert std.isString(converted) : '"status" expected to be of type "string"';
    {
      status: converted,
    }
  ),
  '#with_subdomain':: 'Mail domain to send from',
  with_subdomain(value):: (
    local converted = value;
    assert std.isString(converted) : '"subdomain" expected to be of type "string"';
    {
      subdomain: converted,
    }
  ),
}
