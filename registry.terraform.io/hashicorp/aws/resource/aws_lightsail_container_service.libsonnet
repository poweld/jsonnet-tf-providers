{
  local block = self,
  new(name, power, scale):: (
    {}
    + block.with_name(name)
    + block.with_power(power)
    + block.with_scale(scale)
  ),
  with_arn(value):: (
    local converted = value;
    assert std.isString(converted) : '"arn" expected to be of type "string"';
    {
      arn: converted,
    }
  ),
  with_availability_zone(value):: (
    local converted = value;
    assert std.isString(converted) : '"availability_zone" expected to be of type "string"';
    {
      availability_zone: converted,
    }
  ),
  with_created_at(value):: (
    local converted = value;
    assert std.isString(converted) : '"created_at" expected to be of type "string"';
    {
      created_at: converted,
    }
  ),
  with_id(value):: (
    local converted = value;
    assert std.isString(converted) : '"id" expected to be of type "string"';
    {
      id: converted,
    }
  ),
  with_is_disabled(value):: (
    local converted = value;
    assert std.isBoolean(converted) : '"is_disabled" expected to be of type "bool"';
    {
      is_disabled: converted,
    }
  ),
  with_name(value):: (
    local converted = value;
    assert std.isString(converted) : '"name" expected to be of type "string"';
    {
      name: converted,
    }
  ),
  with_power(value):: (
    local converted = value;
    assert std.isString(converted) : '"power" expected to be of type "string"';
    {
      power: converted,
    }
  ),
  with_power_id(value):: (
    local converted = value;
    assert std.isString(converted) : '"power_id" expected to be of type "string"';
    {
      power_id: converted,
    }
  ),
  with_principal_arn(value):: (
    local converted = value;
    assert std.isString(converted) : '"principal_arn" expected to be of type "string"';
    {
      principal_arn: converted,
    }
  ),
  with_private_domain_name(value):: (
    local converted = value;
    assert std.isString(converted) : '"private_domain_name" expected to be of type "string"';
    {
      private_domain_name: converted,
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
  with_resource_type(value):: (
    local converted = value;
    assert std.isString(converted) : '"resource_type" expected to be of type "string"';
    {
      resource_type: converted,
    }
  ),
  with_scale(value):: (
    local converted = value;
    assert std.isNumber(converted) : '"scale" expected to be of type "number"';
    {
      scale: converted,
    }
  ),
  with_state(value):: (
    local converted = value;
    assert std.isString(converted) : '"state" expected to be of type "string"';
    {
      state: converted,
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
  with_url(value):: (
    local converted = value;
    assert std.isString(converted) : '"url" expected to be of type "string"';
    {
      url: converted,
    }
  ),
  private_registry_access:: {
    local block = self,
    new():: (
      {}
    ),
    ecr_image_puller_role:: {
      local block = self,
      new():: (
        {}
      ),
      with_is_active(value):: (
        local converted = value;
        assert std.isBoolean(converted) : '"is_active" expected to be of type "bool"';
        {
          is_active: converted,
        }
      ),
      with_principal_arn(value):: (
        local converted = value;
        assert std.isString(converted) : '"principal_arn" expected to be of type "string"';
        {
          principal_arn: converted,
        }
      ),
    },
    with_ecr_image_puller_role(value):: (
      local converted = if std.isArray(value) then value else [value];
      {
        ecr_image_puller_role: value,
      }
    ),
    with_ecr_image_puller_role_mixin(value):: (
      local converted = if std.isArray(value) then value else [value];
      {
        ecr_image_puller_role+: converted,
      }
    ),
  },
  public_domain_names:: {
    local block = self,
    new():: (
      {}
    ),
    certificate:: {
      local block = self,
      new(certificate_name, domain_names):: (
        {}
        + block.with_certificate_name(certificate_name)
        + block.with_domain_names(domain_names)
      ),
      with_certificate_name(value):: (
        local converted = value;
        assert std.isString(converted) : '"certificate_name" expected to be of type "string"';
        {
          certificate_name: converted,
        }
      ),
      with_domain_names(value):: (
        local converted = if std.isArray(value) then value else [value];
        assert std.isArray(converted) : '"domain_names" expected to be of type "list"';
        {
          domain_names: converted,
        }
      ),
      with_domain_names_mixin(value):: (
        local converted = if std.isArray(value) then value else [value];
        assert std.isArray(converted) : '"domain_names" expected to be of type "list"';
        {
          domain_names+: converted,
        }
      ),
    },
    with_certificate(value):: (
      local converted = if std.isArray(value) then value else [value];
      {
        certificate: value,
      }
    ),
    with_certificate_mixin(value):: (
      local converted = if std.isArray(value) then value else [value];
      {
        certificate+: converted,
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
    with_delete(value):: (
      local converted = value;
      assert std.isString(converted) : '"delete" expected to be of type "string"';
      {
        delete: converted,
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
  with_private_registry_access(value):: (
    local converted = if std.isArray(value) then value else [value];
    {
      private_registry_access: value,
    }
  ),
  with_public_domain_names(value):: (
    local converted = if std.isArray(value) then value else [value];
    {
      public_domain_names: value,
    }
  ),
  with_timeouts(value):: (
    local converted = value;
    {
      timeouts: value,
    }
  ),
  with_private_registry_access_mixin(value):: (
    local converted = if std.isArray(value) then value else [value];
    {
      private_registry_access+: converted,
    }
  ),
  with_public_domain_names_mixin(value):: (
    local converted = if std.isArray(value) then value else [value];
    {
      public_domain_names+: converted,
    }
  ),
}
