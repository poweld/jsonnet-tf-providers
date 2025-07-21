{
  local block = self,
  new(domain_name):: (
    {}
    + block.with_domain_name(domain_name)
  ),
  with_domain_name(value):: (
    local converted = value;
    assert std.isString(converted) : '"domain_name" expected to be of type "string"';
    {
      domain_name: converted,
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
  saml_options:: {
    local block = self,
    new():: (
      {}
    ),
    with_enabled(value):: (
      local converted = value;
      assert std.isBoolean(converted) : '"enabled" expected to be of type "bool"';
      {
        enabled: converted,
      }
    ),
    with_master_backend_role(value):: (
      local converted = value;
      assert std.isString(converted) : '"master_backend_role" expected to be of type "string"';
      {
        master_backend_role: converted,
      }
    ),
    with_master_user_name(value):: (
      local converted = value;
      assert std.isString(converted) : '"master_user_name" expected to be of type "string"';
      {
        master_user_name: converted,
      }
    ),
    with_roles_key(value):: (
      local converted = value;
      assert std.isString(converted) : '"roles_key" expected to be of type "string"';
      {
        roles_key: converted,
      }
    ),
    with_session_timeout_minutes(value):: (
      local converted = value;
      assert std.isNumber(converted) : '"session_timeout_minutes" expected to be of type "number"';
      {
        session_timeout_minutes: converted,
      }
    ),
    with_subject_key(value):: (
      local converted = value;
      assert std.isString(converted) : '"subject_key" expected to be of type "string"';
      {
        subject_key: converted,
      }
    ),
    idp:: {
      local block = self,
      new(entity_id, metadata_content):: (
        {}
        + block.with_entity_id(entity_id)
        + block.with_metadata_content(metadata_content)
      ),
      with_entity_id(value):: (
        local converted = value;
        assert std.isString(converted) : '"entity_id" expected to be of type "string"';
        {
          entity_id: converted,
        }
      ),
      with_metadata_content(value):: (
        local converted = value;
        assert std.isString(converted) : '"metadata_content" expected to be of type "string"';
        {
          metadata_content: converted,
        }
      ),
    },
    with_idp(value):: (
      local converted = if std.isArray(value) then value else [value];
      {
        idp: value,
      }
    ),
    with_idp_mixin(value):: (
      local converted = if std.isArray(value) then value else [value];
      {
        idp+: converted,
      }
    ),
  },
  timeouts:: {
    local block = self,
    new():: (
      {}
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
  with_saml_options(value):: (
    local converted = if std.isArray(value) then value else [value];
    {
      saml_options: value,
    }
  ),
  with_timeouts(value):: (
    local converted = value;
    {
      timeouts: value,
    }
  ),
  with_saml_options_mixin(value):: (
    local converted = if std.isArray(value) then value else [value];
    {
      saml_options+: converted,
    }
  ),
}
