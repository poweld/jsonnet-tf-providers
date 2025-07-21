{
  local block = self,
  new(brand_id, display_name, domain, user_name):: (
    {}
    + block.with_brand_id(brand_id)
    + block.with_display_name(display_name)
    + block.with_domain(domain)
    + block.with_user_name(user_name)
  ),
  '#with_brand_id':: 'Brand id of the email domain.',
  with_brand_id(value):: (
    local converted = value;
    assert std.isString(converted) : '"brand_id" expected to be of type "string"';
    {
      brand_id: converted,
    }
  ),
  '#with_display_name':: 'Display name of the email domain.',
  with_display_name(value):: (
    local converted = value;
    assert std.isString(converted) : '"display_name" expected to be of type "string"';
    {
      display_name: converted,
    }
  ),
  '#with_dns_validation_records':: 'TXT and cname records to be registered for the email Domain',
  with_dns_validation_records(value):: (
    local converted = if std.isArray(value) then value else [value];
    assert std.isArray(converted) : '"dns_validation_records" expected to be of type "list"';
    {
      dns_validation_records: converted,
    }
  ),
  '#with_dns_validation_records_mixin':: 'TXT and cname records to be registered for the email Domain',
  with_dns_validation_records_mixin(value):: (
    local converted = if std.isArray(value) then value else [value];
    assert std.isArray(converted) : '"dns_validation_records" expected to be of type "list"';
    {
      dns_validation_records+: converted,
    }
  ),
  '#with_domain':: 'Mail domain to send from.',
  with_domain(value):: (
    local converted = value;
    assert std.isString(converted) : '"domain" expected to be of type "string"';
    {
      domain: converted,
    }
  ),
  with_id(value):: (
    local converted = value;
    assert std.isString(converted) : '"id" expected to be of type "string"';
    {
      id: converted,
    }
  ),
  '#with_user_name':: 'User name of the email domain.',
  with_user_name(value):: (
    local converted = value;
    assert std.isString(converted) : '"user_name" expected to be of type "string"';
    {
      user_name: converted,
    }
  ),
  '#with_validation_status':: 'Status of the email domain. Values: NOT_STARTED, IN_PROGRESS, VERIFIED, COMPLETED',
  with_validation_status(value):: (
    local converted = value;
    assert std.isString(converted) : '"validation_status" expected to be of type "string"';
    {
      validation_status: converted,
    }
  ),
}
