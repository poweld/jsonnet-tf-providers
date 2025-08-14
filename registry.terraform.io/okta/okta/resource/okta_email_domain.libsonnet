{
  local block = self,
  new(brand_id, display_name, domain, user_name):: (
    {}
    + block.withBrandId(brand_id)
    + block.withDisplayName(display_name)
    + block.withDomain(domain)
    + block.withUserName(user_name)
  ),
  "#withBrandId":: "Brand id of the email domain.",
  withBrandId(value):: (
    local converted = value;
    assert std.isString(converted) : '"brand_id" expected to be of type "string"';
    {
      brand_id: converted,
    }
  ),
  "#withDisplayName":: "Display name of the email domain.",
  withDisplayName(value):: (
    local converted = value;
    assert std.isString(converted) : '"display_name" expected to be of type "string"';
    {
      display_name: converted,
    }
  ),
  "#withDnsValidationRecords":: "TXT and cname records to be registered for the email Domain",
  withDnsValidationRecords(value):: (
    local converted = if std.isArray(value) then value else [value];
    assert std.isArray(converted) : '"dns_validation_records" expected to be of type "list"';
    {
      dns_validation_records: converted,
    }
  ),
  "#withDnsValidationRecordsMixin":: "TXT and cname records to be registered for the email Domain",
  withDnsValidationRecordsMixin(value):: (
    local converted = if std.isArray(value) then value else [value];
    assert std.isArray(converted) : '"dns_validation_records" expected to be of type "list"';
    {
      dns_validation_records+: converted,
    }
  ),
  "#withDomain":: "Mail domain to send from.",
  withDomain(value):: (
    local converted = value;
    assert std.isString(converted) : '"domain" expected to be of type "string"';
    {
      domain: converted,
    }
  ),
  withId(value):: (
    local converted = value;
    assert std.isString(converted) : '"id" expected to be of type "string"';
    {
      id: converted,
    }
  ),
  "#withUserName":: "User name of the email domain.",
  withUserName(value):: (
    local converted = value;
    assert std.isString(converted) : '"user_name" expected to be of type "string"';
    {
      user_name: converted,
    }
  ),
  "#withValidationStatus":: "Status of the email domain. Values: NOT_STARTED, IN_PROGRESS, VERIFIED, COMPLETED",
  withValidationStatus(value):: (
    local converted = value;
    assert std.isString(converted) : '"validation_status" expected to be of type "string"';
    {
      validation_status: converted,
    }
  ),
}
