{
  local block = self,
  new(app, app_bundle_arn, auth_type):: (
    {}
    + block.with_app(app)
    + block.with_app_bundle_arn(app_bundle_arn)
    + block.with_auth_type(auth_type)
  ),
  with_app(value):: (
    local converted = value;
    assert std.isString(converted) : '"app" expected to be of type "string"';
    {
      app: converted,
    }
  ),
  with_app_bundle_arn(value):: (
    local converted = value;
    assert std.isString(converted) : '"app_bundle_arn" expected to be of type "string"';
    {
      app_bundle_arn: converted,
    }
  ),
  with_arn(value):: (
    local converted = value;
    assert std.isString(converted) : '"arn" expected to be of type "string"';
    {
      arn: converted,
    }
  ),
  with_auth_type(value):: (
    local converted = value;
    assert std.isString(converted) : '"auth_type" expected to be of type "string"';
    {
      auth_type: converted,
    }
  ),
  with_auth_url(value):: (
    local converted = value;
    assert std.isString(converted) : '"auth_url" expected to be of type "string"';
    {
      auth_url: converted,
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
  with_persona(value):: (
    local converted = value;
    assert std.isString(converted) : '"persona" expected to be of type "string"';
    {
      persona: converted,
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
  with_updated_at(value):: (
    local converted = value;
    assert std.isString(converted) : '"updated_at" expected to be of type "string"';
    {
      updated_at: converted,
    }
  ),
  credential:: {
    local block = self,
    new():: (
      {}
    ),
    api_key_credential:: {
      local block = self,
      new(api_key):: (
        {}
        + block.with_api_key(api_key)
      ),
      with_api_key(value):: (
        local converted = value;
        assert std.isString(converted) : '"api_key" expected to be of type "string"';
        {
          api_key: converted,
        }
      ),
    },
    oauth2_credential:: {
      local block = self,
      new(client_id, client_secret):: (
        {}
        + block.with_client_id(client_id)
        + block.with_client_secret(client_secret)
      ),
      with_client_id(value):: (
        local converted = value;
        assert std.isString(converted) : '"client_id" expected to be of type "string"';
        {
          client_id: converted,
        }
      ),
      with_client_secret(value):: (
        local converted = value;
        assert std.isString(converted) : '"client_secret" expected to be of type "string"';
        {
          client_secret: converted,
        }
      ),
    },
    with_api_key_credential(value):: (
      local converted = if std.isArray(value) then value else [value];
      {
        api_key_credential: value,
      }
    ),
    with_oauth2_credential(value):: (
      local converted = if std.isArray(value) then value else [value];
      {
        oauth2_credential: value,
      }
    ),
    with_api_key_credential_mixin(value):: (
      local converted = if std.isArray(value) then value else [value];
      {
        api_key_credential+: converted,
      }
    ),
    with_oauth2_credential_mixin(value):: (
      local converted = if std.isArray(value) then value else [value];
      {
        oauth2_credential+: converted,
      }
    ),
  },
  tenant:: {
    local block = self,
    new(tenant_display_name, tenant_identifier):: (
      {}
      + block.with_tenant_display_name(tenant_display_name)
      + block.with_tenant_identifier(tenant_identifier)
    ),
    with_tenant_display_name(value):: (
      local converted = value;
      assert std.isString(converted) : '"tenant_display_name" expected to be of type "string"';
      {
        tenant_display_name: converted,
      }
    ),
    with_tenant_identifier(value):: (
      local converted = value;
      assert std.isString(converted) : '"tenant_identifier" expected to be of type "string"';
      {
        tenant_identifier: converted,
      }
    ),
  },
  timeouts:: {
    local block = self,
    new():: (
      {}
    ),
    '#with_create':: "A string that can be [parsed as a duration](https://pkg.go.dev/time#ParseDuration) consisting of numbers and unit suffixes, such as '30s' or '2h45m'. Valid time units are 's' (seconds), 'm' (minutes), 'h' (hours).",
    with_create(value):: (
      local converted = value;
      assert std.isString(converted) : '"create" expected to be of type "string"';
      {
        create: converted,
      }
    ),
    '#with_delete':: "A string that can be [parsed as a duration](https://pkg.go.dev/time#ParseDuration) consisting of numbers and unit suffixes, such as '30s' or '2h45m'. Valid time units are 's' (seconds), 'm' (minutes), 'h' (hours). Setting a timeout for a Delete operation is only applicable if changes are saved into state before the destroy operation occurs.",
    with_delete(value):: (
      local converted = value;
      assert std.isString(converted) : '"delete" expected to be of type "string"';
      {
        delete: converted,
      }
    ),
    '#with_update':: "A string that can be [parsed as a duration](https://pkg.go.dev/time#ParseDuration) consisting of numbers and unit suffixes, such as '30s' or '2h45m'. Valid time units are 's' (seconds), 'm' (minutes), 'h' (hours).",
    with_update(value):: (
      local converted = value;
      assert std.isString(converted) : '"update" expected to be of type "string"';
      {
        update: converted,
      }
    ),
  },
  with_credential(value):: (
    local converted = if std.isArray(value) then value else [value];
    {
      credential: value,
    }
  ),
  with_tenant(value):: (
    local converted = if std.isArray(value) then value else [value];
    {
      tenant: value,
    }
  ),
  with_timeouts(value):: (
    local converted = value;
    {
      timeouts: value,
    }
  ),
  with_credential_mixin(value):: (
    local converted = if std.isArray(value) then value else [value];
    {
      credential+: converted,
    }
  ),
  with_tenant_mixin(value):: (
    local converted = if std.isArray(value) then value else [value];
    {
      tenant+: converted,
    }
  ),
}
