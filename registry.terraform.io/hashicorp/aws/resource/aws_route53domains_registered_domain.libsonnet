{
  local block = self,
  new(domain_name):: (
    {}
    + block.with_domain_name(domain_name)
  ),
  with_abuse_contact_email(value):: (
    local converted = value;
    assert std.isString(converted) : '"abuse_contact_email" expected to be of type "string"';
    {
      abuse_contact_email: converted,
    }
  ),
  with_abuse_contact_phone(value):: (
    local converted = value;
    assert std.isString(converted) : '"abuse_contact_phone" expected to be of type "string"';
    {
      abuse_contact_phone: converted,
    }
  ),
  with_admin_privacy(value):: (
    local converted = value;
    assert std.isBoolean(converted) : '"admin_privacy" expected to be of type "bool"';
    {
      admin_privacy: converted,
    }
  ),
  with_auto_renew(value):: (
    local converted = value;
    assert std.isBoolean(converted) : '"auto_renew" expected to be of type "bool"';
    {
      auto_renew: converted,
    }
  ),
  with_billing_privacy(value):: (
    local converted = value;
    assert std.isBoolean(converted) : '"billing_privacy" expected to be of type "bool"';
    {
      billing_privacy: converted,
    }
  ),
  with_creation_date(value):: (
    local converted = value;
    assert std.isString(converted) : '"creation_date" expected to be of type "string"';
    {
      creation_date: converted,
    }
  ),
  with_domain_name(value):: (
    local converted = value;
    assert std.isString(converted) : '"domain_name" expected to be of type "string"';
    {
      domain_name: converted,
    }
  ),
  with_expiration_date(value):: (
    local converted = value;
    assert std.isString(converted) : '"expiration_date" expected to be of type "string"';
    {
      expiration_date: converted,
    }
  ),
  with_id(value):: (
    local converted = value;
    assert std.isString(converted) : '"id" expected to be of type "string"';
    {
      id: converted,
    }
  ),
  with_registrant_privacy(value):: (
    local converted = value;
    assert std.isBoolean(converted) : '"registrant_privacy" expected to be of type "bool"';
    {
      registrant_privacy: converted,
    }
  ),
  with_registrar_name(value):: (
    local converted = value;
    assert std.isString(converted) : '"registrar_name" expected to be of type "string"';
    {
      registrar_name: converted,
    }
  ),
  with_registrar_url(value):: (
    local converted = value;
    assert std.isString(converted) : '"registrar_url" expected to be of type "string"';
    {
      registrar_url: converted,
    }
  ),
  with_reseller(value):: (
    local converted = value;
    assert std.isString(converted) : '"reseller" expected to be of type "string"';
    {
      reseller: converted,
    }
  ),
  with_status_list(value):: (
    local converted = if std.isArray(value) then value else [value];
    assert std.isArray(converted) : '"status_list" expected to be of type "list"';
    {
      status_list: converted,
    }
  ),
  with_status_list_mixin(value):: (
    local converted = if std.isArray(value) then value else [value];
    assert std.isArray(converted) : '"status_list" expected to be of type "list"';
    {
      status_list+: converted,
    }
  ),
  with_tags(value):: (
    local converted = value;
    assert std.isObject(converted) : '"tags" expected to be of type "map"';
    {
      tags: converted,
    }
  ),
  with_tags_all(value):: (
    local converted = value;
    assert std.isObject(converted) : '"tags_all" expected to be of type "map"';
    {
      tags_all: converted,
    }
  ),
  with_tech_privacy(value):: (
    local converted = value;
    assert std.isBoolean(converted) : '"tech_privacy" expected to be of type "bool"';
    {
      tech_privacy: converted,
    }
  ),
  with_transfer_lock(value):: (
    local converted = value;
    assert std.isBoolean(converted) : '"transfer_lock" expected to be of type "bool"';
    {
      transfer_lock: converted,
    }
  ),
  with_updated_date(value):: (
    local converted = value;
    assert std.isString(converted) : '"updated_date" expected to be of type "string"';
    {
      updated_date: converted,
    }
  ),
  with_whois_server(value):: (
    local converted = value;
    assert std.isString(converted) : '"whois_server" expected to be of type "string"';
    {
      whois_server: converted,
    }
  ),
  admin_contact:: {
    local block = self,
    new():: (
      {}
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
    with_city(value):: (
      local converted = value;
      assert std.isString(converted) : '"city" expected to be of type "string"';
      {
        city: converted,
      }
    ),
    with_contact_type(value):: (
      local converted = value;
      assert std.isString(converted) : '"contact_type" expected to be of type "string"';
      {
        contact_type: converted,
      }
    ),
    with_country_code(value):: (
      local converted = value;
      assert std.isString(converted) : '"country_code" expected to be of type "string"';
      {
        country_code: converted,
      }
    ),
    with_email(value):: (
      local converted = value;
      assert std.isString(converted) : '"email" expected to be of type "string"';
      {
        email: converted,
      }
    ),
    with_extra_params(value):: (
      local converted = value;
      assert std.isObject(converted) : '"extra_params" expected to be of type "map"';
      {
        extra_params: converted,
      }
    ),
    with_fax(value):: (
      local converted = value;
      assert std.isString(converted) : '"fax" expected to be of type "string"';
      {
        fax: converted,
      }
    ),
    with_first_name(value):: (
      local converted = value;
      assert std.isString(converted) : '"first_name" expected to be of type "string"';
      {
        first_name: converted,
      }
    ),
    with_last_name(value):: (
      local converted = value;
      assert std.isString(converted) : '"last_name" expected to be of type "string"';
      {
        last_name: converted,
      }
    ),
    with_organization_name(value):: (
      local converted = value;
      assert std.isString(converted) : '"organization_name" expected to be of type "string"';
      {
        organization_name: converted,
      }
    ),
    with_phone_number(value):: (
      local converted = value;
      assert std.isString(converted) : '"phone_number" expected to be of type "string"';
      {
        phone_number: converted,
      }
    ),
    with_state(value):: (
      local converted = value;
      assert std.isString(converted) : '"state" expected to be of type "string"';
      {
        state: converted,
      }
    ),
    with_zip_code(value):: (
      local converted = value;
      assert std.isString(converted) : '"zip_code" expected to be of type "string"';
      {
        zip_code: converted,
      }
    ),
  },
  billing_contact:: {
    local block = self,
    new():: (
      {}
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
    with_city(value):: (
      local converted = value;
      assert std.isString(converted) : '"city" expected to be of type "string"';
      {
        city: converted,
      }
    ),
    with_contact_type(value):: (
      local converted = value;
      assert std.isString(converted) : '"contact_type" expected to be of type "string"';
      {
        contact_type: converted,
      }
    ),
    with_country_code(value):: (
      local converted = value;
      assert std.isString(converted) : '"country_code" expected to be of type "string"';
      {
        country_code: converted,
      }
    ),
    with_email(value):: (
      local converted = value;
      assert std.isString(converted) : '"email" expected to be of type "string"';
      {
        email: converted,
      }
    ),
    with_extra_params(value):: (
      local converted = value;
      assert std.isObject(converted) : '"extra_params" expected to be of type "map"';
      {
        extra_params: converted,
      }
    ),
    with_fax(value):: (
      local converted = value;
      assert std.isString(converted) : '"fax" expected to be of type "string"';
      {
        fax: converted,
      }
    ),
    with_first_name(value):: (
      local converted = value;
      assert std.isString(converted) : '"first_name" expected to be of type "string"';
      {
        first_name: converted,
      }
    ),
    with_last_name(value):: (
      local converted = value;
      assert std.isString(converted) : '"last_name" expected to be of type "string"';
      {
        last_name: converted,
      }
    ),
    with_organization_name(value):: (
      local converted = value;
      assert std.isString(converted) : '"organization_name" expected to be of type "string"';
      {
        organization_name: converted,
      }
    ),
    with_phone_number(value):: (
      local converted = value;
      assert std.isString(converted) : '"phone_number" expected to be of type "string"';
      {
        phone_number: converted,
      }
    ),
    with_state(value):: (
      local converted = value;
      assert std.isString(converted) : '"state" expected to be of type "string"';
      {
        state: converted,
      }
    ),
    with_zip_code(value):: (
      local converted = value;
      assert std.isString(converted) : '"zip_code" expected to be of type "string"';
      {
        zip_code: converted,
      }
    ),
  },
  name_server:: {
    local block = self,
    new(name):: (
      {}
      + block.with_name(name)
    ),
    with_glue_ips(value):: (
      local converted = if std.isArray(value) then value else [value];
      assert (std.isArray(converted) && std.length(std.set(converted)) == std.length(converted)) : '"glue_ips" expected to be of type "set"';
      {
        glue_ips: converted,
      }
    ),
    with_glue_ips_mixin(value):: (
      local converted = if std.isArray(value) then value else [value];
      assert (std.isArray(converted) && std.length(std.set(converted)) == std.length(converted)) : '"glue_ips" expected to be of type "set"';
      {
        glue_ips+: converted,
      }
    ),
    with_name(value):: (
      local converted = value;
      assert std.isString(converted) : '"name" expected to be of type "string"';
      {
        name: converted,
      }
    ),
  },
  registrant_contact:: {
    local block = self,
    new():: (
      {}
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
    with_city(value):: (
      local converted = value;
      assert std.isString(converted) : '"city" expected to be of type "string"';
      {
        city: converted,
      }
    ),
    with_contact_type(value):: (
      local converted = value;
      assert std.isString(converted) : '"contact_type" expected to be of type "string"';
      {
        contact_type: converted,
      }
    ),
    with_country_code(value):: (
      local converted = value;
      assert std.isString(converted) : '"country_code" expected to be of type "string"';
      {
        country_code: converted,
      }
    ),
    with_email(value):: (
      local converted = value;
      assert std.isString(converted) : '"email" expected to be of type "string"';
      {
        email: converted,
      }
    ),
    with_extra_params(value):: (
      local converted = value;
      assert std.isObject(converted) : '"extra_params" expected to be of type "map"';
      {
        extra_params: converted,
      }
    ),
    with_fax(value):: (
      local converted = value;
      assert std.isString(converted) : '"fax" expected to be of type "string"';
      {
        fax: converted,
      }
    ),
    with_first_name(value):: (
      local converted = value;
      assert std.isString(converted) : '"first_name" expected to be of type "string"';
      {
        first_name: converted,
      }
    ),
    with_last_name(value):: (
      local converted = value;
      assert std.isString(converted) : '"last_name" expected to be of type "string"';
      {
        last_name: converted,
      }
    ),
    with_organization_name(value):: (
      local converted = value;
      assert std.isString(converted) : '"organization_name" expected to be of type "string"';
      {
        organization_name: converted,
      }
    ),
    with_phone_number(value):: (
      local converted = value;
      assert std.isString(converted) : '"phone_number" expected to be of type "string"';
      {
        phone_number: converted,
      }
    ),
    with_state(value):: (
      local converted = value;
      assert std.isString(converted) : '"state" expected to be of type "string"';
      {
        state: converted,
      }
    ),
    with_zip_code(value):: (
      local converted = value;
      assert std.isString(converted) : '"zip_code" expected to be of type "string"';
      {
        zip_code: converted,
      }
    ),
  },
  tech_contact:: {
    local block = self,
    new():: (
      {}
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
    with_city(value):: (
      local converted = value;
      assert std.isString(converted) : '"city" expected to be of type "string"';
      {
        city: converted,
      }
    ),
    with_contact_type(value):: (
      local converted = value;
      assert std.isString(converted) : '"contact_type" expected to be of type "string"';
      {
        contact_type: converted,
      }
    ),
    with_country_code(value):: (
      local converted = value;
      assert std.isString(converted) : '"country_code" expected to be of type "string"';
      {
        country_code: converted,
      }
    ),
    with_email(value):: (
      local converted = value;
      assert std.isString(converted) : '"email" expected to be of type "string"';
      {
        email: converted,
      }
    ),
    with_extra_params(value):: (
      local converted = value;
      assert std.isObject(converted) : '"extra_params" expected to be of type "map"';
      {
        extra_params: converted,
      }
    ),
    with_fax(value):: (
      local converted = value;
      assert std.isString(converted) : '"fax" expected to be of type "string"';
      {
        fax: converted,
      }
    ),
    with_first_name(value):: (
      local converted = value;
      assert std.isString(converted) : '"first_name" expected to be of type "string"';
      {
        first_name: converted,
      }
    ),
    with_last_name(value):: (
      local converted = value;
      assert std.isString(converted) : '"last_name" expected to be of type "string"';
      {
        last_name: converted,
      }
    ),
    with_organization_name(value):: (
      local converted = value;
      assert std.isString(converted) : '"organization_name" expected to be of type "string"';
      {
        organization_name: converted,
      }
    ),
    with_phone_number(value):: (
      local converted = value;
      assert std.isString(converted) : '"phone_number" expected to be of type "string"';
      {
        phone_number: converted,
      }
    ),
    with_state(value):: (
      local converted = value;
      assert std.isString(converted) : '"state" expected to be of type "string"';
      {
        state: converted,
      }
    ),
    with_zip_code(value):: (
      local converted = value;
      assert std.isString(converted) : '"zip_code" expected to be of type "string"';
      {
        zip_code: converted,
      }
    ),
  },
  timeouts:: {
    local block = self,
    new():: (
      {}
    ),
    with_create(value):: (
      local converted = value;
      assert std.isString(converted) : '"create" expected to be of type "string"';
      {
        create: converted,
      }
    ),
    with_update(value):: (
      local converted = value;
      assert std.isString(converted) : '"update" expected to be of type "string"';
      {
        update: converted,
      }
    ),
  },
  with_admin_contact(value):: (
    local converted = if std.isArray(value) then value else [value];
    {
      admin_contact: value,
    }
  ),
  with_billing_contact(value):: (
    local converted = if std.isArray(value) then value else [value];
    {
      billing_contact: value,
    }
  ),
  with_name_server(value):: (
    local converted = if std.isArray(value) then value else [value];
    {
      name_server: value,
    }
  ),
  with_registrant_contact(value):: (
    local converted = if std.isArray(value) then value else [value];
    {
      registrant_contact: value,
    }
  ),
  with_tech_contact(value):: (
    local converted = if std.isArray(value) then value else [value];
    {
      tech_contact: value,
    }
  ),
  with_timeouts(value):: (
    local converted = value;
    {
      timeouts: value,
    }
  ),
  with_admin_contact_mixin(value):: (
    local converted = if std.isArray(value) then value else [value];
    {
      admin_contact+: converted,
    }
  ),
  with_billing_contact_mixin(value):: (
    local converted = if std.isArray(value) then value else [value];
    {
      billing_contact+: converted,
    }
  ),
  with_name_server_mixin(value):: (
    local converted = if std.isArray(value) then value else [value];
    {
      name_server+: converted,
    }
  ),
  with_registrant_contact_mixin(value):: (
    local converted = if std.isArray(value) then value else [value];
    {
      registrant_contact+: converted,
    }
  ),
  with_tech_contact_mixin(value):: (
    local converted = if std.isArray(value) then value else [value];
    {
      tech_contact+: converted,
    }
  ),
}
