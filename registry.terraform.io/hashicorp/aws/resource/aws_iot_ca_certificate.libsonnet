{
  local block = self,
  new(active, allow_auto_registration, ca_certificate_pem):: (
    {}
    + block.with_active(active)
    + block.with_allow_auto_registration(allow_auto_registration)
    + block.with_ca_certificate_pem(ca_certificate_pem)
  ),
  with_active(value):: (
    local converted = value;
    assert std.isBoolean(converted) : '"active" expected to be of type "bool"';
    {
      active: converted,
    }
  ),
  with_allow_auto_registration(value):: (
    local converted = value;
    assert std.isBoolean(converted) : '"allow_auto_registration" expected to be of type "bool"';
    {
      allow_auto_registration: converted,
    }
  ),
  with_arn(value):: (
    local converted = value;
    assert std.isString(converted) : '"arn" expected to be of type "string"';
    {
      arn: converted,
    }
  ),
  with_ca_certificate_pem(value):: (
    local converted = value;
    assert std.isString(converted) : '"ca_certificate_pem" expected to be of type "string"';
    {
      ca_certificate_pem: converted,
    }
  ),
  with_certificate_mode(value):: (
    local converted = value;
    assert std.isString(converted) : '"certificate_mode" expected to be of type "string"';
    {
      certificate_mode: converted,
    }
  ),
  with_customer_version(value):: (
    local converted = value;
    assert std.isNumber(converted) : '"customer_version" expected to be of type "number"';
    {
      customer_version: converted,
    }
  ),
  with_generation_id(value):: (
    local converted = value;
    assert std.isString(converted) : '"generation_id" expected to be of type "string"';
    {
      generation_id: converted,
    }
  ),
  with_id(value):: (
    local converted = value;
    assert std.isString(converted) : '"id" expected to be of type "string"';
    {
      id: converted,
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
  with_validity(value):: (
    local converted = if std.isArray(value) then value else [value];
    assert std.isArray(converted) : '"validity" expected to be of type "list"';
    {
      validity: converted,
    }
  ),
  with_validity_mixin(value):: (
    local converted = if std.isArray(value) then value else [value];
    assert std.isArray(converted) : '"validity" expected to be of type "list"';
    {
      validity+: converted,
    }
  ),
  with_verification_certificate_pem(value):: (
    local converted = value;
    assert std.isString(converted) : '"verification_certificate_pem" expected to be of type "string"';
    {
      verification_certificate_pem: converted,
    }
  ),
  registration_config:: {
    local block = self,
    new():: (
      {}
    ),
    with_role_arn(value):: (
      local converted = value;
      assert std.isString(converted) : '"role_arn" expected to be of type "string"';
      {
        role_arn: converted,
      }
    ),
    with_template_body(value):: (
      local converted = value;
      assert std.isString(converted) : '"template_body" expected to be of type "string"';
      {
        template_body: converted,
      }
    ),
    with_template_name(value):: (
      local converted = value;
      assert std.isString(converted) : '"template_name" expected to be of type "string"';
      {
        template_name: converted,
      }
    ),
  },
  with_registration_config(value):: (
    local converted = if std.isArray(value) then value else [value];
    {
      registration_config: value,
    }
  ),
  with_registration_config_mixin(value):: (
    local converted = if std.isArray(value) then value else [value];
    {
      registration_config+: converted,
    }
  ),
}
