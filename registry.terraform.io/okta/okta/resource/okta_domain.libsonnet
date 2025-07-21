{
  local block = self,
  new(name):: (
    {}
    + block.with_name(name)
  ),
  '#with_brand_id':: 'Brand id of the domain',
  with_brand_id(value):: (
    local converted = value;
    assert std.isString(converted) : '"brand_id" expected to be of type "string"';
    {
      brand_id: converted,
    }
  ),
  '#with_certificate_source_type':: 'Certificate source type that indicates whether the certificate is provided by the user or Okta. Accepted values: `MANUAL`, `OKTA_MANAGED`. Warning: Use of OKTA_MANAGED requires a feature flag to be enabled. Default value = MANUAL',
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
  with_id(value):: (
    local converted = value;
    assert std.isString(converted) : '"id" expected to be of type "string"';
    {
      id: converted,
    }
  ),
  '#with_name':: 'Custom Domain name',
  with_name(value):: (
    local converted = value;
    assert std.isString(converted) : '"name" expected to be of type "string"';
    {
      name: converted,
    }
  ),
  '#with_validation_status':: 'Status of the domain',
  with_validation_status(value):: (
    local converted = value;
    assert std.isString(converted) : '"validation_status" expected to be of type "string"';
    {
      validation_status: converted,
    }
  ),
}
