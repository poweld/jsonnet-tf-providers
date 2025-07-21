{
  local block = self,
  new():: (
    {}
  ),
  with_arn(value):: (
    local converted = value;
    assert std.isString(converted) : '"arn" expected to be of type "string"';
    {
      arn: converted,
    }
  ),
  with_certificate_authority_arn(value):: (
    local converted = value;
    assert std.isString(converted) : '"certificate_authority_arn" expected to be of type "string"';
    {
      certificate_authority_arn: converted,
    }
  ),
  with_certificate_body(value):: (
    local converted = value;
    assert std.isString(converted) : '"certificate_body" expected to be of type "string"';
    {
      certificate_body: converted,
    }
  ),
  with_certificate_chain(value):: (
    local converted = value;
    assert std.isString(converted) : '"certificate_chain" expected to be of type "string"';
    {
      certificate_chain: converted,
    }
  ),
  with_domain_name(value):: (
    local converted = value;
    assert std.isString(converted) : '"domain_name" expected to be of type "string"';
    {
      domain_name: converted,
    }
  ),
  with_domain_validation_options(value):: (
    local converted = if std.isArray(value) then value else [value];
    assert (std.isArray(converted) && std.length(std.set(converted)) == std.length(converted)) : '"domain_validation_options" expected to be of type "set"';
    {
      domain_validation_options: converted,
    }
  ),
  with_domain_validation_options_mixin(value):: (
    local converted = if std.isArray(value) then value else [value];
    assert (std.isArray(converted) && std.length(std.set(converted)) == std.length(converted)) : '"domain_validation_options" expected to be of type "set"';
    {
      domain_validation_options+: converted,
    }
  ),
  with_early_renewal_duration(value):: (
    local converted = value;
    assert std.isString(converted) : '"early_renewal_duration" expected to be of type "string"';
    {
      early_renewal_duration: converted,
    }
  ),
  with_id(value):: (
    local converted = value;
    assert std.isString(converted) : '"id" expected to be of type "string"';
    {
      id: converted,
    }
  ),
  with_key_algorithm(value):: (
    local converted = value;
    assert std.isString(converted) : '"key_algorithm" expected to be of type "string"';
    {
      key_algorithm: converted,
    }
  ),
  with_not_after(value):: (
    local converted = value;
    assert std.isString(converted) : '"not_after" expected to be of type "string"';
    {
      not_after: converted,
    }
  ),
  with_not_before(value):: (
    local converted = value;
    assert std.isString(converted) : '"not_before" expected to be of type "string"';
    {
      not_before: converted,
    }
  ),
  with_pending_renewal(value):: (
    local converted = value;
    assert std.isBoolean(converted) : '"pending_renewal" expected to be of type "bool"';
    {
      pending_renewal: converted,
    }
  ),
  with_private_key(value):: (
    local converted = value;
    assert std.isString(converted) : '"private_key" expected to be of type "string"';
    {
      private_key: converted,
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
  with_renewal_eligibility(value):: (
    local converted = value;
    assert std.isString(converted) : '"renewal_eligibility" expected to be of type "string"';
    {
      renewal_eligibility: converted,
    }
  ),
  with_renewal_summary(value):: (
    local converted = if std.isArray(value) then value else [value];
    assert std.isArray(converted) : '"renewal_summary" expected to be of type "list"';
    {
      renewal_summary: converted,
    }
  ),
  with_renewal_summary_mixin(value):: (
    local converted = if std.isArray(value) then value else [value];
    assert std.isArray(converted) : '"renewal_summary" expected to be of type "list"';
    {
      renewal_summary+: converted,
    }
  ),
  with_status(value):: (
    local converted = value;
    assert std.isString(converted) : '"status" expected to be of type "string"';
    {
      status: converted,
    }
  ),
  with_subject_alternative_names(value):: (
    local converted = if std.isArray(value) then value else [value];
    assert (std.isArray(converted) && std.length(std.set(converted)) == std.length(converted)) : '"subject_alternative_names" expected to be of type "set"';
    {
      subject_alternative_names: converted,
    }
  ),
  with_subject_alternative_names_mixin(value):: (
    local converted = if std.isArray(value) then value else [value];
    assert (std.isArray(converted) && std.length(std.set(converted)) == std.length(converted)) : '"subject_alternative_names" expected to be of type "set"';
    {
      subject_alternative_names+: converted,
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
  with_type(value):: (
    local converted = value;
    assert std.isString(converted) : '"type" expected to be of type "string"';
    {
      type: converted,
    }
  ),
  with_validation_emails(value):: (
    local converted = if std.isArray(value) then value else [value];
    assert std.isArray(converted) : '"validation_emails" expected to be of type "list"';
    {
      validation_emails: converted,
    }
  ),
  with_validation_emails_mixin(value):: (
    local converted = if std.isArray(value) then value else [value];
    assert std.isArray(converted) : '"validation_emails" expected to be of type "list"';
    {
      validation_emails+: converted,
    }
  ),
  with_validation_method(value):: (
    local converted = value;
    assert std.isString(converted) : '"validation_method" expected to be of type "string"';
    {
      validation_method: converted,
    }
  ),
  options:: {
    local block = self,
    new():: (
      {}
    ),
    with_certificate_transparency_logging_preference(value):: (
      local converted = value;
      assert std.isString(converted) : '"certificate_transparency_logging_preference" expected to be of type "string"';
      {
        certificate_transparency_logging_preference: converted,
      }
    ),
  },
  validation_option:: {
    local block = self,
    new(domain_name, validation_domain):: (
      {}
      + block.with_domain_name(domain_name)
      + block.with_validation_domain(validation_domain)
    ),
    with_domain_name(value):: (
      local converted = value;
      assert std.isString(converted) : '"domain_name" expected to be of type "string"';
      {
        domain_name: converted,
      }
    ),
    with_validation_domain(value):: (
      local converted = value;
      assert std.isString(converted) : '"validation_domain" expected to be of type "string"';
      {
        validation_domain: converted,
      }
    ),
  },
  with_options(value):: (
    local converted = if std.isArray(value) then value else [value];
    {
      options: value,
    }
  ),
  with_validation_option(value):: (
    local converted = if std.isArray(value) then value else [value];
    {
      validation_option: value,
    }
  ),
  with_options_mixin(value):: (
    local converted = if std.isArray(value) then value else [value];
    {
      options+: converted,
    }
  ),
  with_validation_option_mixin(value):: (
    local converted = if std.isArray(value) then value else [value];
    {
      validation_option+: converted,
    }
  ),
}
