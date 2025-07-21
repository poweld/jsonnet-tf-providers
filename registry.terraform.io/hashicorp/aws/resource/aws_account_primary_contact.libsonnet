{
  local block = self,
  new(address_line_1, city, country_code, full_name, phone_number, postal_code):: (
    {}
    + block.with_address_line_1(address_line_1)
    + block.with_city(city)
    + block.with_country_code(country_code)
    + block.with_full_name(full_name)
    + block.with_phone_number(phone_number)
    + block.with_postal_code(postal_code)
  ),
  with_account_id(value):: (
    local converted = value;
    assert std.isString(converted) : '"account_id" expected to be of type "string"';
    {
      account_id: converted,
    }
  ),
  with_address_line_1(value):: (
    local converted = value;
    assert std.isString(converted) : '"address_line_1" expected to be of type "string"';
    {
      address_line_1: converted,
    }
  ),
  with_address_line_2(value):: (
    local converted = value;
    assert std.isString(converted) : '"address_line_2" expected to be of type "string"';
    {
      address_line_2: converted,
    }
  ),
  with_address_line_3(value):: (
    local converted = value;
    assert std.isString(converted) : '"address_line_3" expected to be of type "string"';
    {
      address_line_3: converted,
    }
  ),
  with_city(value):: (
    local converted = value;
    assert std.isString(converted) : '"city" expected to be of type "string"';
    {
      city: converted,
    }
  ),
  with_company_name(value):: (
    local converted = value;
    assert std.isString(converted) : '"company_name" expected to be of type "string"';
    {
      company_name: converted,
    }
  ),
  with_country_code(value):: (
    local converted = value;
    assert std.isString(converted) : '"country_code" expected to be of type "string"';
    {
      country_code: converted,
    }
  ),
  with_district_or_county(value):: (
    local converted = value;
    assert std.isString(converted) : '"district_or_county" expected to be of type "string"';
    {
      district_or_county: converted,
    }
  ),
  with_full_name(value):: (
    local converted = value;
    assert std.isString(converted) : '"full_name" expected to be of type "string"';
    {
      full_name: converted,
    }
  ),
  with_id(value):: (
    local converted = value;
    assert std.isString(converted) : '"id" expected to be of type "string"';
    {
      id: converted,
    }
  ),
  with_phone_number(value):: (
    local converted = value;
    assert std.isString(converted) : '"phone_number" expected to be of type "string"';
    {
      phone_number: converted,
    }
  ),
  with_postal_code(value):: (
    local converted = value;
    assert std.isString(converted) : '"postal_code" expected to be of type "string"';
    {
      postal_code: converted,
    }
  ),
  with_state_or_region(value):: (
    local converted = value;
    assert std.isString(converted) : '"state_or_region" expected to be of type "string"';
    {
      state_or_region: converted,
    }
  ),
  with_website_url(value):: (
    local converted = value;
    assert std.isString(converted) : '"website_url" expected to be of type "string"';
    {
      website_url: converted,
    }
  ),
}
