{
  local block = self,
  new(domain_name):: (
    {}
    + block.with_domain_name(domain_name)
  ),
  with_account_number(value):: (
    local converted = value;
    assert std.isString(converted) : '"account_number" expected to be of type "string"';
    {
      account_number: converted,
    }
  ),
  with_additional_information(value):: (
    local converted = value;
    assert std.isString(converted) : '"additional_information" expected to be of type "string"';
    {
      additional_information: converted,
    }
  ),
  with_attributes(value):: (
    local converted = value;
    assert std.isObject(converted) : '"attributes" expected to be of type "map"';
    {
      attributes: converted,
    }
  ),
  with_birth_date(value):: (
    local converted = value;
    assert std.isString(converted) : '"birth_date" expected to be of type "string"';
    {
      birth_date: converted,
    }
  ),
  with_business_email_address(value):: (
    local converted = value;
    assert std.isString(converted) : '"business_email_address" expected to be of type "string"';
    {
      business_email_address: converted,
    }
  ),
  with_business_name(value):: (
    local converted = value;
    assert std.isString(converted) : '"business_name" expected to be of type "string"';
    {
      business_name: converted,
    }
  ),
  with_business_phone_number(value):: (
    local converted = value;
    assert std.isString(converted) : '"business_phone_number" expected to be of type "string"';
    {
      business_phone_number: converted,
    }
  ),
  with_domain_name(value):: (
    local converted = value;
    assert std.isString(converted) : '"domain_name" expected to be of type "string"';
    {
      domain_name: converted,
    }
  ),
  with_email_address(value):: (
    local converted = value;
    assert std.isString(converted) : '"email_address" expected to be of type "string"';
    {
      email_address: converted,
    }
  ),
  with_first_name(value):: (
    local converted = value;
    assert std.isString(converted) : '"first_name" expected to be of type "string"';
    {
      first_name: converted,
    }
  ),
  with_gender_string(value):: (
    local converted = value;
    assert std.isString(converted) : '"gender_string" expected to be of type "string"';
    {
      gender_string: converted,
    }
  ),
  with_home_phone_number(value):: (
    local converted = value;
    assert std.isString(converted) : '"home_phone_number" expected to be of type "string"';
    {
      home_phone_number: converted,
    }
  ),
  with_id(value):: (
    local converted = value;
    assert std.isString(converted) : '"id" expected to be of type "string"';
    {
      id: converted,
    }
  ),
  with_last_name(value):: (
    local converted = value;
    assert std.isString(converted) : '"last_name" expected to be of type "string"';
    {
      last_name: converted,
    }
  ),
  with_middle_name(value):: (
    local converted = value;
    assert std.isString(converted) : '"middle_name" expected to be of type "string"';
    {
      middle_name: converted,
    }
  ),
  with_mobile_phone_number(value):: (
    local converted = value;
    assert std.isString(converted) : '"mobile_phone_number" expected to be of type "string"';
    {
      mobile_phone_number: converted,
    }
  ),
  with_party_type_string(value):: (
    local converted = value;
    assert std.isString(converted) : '"party_type_string" expected to be of type "string"';
    {
      party_type_string: converted,
    }
  ),
  with_personal_email_address(value):: (
    local converted = value;
    assert std.isString(converted) : '"personal_email_address" expected to be of type "string"';
    {
      personal_email_address: converted,
    }
  ),
  with_phone_number(value):: (
    local converted = value;
    assert std.isString(converted) : '"phone_number" expected to be of type "string"';
    {
      phone_number: converted,
    }
  ),
  '#with_region':: 'Region where this resource will be [managed](https://docs.aws.amazon.com/general/latest/gr/rande.html#regional-endpoints). Defaults to the Region set in the [provider configuration](https://registry.terraform.io/providers/hashicorp/aws/latest/docs#aws-configuration-reference).',
  with_region(value):: (
    local converted = value;
    assert std.isString(converted) : '"region" expected to be of type "string"';
    {
      region: converted,
    }
  ),
  address:: {
    local block = self,
    new():: (
      {}
    ),
    with_address_1(value):: (
      local converted = value;
      assert std.isString(converted) : '"address_1" expected to be of type "string"';
      {
        address_1: converted,
      }
    ),
    with_address_2(value):: (
      local converted = value;
      assert std.isString(converted) : '"address_2" expected to be of type "string"';
      {
        address_2: converted,
      }
    ),
    with_address_3(value):: (
      local converted = value;
      assert std.isString(converted) : '"address_3" expected to be of type "string"';
      {
        address_3: converted,
      }
    ),
    with_address_4(value):: (
      local converted = value;
      assert std.isString(converted) : '"address_4" expected to be of type "string"';
      {
        address_4: converted,
      }
    ),
    with_city(value):: (
      local converted = value;
      assert std.isString(converted) : '"city" expected to be of type "string"';
      {
        city: converted,
      }
    ),
    with_country(value):: (
      local converted = value;
      assert std.isString(converted) : '"country" expected to be of type "string"';
      {
        country: converted,
      }
    ),
    with_county(value):: (
      local converted = value;
      assert std.isString(converted) : '"county" expected to be of type "string"';
      {
        county: converted,
      }
    ),
    with_postal_code(value):: (
      local converted = value;
      assert std.isString(converted) : '"postal_code" expected to be of type "string"';
      {
        postal_code: converted,
      }
    ),
    with_province(value):: (
      local converted = value;
      assert std.isString(converted) : '"province" expected to be of type "string"';
      {
        province: converted,
      }
    ),
    with_state(value):: (
      local converted = value;
      assert std.isString(converted) : '"state" expected to be of type "string"';
      {
        state: converted,
      }
    ),
  },
  billing_address:: {
    local block = self,
    new():: (
      {}
    ),
    with_address_1(value):: (
      local converted = value;
      assert std.isString(converted) : '"address_1" expected to be of type "string"';
      {
        address_1: converted,
      }
    ),
    with_address_2(value):: (
      local converted = value;
      assert std.isString(converted) : '"address_2" expected to be of type "string"';
      {
        address_2: converted,
      }
    ),
    with_address_3(value):: (
      local converted = value;
      assert std.isString(converted) : '"address_3" expected to be of type "string"';
      {
        address_3: converted,
      }
    ),
    with_address_4(value):: (
      local converted = value;
      assert std.isString(converted) : '"address_4" expected to be of type "string"';
      {
        address_4: converted,
      }
    ),
    with_city(value):: (
      local converted = value;
      assert std.isString(converted) : '"city" expected to be of type "string"';
      {
        city: converted,
      }
    ),
    with_country(value):: (
      local converted = value;
      assert std.isString(converted) : '"country" expected to be of type "string"';
      {
        country: converted,
      }
    ),
    with_county(value):: (
      local converted = value;
      assert std.isString(converted) : '"county" expected to be of type "string"';
      {
        county: converted,
      }
    ),
    with_postal_code(value):: (
      local converted = value;
      assert std.isString(converted) : '"postal_code" expected to be of type "string"';
      {
        postal_code: converted,
      }
    ),
    with_province(value):: (
      local converted = value;
      assert std.isString(converted) : '"province" expected to be of type "string"';
      {
        province: converted,
      }
    ),
    with_state(value):: (
      local converted = value;
      assert std.isString(converted) : '"state" expected to be of type "string"';
      {
        state: converted,
      }
    ),
  },
  mailing_address:: {
    local block = self,
    new():: (
      {}
    ),
    with_address_1(value):: (
      local converted = value;
      assert std.isString(converted) : '"address_1" expected to be of type "string"';
      {
        address_1: converted,
      }
    ),
    with_address_2(value):: (
      local converted = value;
      assert std.isString(converted) : '"address_2" expected to be of type "string"';
      {
        address_2: converted,
      }
    ),
    with_address_3(value):: (
      local converted = value;
      assert std.isString(converted) : '"address_3" expected to be of type "string"';
      {
        address_3: converted,
      }
    ),
    with_address_4(value):: (
      local converted = value;
      assert std.isString(converted) : '"address_4" expected to be of type "string"';
      {
        address_4: converted,
      }
    ),
    with_city(value):: (
      local converted = value;
      assert std.isString(converted) : '"city" expected to be of type "string"';
      {
        city: converted,
      }
    ),
    with_country(value):: (
      local converted = value;
      assert std.isString(converted) : '"country" expected to be of type "string"';
      {
        country: converted,
      }
    ),
    with_county(value):: (
      local converted = value;
      assert std.isString(converted) : '"county" expected to be of type "string"';
      {
        county: converted,
      }
    ),
    with_postal_code(value):: (
      local converted = value;
      assert std.isString(converted) : '"postal_code" expected to be of type "string"';
      {
        postal_code: converted,
      }
    ),
    with_province(value):: (
      local converted = value;
      assert std.isString(converted) : '"province" expected to be of type "string"';
      {
        province: converted,
      }
    ),
    with_state(value):: (
      local converted = value;
      assert std.isString(converted) : '"state" expected to be of type "string"';
      {
        state: converted,
      }
    ),
  },
  shipping_address:: {
    local block = self,
    new():: (
      {}
    ),
    with_address_1(value):: (
      local converted = value;
      assert std.isString(converted) : '"address_1" expected to be of type "string"';
      {
        address_1: converted,
      }
    ),
    with_address_2(value):: (
      local converted = value;
      assert std.isString(converted) : '"address_2" expected to be of type "string"';
      {
        address_2: converted,
      }
    ),
    with_address_3(value):: (
      local converted = value;
      assert std.isString(converted) : '"address_3" expected to be of type "string"';
      {
        address_3: converted,
      }
    ),
    with_address_4(value):: (
      local converted = value;
      assert std.isString(converted) : '"address_4" expected to be of type "string"';
      {
        address_4: converted,
      }
    ),
    with_city(value):: (
      local converted = value;
      assert std.isString(converted) : '"city" expected to be of type "string"';
      {
        city: converted,
      }
    ),
    with_country(value):: (
      local converted = value;
      assert std.isString(converted) : '"country" expected to be of type "string"';
      {
        country: converted,
      }
    ),
    with_county(value):: (
      local converted = value;
      assert std.isString(converted) : '"county" expected to be of type "string"';
      {
        county: converted,
      }
    ),
    with_postal_code(value):: (
      local converted = value;
      assert std.isString(converted) : '"postal_code" expected to be of type "string"';
      {
        postal_code: converted,
      }
    ),
    with_province(value):: (
      local converted = value;
      assert std.isString(converted) : '"province" expected to be of type "string"';
      {
        province: converted,
      }
    ),
    with_state(value):: (
      local converted = value;
      assert std.isString(converted) : '"state" expected to be of type "string"';
      {
        state: converted,
      }
    ),
  },
  with_address(value):: (
    local converted = if std.isArray(value) then value else [value];
    {
      address: value,
    }
  ),
  with_billing_address(value):: (
    local converted = if std.isArray(value) then value else [value];
    {
      billing_address: value,
    }
  ),
  with_mailing_address(value):: (
    local converted = if std.isArray(value) then value else [value];
    {
      mailing_address: value,
    }
  ),
  with_shipping_address(value):: (
    local converted = if std.isArray(value) then value else [value];
    {
      shipping_address: value,
    }
  ),
  with_address_mixin(value):: (
    local converted = if std.isArray(value) then value else [value];
    {
      address+: converted,
    }
  ),
  with_billing_address_mixin(value):: (
    local converted = if std.isArray(value) then value else [value];
    {
      billing_address+: converted,
    }
  ),
  with_mailing_address_mixin(value):: (
    local converted = if std.isArray(value) then value else [value];
    {
      mailing_address+: converted,
    }
  ),
  with_shipping_address_mixin(value):: (
    local converted = if std.isArray(value) then value else [value];
    {
      shipping_address+: converted,
    }
  ),
}
