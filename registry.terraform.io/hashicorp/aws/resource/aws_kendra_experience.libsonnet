{
  local block = self,
  new(index_id, name, role_arn):: (
    {}
    + block.with_index_id(index_id)
    + block.with_name(name)
    + block.with_role_arn(role_arn)
  ),
  with_arn(value):: (
    local converted = value;
    assert std.isString(converted) : '"arn" expected to be of type "string"';
    {
      arn: converted,
    }
  ),
  with_description(value):: (
    local converted = value;
    assert std.isString(converted) : '"description" expected to be of type "string"';
    {
      description: converted,
    }
  ),
  with_endpoints(value):: (
    local converted = if std.isArray(value) then value else [value];
    assert (std.isArray(converted) && std.length(std.set(converted)) == std.length(converted)) : '"endpoints" expected to be of type "set"';
    {
      endpoints: converted,
    }
  ),
  with_endpoints_mixin(value):: (
    local converted = if std.isArray(value) then value else [value];
    assert (std.isArray(converted) && std.length(std.set(converted)) == std.length(converted)) : '"endpoints" expected to be of type "set"';
    {
      endpoints+: converted,
    }
  ),
  with_experience_id(value):: (
    local converted = value;
    assert std.isString(converted) : '"experience_id" expected to be of type "string"';
    {
      experience_id: converted,
    }
  ),
  with_id(value):: (
    local converted = value;
    assert std.isString(converted) : '"id" expected to be of type "string"';
    {
      id: converted,
    }
  ),
  with_index_id(value):: (
    local converted = value;
    assert std.isString(converted) : '"index_id" expected to be of type "string"';
    {
      index_id: converted,
    }
  ),
  with_name(value):: (
    local converted = value;
    assert std.isString(converted) : '"name" expected to be of type "string"';
    {
      name: converted,
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
  with_role_arn(value):: (
    local converted = value;
    assert std.isString(converted) : '"role_arn" expected to be of type "string"';
    {
      role_arn: converted,
    }
  ),
  with_status(value):: (
    local converted = value;
    assert std.isString(converted) : '"status" expected to be of type "string"';
    {
      status: converted,
    }
  ),
  configuration:: {
    local block = self,
    new():: (
      {}
    ),
    content_source_configuration:: {
      local block = self,
      new():: (
        {}
      ),
      with_data_source_ids(value):: (
        local converted = if std.isArray(value) then value else [value];
        assert (std.isArray(converted) && std.length(std.set(converted)) == std.length(converted)) : '"data_source_ids" expected to be of type "set"';
        {
          data_source_ids: converted,
        }
      ),
      with_data_source_ids_mixin(value):: (
        local converted = if std.isArray(value) then value else [value];
        assert (std.isArray(converted) && std.length(std.set(converted)) == std.length(converted)) : '"data_source_ids" expected to be of type "set"';
        {
          data_source_ids+: converted,
        }
      ),
      with_direct_put_content(value):: (
        local converted = value;
        assert std.isBoolean(converted) : '"direct_put_content" expected to be of type "bool"';
        {
          direct_put_content: converted,
        }
      ),
      with_faq_ids(value):: (
        local converted = if std.isArray(value) then value else [value];
        assert (std.isArray(converted) && std.length(std.set(converted)) == std.length(converted)) : '"faq_ids" expected to be of type "set"';
        {
          faq_ids: converted,
        }
      ),
      with_faq_ids_mixin(value):: (
        local converted = if std.isArray(value) then value else [value];
        assert (std.isArray(converted) && std.length(std.set(converted)) == std.length(converted)) : '"faq_ids" expected to be of type "set"';
        {
          faq_ids+: converted,
        }
      ),
    },
    user_identity_configuration:: {
      local block = self,
      new(identity_attribute_name):: (
        {}
        + block.with_identity_attribute_name(identity_attribute_name)
      ),
      with_identity_attribute_name(value):: (
        local converted = value;
        assert std.isString(converted) : '"identity_attribute_name" expected to be of type "string"';
        {
          identity_attribute_name: converted,
        }
      ),
    },
    with_content_source_configuration(value):: (
      local converted = if std.isArray(value) then value else [value];
      {
        content_source_configuration: value,
      }
    ),
    with_user_identity_configuration(value):: (
      local converted = if std.isArray(value) then value else [value];
      {
        user_identity_configuration: value,
      }
    ),
    with_content_source_configuration_mixin(value):: (
      local converted = if std.isArray(value) then value else [value];
      {
        content_source_configuration+: converted,
      }
    ),
    with_user_identity_configuration_mixin(value):: (
      local converted = if std.isArray(value) then value else [value];
      {
        user_identity_configuration+: converted,
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
  with_configuration(value):: (
    local converted = if std.isArray(value) then value else [value];
    {
      configuration: value,
    }
  ),
  with_timeouts(value):: (
    local converted = value;
    {
      timeouts: value,
    }
  ),
  with_configuration_mixin(value):: (
    local converted = if std.isArray(value) then value else [value];
    {
      configuration+: converted,
    }
  ),
}
