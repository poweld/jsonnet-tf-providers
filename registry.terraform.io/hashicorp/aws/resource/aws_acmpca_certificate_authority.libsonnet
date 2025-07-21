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
  with_certificate(value):: (
    local converted = value;
    assert std.isString(converted) : '"certificate" expected to be of type "string"';
    {
      certificate: converted,
    }
  ),
  with_certificate_chain(value):: (
    local converted = value;
    assert std.isString(converted) : '"certificate_chain" expected to be of type "string"';
    {
      certificate_chain: converted,
    }
  ),
  with_certificate_signing_request(value):: (
    local converted = value;
    assert std.isString(converted) : '"certificate_signing_request" expected to be of type "string"';
    {
      certificate_signing_request: converted,
    }
  ),
  with_enabled(value):: (
    local converted = value;
    assert std.isBoolean(converted) : '"enabled" expected to be of type "bool"';
    {
      enabled: converted,
    }
  ),
  with_id(value):: (
    local converted = value;
    assert std.isString(converted) : '"id" expected to be of type "string"';
    {
      id: converted,
    }
  ),
  with_key_storage_security_standard(value):: (
    local converted = value;
    assert std.isString(converted) : '"key_storage_security_standard" expected to be of type "string"';
    {
      key_storage_security_standard: converted,
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
  with_permanent_deletion_time_in_days(value):: (
    local converted = value;
    assert std.isNumber(converted) : '"permanent_deletion_time_in_days" expected to be of type "number"';
    {
      permanent_deletion_time_in_days: converted,
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
  with_serial(value):: (
    local converted = value;
    assert std.isString(converted) : '"serial" expected to be of type "string"';
    {
      serial: converted,
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
  with_usage_mode(value):: (
    local converted = value;
    assert std.isString(converted) : '"usage_mode" expected to be of type "string"';
    {
      usage_mode: converted,
    }
  ),
  certificate_authority_configuration:: {
    local block = self,
    new(key_algorithm, signing_algorithm):: (
      {}
      + block.with_key_algorithm(key_algorithm)
      + block.with_signing_algorithm(signing_algorithm)
    ),
    with_key_algorithm(value):: (
      local converted = value;
      assert std.isString(converted) : '"key_algorithm" expected to be of type "string"';
      {
        key_algorithm: converted,
      }
    ),
    with_signing_algorithm(value):: (
      local converted = value;
      assert std.isString(converted) : '"signing_algorithm" expected to be of type "string"';
      {
        signing_algorithm: converted,
      }
    ),
    subject:: {
      local block = self,
      new():: (
        {}
      ),
      with_common_name(value):: (
        local converted = value;
        assert std.isString(converted) : '"common_name" expected to be of type "string"';
        {
          common_name: converted,
        }
      ),
      with_country(value):: (
        local converted = value;
        assert std.isString(converted) : '"country" expected to be of type "string"';
        {
          country: converted,
        }
      ),
      with_distinguished_name_qualifier(value):: (
        local converted = value;
        assert std.isString(converted) : '"distinguished_name_qualifier" expected to be of type "string"';
        {
          distinguished_name_qualifier: converted,
        }
      ),
      with_generation_qualifier(value):: (
        local converted = value;
        assert std.isString(converted) : '"generation_qualifier" expected to be of type "string"';
        {
          generation_qualifier: converted,
        }
      ),
      with_given_name(value):: (
        local converted = value;
        assert std.isString(converted) : '"given_name" expected to be of type "string"';
        {
          given_name: converted,
        }
      ),
      with_initials(value):: (
        local converted = value;
        assert std.isString(converted) : '"initials" expected to be of type "string"';
        {
          initials: converted,
        }
      ),
      with_locality(value):: (
        local converted = value;
        assert std.isString(converted) : '"locality" expected to be of type "string"';
        {
          locality: converted,
        }
      ),
      with_organization(value):: (
        local converted = value;
        assert std.isString(converted) : '"organization" expected to be of type "string"';
        {
          organization: converted,
        }
      ),
      with_organizational_unit(value):: (
        local converted = value;
        assert std.isString(converted) : '"organizational_unit" expected to be of type "string"';
        {
          organizational_unit: converted,
        }
      ),
      with_pseudonym(value):: (
        local converted = value;
        assert std.isString(converted) : '"pseudonym" expected to be of type "string"';
        {
          pseudonym: converted,
        }
      ),
      with_state(value):: (
        local converted = value;
        assert std.isString(converted) : '"state" expected to be of type "string"';
        {
          state: converted,
        }
      ),
      with_surname(value):: (
        local converted = value;
        assert std.isString(converted) : '"surname" expected to be of type "string"';
        {
          surname: converted,
        }
      ),
      with_title(value):: (
        local converted = value;
        assert std.isString(converted) : '"title" expected to be of type "string"';
        {
          title: converted,
        }
      ),
    },
    with_subject(value):: (
      local converted = if std.isArray(value) then value else [value];
      {
        subject: value,
      }
    ),
    with_subject_mixin(value):: (
      local converted = if std.isArray(value) then value else [value];
      {
        subject+: converted,
      }
    ),
  },
  revocation_configuration:: {
    local block = self,
    new():: (
      {}
    ),
    crl_configuration:: {
      local block = self,
      new():: (
        {}
      ),
      with_custom_cname(value):: (
        local converted = value;
        assert std.isString(converted) : '"custom_cname" expected to be of type "string"';
        {
          custom_cname: converted,
        }
      ),
      with_enabled(value):: (
        local converted = value;
        assert std.isBoolean(converted) : '"enabled" expected to be of type "bool"';
        {
          enabled: converted,
        }
      ),
      with_expiration_in_days(value):: (
        local converted = value;
        assert std.isNumber(converted) : '"expiration_in_days" expected to be of type "number"';
        {
          expiration_in_days: converted,
        }
      ),
      with_s3_bucket_name(value):: (
        local converted = value;
        assert std.isString(converted) : '"s3_bucket_name" expected to be of type "string"';
        {
          s3_bucket_name: converted,
        }
      ),
      with_s3_object_acl(value):: (
        local converted = value;
        assert std.isString(converted) : '"s3_object_acl" expected to be of type "string"';
        {
          s3_object_acl: converted,
        }
      ),
    },
    ocsp_configuration:: {
      local block = self,
      new(enabled):: (
        {}
        + block.with_enabled(enabled)
      ),
      with_enabled(value):: (
        local converted = value;
        assert std.isBoolean(converted) : '"enabled" expected to be of type "bool"';
        {
          enabled: converted,
        }
      ),
      with_ocsp_custom_cname(value):: (
        local converted = value;
        assert std.isString(converted) : '"ocsp_custom_cname" expected to be of type "string"';
        {
          ocsp_custom_cname: converted,
        }
      ),
    },
    with_crl_configuration(value):: (
      local converted = if std.isArray(value) then value else [value];
      {
        crl_configuration: value,
      }
    ),
    with_ocsp_configuration(value):: (
      local converted = if std.isArray(value) then value else [value];
      {
        ocsp_configuration: value,
      }
    ),
    with_crl_configuration_mixin(value):: (
      local converted = if std.isArray(value) then value else [value];
      {
        crl_configuration+: converted,
      }
    ),
    with_ocsp_configuration_mixin(value):: (
      local converted = if std.isArray(value) then value else [value];
      {
        ocsp_configuration+: converted,
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
  },
  with_certificate_authority_configuration(value):: (
    local converted = if std.isArray(value) then value else [value];
    {
      certificate_authority_configuration: value,
    }
  ),
  with_revocation_configuration(value):: (
    local converted = if std.isArray(value) then value else [value];
    {
      revocation_configuration: value,
    }
  ),
  with_timeouts(value):: (
    local converted = value;
    {
      timeouts: value,
    }
  ),
  with_certificate_authority_configuration_mixin(value):: (
    local converted = if std.isArray(value) then value else [value];
    {
      certificate_authority_configuration+: converted,
    }
  ),
  with_revocation_configuration_mixin(value):: (
    local converted = if std.isArray(value) then value else [value];
    {
      revocation_configuration+: converted,
    }
  ),
}
