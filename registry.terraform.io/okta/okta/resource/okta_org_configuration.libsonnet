{
  local block = self,
  new(company_name):: (
    {}
    + block.with_company_name(company_name)
  ),
  '#with_address_1':: 'Primary address of org',
  with_address_1(value):: (
    local converted = value;
    assert std.isString(converted) : '"address_1" expected to be of type "string"';
    {
      address_1: converted,
    }
  ),
  '#with_address_2':: 'Secondary address of org',
  with_address_2(value):: (
    local converted = value;
    assert std.isString(converted) : '"address_2" expected to be of type "string"';
    {
      address_2: converted,
    }
  ),
  '#with_billing_contact_user':: 'User ID representing the billing contact',
  with_billing_contact_user(value):: (
    local converted = value;
    assert std.isString(converted) : '"billing_contact_user" expected to be of type "string"';
    {
      billing_contact_user: converted,
    }
  ),
  '#with_city':: 'City of org',
  with_city(value):: (
    local converted = value;
    assert std.isString(converted) : '"city" expected to be of type "string"';
    {
      city: converted,
    }
  ),
  '#with_company_name':: 'Name of org',
  with_company_name(value):: (
    local converted = value;
    assert std.isString(converted) : '"company_name" expected to be of type "string"';
    {
      company_name: converted,
    }
  ),
  '#with_country':: 'Country of org',
  with_country(value):: (
    local converted = value;
    assert std.isString(converted) : '"country" expected to be of type "string"';
    {
      country: converted,
    }
  ),
  '#with_end_user_support_help_url':: 'Support link of org',
  with_end_user_support_help_url(value):: (
    local converted = value;
    assert std.isString(converted) : '"end_user_support_help_url" expected to be of type "string"';
    {
      end_user_support_help_url: converted,
    }
  ),
  '#with_expires_at':: 'Expiration of org',
  with_expires_at(value):: (
    local converted = value;
    assert std.isString(converted) : '"expires_at" expected to be of type "string"';
    {
      expires_at: converted,
    }
  ),
  with_id(value):: (
    local converted = value;
    assert std.isString(converted) : '"id" expected to be of type "string"';
    {
      id: converted,
    }
  ),
  '#with_logo':: 'Logo of org. The file must be in PNG, JPG, or GIF format and less than 1 MB in size. For best results use landscape orientation, a transparent background, and a minimum size of 420px by 120px to prevent upscaling.',
  with_logo(value):: (
    local converted = value;
    assert std.isString(converted) : '"logo" expected to be of type "string"';
    {
      logo: converted,
    }
  ),
  '#with_opt_out_communication_emails':: "Indicates whether the org's users receive Okta Communication emails",
  with_opt_out_communication_emails(value):: (
    local converted = value;
    assert std.isBoolean(converted) : '"opt_out_communication_emails" expected to be of type "bool"';
    {
      opt_out_communication_emails: converted,
    }
  ),
  '#with_phone_number':: 'Support help phone of org',
  with_phone_number(value):: (
    local converted = value;
    assert std.isString(converted) : '"phone_number" expected to be of type "string"';
    {
      phone_number: converted,
    }
  ),
  '#with_postal_code':: 'Postal code of org',
  with_postal_code(value):: (
    local converted = value;
    assert std.isString(converted) : '"postal_code" expected to be of type "string"';
    {
      postal_code: converted,
    }
  ),
  '#with_state':: 'State of org',
  with_state(value):: (
    local converted = value;
    assert std.isString(converted) : '"state" expected to be of type "string"';
    {
      state: converted,
    }
  ),
  '#with_subdomain':: 'Subdomain of org',
  with_subdomain(value):: (
    local converted = value;
    assert std.isString(converted) : '"subdomain" expected to be of type "string"';
    {
      subdomain: converted,
    }
  ),
  '#with_support_phone_number':: 'Support help phone of org',
  with_support_phone_number(value):: (
    local converted = value;
    assert std.isString(converted) : '"support_phone_number" expected to be of type "string"';
    {
      support_phone_number: converted,
    }
  ),
  '#with_technical_contact_user':: 'User ID representing the technical contact',
  with_technical_contact_user(value):: (
    local converted = value;
    assert std.isString(converted) : '"technical_contact_user" expected to be of type "string"';
    {
      technical_contact_user: converted,
    }
  ),
  '#with_website':: "The org's website",
  with_website(value):: (
    local converted = value;
    assert std.isString(converted) : '"website" expected to be of type "string"';
    {
      website: converted,
    }
  ),
}
