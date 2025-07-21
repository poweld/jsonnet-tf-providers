{
  local block = self,
  new(domain_id_or_name):: (
    {}
    + block.with_domain_id_or_name(domain_id_or_name)
  ),
  '#with_certificate_source_type':: 'Certificate source type that indicates whether the certificate is provided by the user or Okta. Values: MANUAL, OKTA_MANAGED',
  with_certificate_source_type(value):: (
    local converted = value;
    assert std.isString(converted) : '"certificate_source_type" expected to be of type "string"';
    {
      certificate_source_type: converted,
    }
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
  '#with_domain':: 'Domain name',
  with_domain(value):: (
    local converted = value;
    assert std.isString(converted) : '"domain" expected to be of type "string"';
    {
      domain: converted,
    }
  ),
  '#with_domain_id_or_name':: 'Brand ID',
  with_domain_id_or_name(value):: (
    local converted = value;
    assert std.isString(converted) : '"domain_id_or_name" expected to be of type "string"';
    {
      domain_id_or_name: converted,
    }
  ),
  '#with_id':: 'The ID of the Domain',
  with_id(value):: (
    local converted = value;
    assert std.isString(converted) : '"id" expected to be of type "string"';
    {
      id: converted,
    }
  ),
  '#with_public_certificate':: 'Certificate metadata for the Domain',
  with_public_certificate(value):: (
    local converted = value;
    assert std.isObject(converted) : '"public_certificate" expected to be of type "map"';
    {
      public_certificate: converted,
    }
  ),
  '#with_validation_status':: 'Status of the domain. Values: NOT_STARTED, IN_PROGRESS, VERIFIED, COMPLETED',
  with_validation_status(value):: (
    local converted = value;
    assert std.isString(converted) : '"validation_status" expected to be of type "string"';
    {
      validation_status: converted,
    }
  ),
}
