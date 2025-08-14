{
  local block = self,
  new(name):: (
    {}
    + block.withName(name)
  ),
  "#withBrandId":: "Brand id of the domain",
  withBrandId(value):: (
    local converted = value;
    assert std.isString(converted) : '"brand_id" expected to be of type "string"';
    {
      brand_id: converted,
    }
  ),
  "#withCertificateSourceType":: "Certificate source type that indicates whether the certificate is provided by the user or Okta. Accepted values: `MANUAL`, `OKTA_MANAGED`. Warning: Use of OKTA_MANAGED requires a feature flag to be enabled. Default value = MANUAL",
  withCertificateSourceType(value):: (
    local converted = value;
    assert std.isString(converted) : '"certificate_source_type" expected to be of type "string"';
    {
      certificate_source_type: converted,
    }
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
  withId(value):: (
    local converted = value;
    assert std.isString(converted) : '"id" expected to be of type "string"';
    {
      id: converted,
    }
  ),
  "#withName":: "Custom Domain name",
  withName(value):: (
    local converted = value;
    assert std.isString(converted) : '"name" expected to be of type "string"';
    {
      name: converted,
    }
  ),
  "#withValidationStatus":: "Status of the domain",
  withValidationStatus(value):: (
    local converted = value;
    assert std.isString(converted) : '"validation_status" expected to be of type "string"';
    {
      validation_status: converted,
    }
  ),
}
