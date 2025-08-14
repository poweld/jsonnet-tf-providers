{
  local block = self,
  new(domain_id_or_name):: (
    {}
    + block.withDomainIdOrName(domain_id_or_name)
  ),
  "#withCertificateSourceType":: "Certificate source type that indicates whether the certificate is provided by the user or Okta. Values: MANUAL, OKTA_MANAGED",
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
  "#withDomain":: "Domain name",
  withDomain(value):: (
    local converted = value;
    assert std.isString(converted) : '"domain" expected to be of type "string"';
    {
      domain: converted,
    }
  ),
  "#withDomainIdOrName":: "Brand ID",
  withDomainIdOrName(value):: (
    local converted = value;
    assert std.isString(converted) : '"domain_id_or_name" expected to be of type "string"';
    {
      domain_id_or_name: converted,
    }
  ),
  "#withId":: "The ID of the Domain",
  withId(value):: (
    local converted = value;
    assert std.isString(converted) : '"id" expected to be of type "string"';
    {
      id: converted,
    }
  ),
  "#withPublicCertificate":: "Certificate metadata for the Domain",
  withPublicCertificate(value):: (
    local converted = value;
    assert std.isObject(converted) : '"public_certificate" expected to be of type "map"';
    {
      public_certificate: converted,
    }
  ),
  "#withValidationStatus":: "Status of the domain. Values: NOT_STARTED, IN_PROGRESS, VERIFIED, COMPLETED",
  withValidationStatus(value):: (
    local converted = value;
    assert std.isString(converted) : '"validation_status" expected to be of type "string"';
    {
      validation_status: converted,
    }
  ),
}
