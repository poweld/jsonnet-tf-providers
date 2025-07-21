{
  local block = self,
  new(display_name, identity_store_id, user_name):: (
    {}
    + block.with_display_name(display_name)
    + block.with_identity_store_id(identity_store_id)
    + block.with_user_name(user_name)
  ),
  with_display_name(value):: (
    local converted = value;
    assert std.isString(converted) : '"display_name" expected to be of type "string"';
    {
      display_name: converted,
    }
  ),
  with_external_ids(value):: (
    local converted = if std.isArray(value) then value else [value];
    assert std.isArray(converted) : '"external_ids" expected to be of type "list"';
    {
      external_ids: converted,
    }
  ),
  with_external_ids_mixin(value):: (
    local converted = if std.isArray(value) then value else [value];
    assert std.isArray(converted) : '"external_ids" expected to be of type "list"';
    {
      external_ids+: converted,
    }
  ),
  with_id(value):: (
    local converted = value;
    assert std.isString(converted) : '"id" expected to be of type "string"';
    {
      id: converted,
    }
  ),
  with_identity_store_id(value):: (
    local converted = value;
    assert std.isString(converted) : '"identity_store_id" expected to be of type "string"';
    {
      identity_store_id: converted,
    }
  ),
  with_locale(value):: (
    local converted = value;
    assert std.isString(converted) : '"locale" expected to be of type "string"';
    {
      locale: converted,
    }
  ),
  with_nickname(value):: (
    local converted = value;
    assert std.isString(converted) : '"nickname" expected to be of type "string"';
    {
      nickname: converted,
    }
  ),
  with_preferred_language(value):: (
    local converted = value;
    assert std.isString(converted) : '"preferred_language" expected to be of type "string"';
    {
      preferred_language: converted,
    }
  ),
  with_profile_url(value):: (
    local converted = value;
    assert std.isString(converted) : '"profile_url" expected to be of type "string"';
    {
      profile_url: converted,
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
  with_timezone(value):: (
    local converted = value;
    assert std.isString(converted) : '"timezone" expected to be of type "string"';
    {
      timezone: converted,
    }
  ),
  with_title(value):: (
    local converted = value;
    assert std.isString(converted) : '"title" expected to be of type "string"';
    {
      title: converted,
    }
  ),
  with_user_id(value):: (
    local converted = value;
    assert std.isString(converted) : '"user_id" expected to be of type "string"';
    {
      user_id: converted,
    }
  ),
  with_user_name(value):: (
    local converted = value;
    assert std.isString(converted) : '"user_name" expected to be of type "string"';
    {
      user_name: converted,
    }
  ),
  with_user_type(value):: (
    local converted = value;
    assert std.isString(converted) : '"user_type" expected to be of type "string"';
    {
      user_type: converted,
    }
  ),
  addresses:: {
    local block = self,
    new():: (
      {}
    ),
    with_country(value):: (
      local converted = value;
      assert std.isString(converted) : '"country" expected to be of type "string"';
      {
        country: converted,
      }
    ),
    with_formatted(value):: (
      local converted = value;
      assert std.isString(converted) : '"formatted" expected to be of type "string"';
      {
        formatted: converted,
      }
    ),
    with_locality(value):: (
      local converted = value;
      assert std.isString(converted) : '"locality" expected to be of type "string"';
      {
        locality: converted,
      }
    ),
    with_postal_code(value):: (
      local converted = value;
      assert std.isString(converted) : '"postal_code" expected to be of type "string"';
      {
        postal_code: converted,
      }
    ),
    with_primary(value):: (
      local converted = value;
      assert std.isBoolean(converted) : '"primary" expected to be of type "bool"';
      {
        primary: converted,
      }
    ),
    with_region(value):: (
      local converted = value;
      assert std.isString(converted) : '"region" expected to be of type "string"';
      {
        region: converted,
      }
    ),
    with_street_address(value):: (
      local converted = value;
      assert std.isString(converted) : '"street_address" expected to be of type "string"';
      {
        street_address: converted,
      }
    ),
    with_type(value):: (
      local converted = value;
      assert std.isString(converted) : '"type" expected to be of type "string"';
      {
        type: converted,
      }
    ),
  },
  emails:: {
    local block = self,
    new():: (
      {}
    ),
    with_primary(value):: (
      local converted = value;
      assert std.isBoolean(converted) : '"primary" expected to be of type "bool"';
      {
        primary: converted,
      }
    ),
    with_type(value):: (
      local converted = value;
      assert std.isString(converted) : '"type" expected to be of type "string"';
      {
        type: converted,
      }
    ),
    with_value(value):: (
      local converted = value;
      assert std.isString(converted) : '"value" expected to be of type "string"';
      {
        value: converted,
      }
    ),
  },
  name:: {
    local block = self,
    new(family_name, given_name):: (
      {}
      + block.with_family_name(family_name)
      + block.with_given_name(given_name)
    ),
    with_family_name(value):: (
      local converted = value;
      assert std.isString(converted) : '"family_name" expected to be of type "string"';
      {
        family_name: converted,
      }
    ),
    with_formatted(value):: (
      local converted = value;
      assert std.isString(converted) : '"formatted" expected to be of type "string"';
      {
        formatted: converted,
      }
    ),
    with_given_name(value):: (
      local converted = value;
      assert std.isString(converted) : '"given_name" expected to be of type "string"';
      {
        given_name: converted,
      }
    ),
    with_honorific_prefix(value):: (
      local converted = value;
      assert std.isString(converted) : '"honorific_prefix" expected to be of type "string"';
      {
        honorific_prefix: converted,
      }
    ),
    with_honorific_suffix(value):: (
      local converted = value;
      assert std.isString(converted) : '"honorific_suffix" expected to be of type "string"';
      {
        honorific_suffix: converted,
      }
    ),
    with_middle_name(value):: (
      local converted = value;
      assert std.isString(converted) : '"middle_name" expected to be of type "string"';
      {
        middle_name: converted,
      }
    ),
  },
  phone_numbers:: {
    local block = self,
    new():: (
      {}
    ),
    with_primary(value):: (
      local converted = value;
      assert std.isBoolean(converted) : '"primary" expected to be of type "bool"';
      {
        primary: converted,
      }
    ),
    with_type(value):: (
      local converted = value;
      assert std.isString(converted) : '"type" expected to be of type "string"';
      {
        type: converted,
      }
    ),
    with_value(value):: (
      local converted = value;
      assert std.isString(converted) : '"value" expected to be of type "string"';
      {
        value: converted,
      }
    ),
  },
  with_addresses(value):: (
    local converted = if std.isArray(value) then value else [value];
    {
      addresses: value,
    }
  ),
  with_emails(value):: (
    local converted = if std.isArray(value) then value else [value];
    {
      emails: value,
    }
  ),
  with_name(value):: (
    local converted = if std.isArray(value) then value else [value];
    {
      name: value,
    }
  ),
  with_phone_numbers(value):: (
    local converted = if std.isArray(value) then value else [value];
    {
      phone_numbers: value,
    }
  ),
  with_addresses_mixin(value):: (
    local converted = if std.isArray(value) then value else [value];
    {
      addresses+: converted,
    }
  ),
  with_emails_mixin(value):: (
    local converted = if std.isArray(value) then value else [value];
    {
      emails+: converted,
    }
  ),
  with_name_mixin(value):: (
    local converted = if std.isArray(value) then value else [value];
    {
      name+: converted,
    }
  ),
  with_phone_numbers_mixin(value):: (
    local converted = if std.isArray(value) then value else [value];
    {
      phone_numbers+: converted,
    }
  ),
}
