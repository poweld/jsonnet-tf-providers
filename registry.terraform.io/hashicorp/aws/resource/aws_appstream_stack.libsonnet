{
  local block = self,
  new(name):: (
    {}
    + block.with_name(name)
  ),
  with_arn(value):: (
    local converted = value;
    assert std.isString(converted) : '"arn" expected to be of type "string"';
    {
      arn: converted,
    }
  ),
  with_created_time(value):: (
    local converted = value;
    assert std.isString(converted) : '"created_time" expected to be of type "string"';
    {
      created_time: converted,
    }
  ),
  with_description(value):: (
    local converted = value;
    assert std.isString(converted) : '"description" expected to be of type "string"';
    {
      description: converted,
    }
  ),
  with_display_name(value):: (
    local converted = value;
    assert std.isString(converted) : '"display_name" expected to be of type "string"';
    {
      display_name: converted,
    }
  ),
  with_embed_host_domains(value):: (
    local converted = if std.isArray(value) then value else [value];
    assert (std.isArray(converted) && std.length(std.set(converted)) == std.length(converted)) : '"embed_host_domains" expected to be of type "set"';
    {
      embed_host_domains: converted,
    }
  ),
  with_embed_host_domains_mixin(value):: (
    local converted = if std.isArray(value) then value else [value];
    assert (std.isArray(converted) && std.length(std.set(converted)) == std.length(converted)) : '"embed_host_domains" expected to be of type "set"';
    {
      embed_host_domains+: converted,
    }
  ),
  with_feedback_url(value):: (
    local converted = value;
    assert std.isString(converted) : '"feedback_url" expected to be of type "string"';
    {
      feedback_url: converted,
    }
  ),
  with_id(value):: (
    local converted = value;
    assert std.isString(converted) : '"id" expected to be of type "string"';
    {
      id: converted,
    }
  ),
  with_name(value):: (
    local converted = value;
    assert std.isString(converted) : '"name" expected to be of type "string"';
    {
      name: converted,
    }
  ),
  with_redirect_url(value):: (
    local converted = value;
    assert std.isString(converted) : '"redirect_url" expected to be of type "string"';
    {
      redirect_url: converted,
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
  access_endpoints:: {
    local block = self,
    new(endpoint_type):: (
      {}
      + block.with_endpoint_type(endpoint_type)
    ),
    with_endpoint_type(value):: (
      local converted = value;
      assert std.isString(converted) : '"endpoint_type" expected to be of type "string"';
      {
        endpoint_type: converted,
      }
    ),
    with_vpce_id(value):: (
      local converted = value;
      assert std.isString(converted) : '"vpce_id" expected to be of type "string"';
      {
        vpce_id: converted,
      }
    ),
  },
  application_settings:: {
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
    with_settings_group(value):: (
      local converted = value;
      assert std.isString(converted) : '"settings_group" expected to be of type "string"';
      {
        settings_group: converted,
      }
    ),
  },
  storage_connectors:: {
    local block = self,
    new(connector_type):: (
      {}
      + block.with_connector_type(connector_type)
    ),
    with_connector_type(value):: (
      local converted = value;
      assert std.isString(converted) : '"connector_type" expected to be of type "string"';
      {
        connector_type: converted,
      }
    ),
    with_domains(value):: (
      local converted = if std.isArray(value) then value else [value];
      assert std.isArray(converted) : '"domains" expected to be of type "list"';
      {
        domains: converted,
      }
    ),
    with_domains_mixin(value):: (
      local converted = if std.isArray(value) then value else [value];
      assert std.isArray(converted) : '"domains" expected to be of type "list"';
      {
        domains+: converted,
      }
    ),
    with_resource_identifier(value):: (
      local converted = value;
      assert std.isString(converted) : '"resource_identifier" expected to be of type "string"';
      {
        resource_identifier: converted,
      }
    ),
  },
  streaming_experience_settings:: {
    local block = self,
    new():: (
      {}
    ),
    with_preferred_protocol(value):: (
      local converted = value;
      assert std.isString(converted) : '"preferred_protocol" expected to be of type "string"';
      {
        preferred_protocol: converted,
      }
    ),
  },
  user_settings:: {
    local block = self,
    new(action, permission):: (
      {}
      + block.with_action(action)
      + block.with_permission(permission)
    ),
    with_action(value):: (
      local converted = value;
      assert std.isString(converted) : '"action" expected to be of type "string"';
      {
        action: converted,
      }
    ),
    with_permission(value):: (
      local converted = value;
      assert std.isString(converted) : '"permission" expected to be of type "string"';
      {
        permission: converted,
      }
    ),
  },
  with_access_endpoints(value):: (
    local converted = if std.isArray(value) then value else [value];
    {
      access_endpoints: value,
    }
  ),
  with_application_settings(value):: (
    local converted = if std.isArray(value) then value else [value];
    {
      application_settings: value,
    }
  ),
  with_storage_connectors(value):: (
    local converted = if std.isArray(value) then value else [value];
    {
      storage_connectors: value,
    }
  ),
  with_streaming_experience_settings(value):: (
    local converted = if std.isArray(value) then value else [value];
    {
      streaming_experience_settings: value,
    }
  ),
  with_user_settings(value):: (
    local converted = if std.isArray(value) then value else [value];
    {
      user_settings: value,
    }
  ),
  with_access_endpoints_mixin(value):: (
    local converted = if std.isArray(value) then value else [value];
    {
      access_endpoints+: converted,
    }
  ),
  with_application_settings_mixin(value):: (
    local converted = if std.isArray(value) then value else [value];
    {
      application_settings+: converted,
    }
  ),
  with_storage_connectors_mixin(value):: (
    local converted = if std.isArray(value) then value else [value];
    {
      storage_connectors+: converted,
    }
  ),
  with_streaming_experience_settings_mixin(value):: (
    local converted = if std.isArray(value) then value else [value];
    {
      streaming_experience_settings+: converted,
    }
  ),
  with_user_settings_mixin(value):: (
    local converted = if std.isArray(value) then value else [value];
    {
      user_settings+: converted,
    }
  ),
}
