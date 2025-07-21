{
  local block = self,
  new(identity_store_id):: (
    {}
    + block.with_identity_store_id(identity_store_id)
  ),
  with_addresses(value):: (
    local converted = if std.isArray(value) then value else [value];
    assert std.isArray(converted) : '"addresses" expected to be of type "list"';
    {
      addresses: converted,
    }
  ),
  with_addresses_mixin(value):: (
    local converted = if std.isArray(value) then value else [value];
    assert std.isArray(converted) : '"addresses" expected to be of type "list"';
    {
      addresses+: converted,
    }
  ),
  with_display_name(value):: (
    local converted = value;
    assert std.isString(converted) : '"display_name" expected to be of type "string"';
    {
      display_name: converted,
    }
  ),
  with_emails(value):: (
    local converted = if std.isArray(value) then value else [value];
    assert std.isArray(converted) : '"emails" expected to be of type "list"';
    {
      emails: converted,
    }
  ),
  with_emails_mixin(value):: (
    local converted = if std.isArray(value) then value else [value];
    assert std.isArray(converted) : '"emails" expected to be of type "list"';
    {
      emails+: converted,
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
  with_name(value):: (
    local converted = if std.isArray(value) then value else [value];
    assert std.isArray(converted) : '"name" expected to be of type "list"';
    {
      name: converted,
    }
  ),
  with_name_mixin(value):: (
    local converted = if std.isArray(value) then value else [value];
    assert std.isArray(converted) : '"name" expected to be of type "list"';
    {
      name+: converted,
    }
  ),
  with_nickname(value):: (
    local converted = value;
    assert std.isString(converted) : '"nickname" expected to be of type "string"';
    {
      nickname: converted,
    }
  ),
  with_phone_numbers(value):: (
    local converted = if std.isArray(value) then value else [value];
    assert std.isArray(converted) : '"phone_numbers" expected to be of type "list"';
    {
      phone_numbers: converted,
    }
  ),
  with_phone_numbers_mixin(value):: (
    local converted = if std.isArray(value) then value else [value];
    assert std.isArray(converted) : '"phone_numbers" expected to be of type "list"';
    {
      phone_numbers+: converted,
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
  alternate_identifier:: {
    local block = self,
    new():: (
      {}
    ),
    external_id:: {
      local block = self,
      new(id, issuer):: (
        {}
        + block.with_id(id)
        + block.with_issuer(issuer)
      ),
      with_id(value):: (
        local converted = value;
        assert std.isString(converted) : '"id" expected to be of type "string"';
        {
          id: converted,
        }
      ),
      with_issuer(value):: (
        local converted = value;
        assert std.isString(converted) : '"issuer" expected to be of type "string"';
        {
          issuer: converted,
        }
      ),
    },
    unique_attribute:: {
      local block = self,
      new(attribute_path, attribute_value):: (
        {}
        + block.with_attribute_path(attribute_path)
        + block.with_attribute_value(attribute_value)
      ),
      with_attribute_path(value):: (
        local converted = value;
        assert std.isString(converted) : '"attribute_path" expected to be of type "string"';
        {
          attribute_path: converted,
        }
      ),
      with_attribute_value(value):: (
        local converted = value;
        assert std.isString(converted) : '"attribute_value" expected to be of type "string"';
        {
          attribute_value: converted,
        }
      ),
    },
    with_external_id(value):: (
      local converted = if std.isArray(value) then value else [value];
      {
        external_id: value,
      }
    ),
    with_unique_attribute(value):: (
      local converted = if std.isArray(value) then value else [value];
      {
        unique_attribute: value,
      }
    ),
    with_external_id_mixin(value):: (
      local converted = if std.isArray(value) then value else [value];
      {
        external_id+: converted,
      }
    ),
    with_unique_attribute_mixin(value):: (
      local converted = if std.isArray(value) then value else [value];
      {
        unique_attribute+: converted,
      }
    ),
  },
  with_alternate_identifier(value):: (
    local converted = if std.isArray(value) then value else [value];
    {
      alternate_identifier: value,
    }
  ),
  with_alternate_identifier_mixin(value):: (
    local converted = if std.isArray(value) then value else [value];
    {
      alternate_identifier+: converted,
    }
  ),
}
