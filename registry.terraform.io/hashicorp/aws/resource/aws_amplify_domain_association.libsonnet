{
  local block = self,
  new(app_id, domain_name):: (
    {}
    + block.with_app_id(app_id)
    + block.with_domain_name(domain_name)
  ),
  with_app_id(value):: (
    local converted = value;
    assert std.isString(converted) : '"app_id" expected to be of type "string"';
    {
      app_id: converted,
    }
  ),
  with_arn(value):: (
    local converted = value;
    assert std.isString(converted) : '"arn" expected to be of type "string"';
    {
      arn: converted,
    }
  ),
  with_certificate_verification_dns_record(value):: (
    local converted = value;
    assert std.isString(converted) : '"certificate_verification_dns_record" expected to be of type "string"';
    {
      certificate_verification_dns_record: converted,
    }
  ),
  with_domain_name(value):: (
    local converted = value;
    assert std.isString(converted) : '"domain_name" expected to be of type "string"';
    {
      domain_name: converted,
    }
  ),
  with_enable_auto_sub_domain(value):: (
    local converted = value;
    assert std.isBoolean(converted) : '"enable_auto_sub_domain" expected to be of type "bool"';
    {
      enable_auto_sub_domain: converted,
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
  with_wait_for_verification(value):: (
    local converted = value;
    assert std.isBoolean(converted) : '"wait_for_verification" expected to be of type "bool"';
    {
      wait_for_verification: converted,
    }
  ),
  certificate_settings:: {
    local block = self,
    new(type):: (
      {}
      + block.with_type(type)
    ),
    with_certificate_verification_dns_record(value):: (
      local converted = value;
      assert std.isString(converted) : '"certificate_verification_dns_record" expected to be of type "string"';
      {
        certificate_verification_dns_record: converted,
      }
    ),
    with_custom_certificate_arn(value):: (
      local converted = value;
      assert std.isString(converted) : '"custom_certificate_arn" expected to be of type "string"';
      {
        custom_certificate_arn: converted,
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
  sub_domain:: {
    local block = self,
    new(branch_name, prefix):: (
      {}
      + block.with_branch_name(branch_name)
      + block.with_prefix(prefix)
    ),
    with_branch_name(value):: (
      local converted = value;
      assert std.isString(converted) : '"branch_name" expected to be of type "string"';
      {
        branch_name: converted,
      }
    ),
    with_dns_record(value):: (
      local converted = value;
      assert std.isString(converted) : '"dns_record" expected to be of type "string"';
      {
        dns_record: converted,
      }
    ),
    with_prefix(value):: (
      local converted = value;
      assert std.isString(converted) : '"prefix" expected to be of type "string"';
      {
        prefix: converted,
      }
    ),
    with_verified(value):: (
      local converted = value;
      assert std.isBoolean(converted) : '"verified" expected to be of type "bool"';
      {
        verified: converted,
      }
    ),
  },
  with_certificate_settings(value):: (
    local converted = if std.isArray(value) then value else [value];
    {
      certificate_settings: value,
    }
  ),
  with_sub_domain(value):: (
    local converted = if std.isArray(value) then value else [value];
    {
      sub_domain: value,
    }
  ),
  with_certificate_settings_mixin(value):: (
    local converted = if std.isArray(value) then value else [value];
    {
      certificate_settings+: converted,
    }
  ),
  with_sub_domain_mixin(value):: (
    local converted = if std.isArray(value) then value else [value];
    {
      sub_domain+: converted,
    }
  ),
}
