{
  local block = self,
  new(policy_reference_name, trust_provider_type):: (
    {}
    + block.with_policy_reference_name(policy_reference_name)
    + block.with_trust_provider_type(trust_provider_type)
  ),
  with_description(value):: (
    local converted = value;
    assert std.isString(converted) : '"description" expected to be of type "string"';
    {
      description: converted,
    }
  ),
  with_device_trust_provider_type(value):: (
    local converted = value;
    assert std.isString(converted) : '"device_trust_provider_type" expected to be of type "string"';
    {
      device_trust_provider_type: converted,
    }
  ),
  with_id(value):: (
    local converted = value;
    assert std.isString(converted) : '"id" expected to be of type "string"';
    {
      id: converted,
    }
  ),
  with_policy_reference_name(value):: (
    local converted = value;
    assert std.isString(converted) : '"policy_reference_name" expected to be of type "string"';
    {
      policy_reference_name: converted,
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
  with_trust_provider_type(value):: (
    local converted = value;
    assert std.isString(converted) : '"trust_provider_type" expected to be of type "string"';
    {
      trust_provider_type: converted,
    }
  ),
  with_user_trust_provider_type(value):: (
    local converted = value;
    assert std.isString(converted) : '"user_trust_provider_type" expected to be of type "string"';
    {
      user_trust_provider_type: converted,
    }
  ),
  device_options:: {
    local block = self,
    new():: (
      {}
    ),
    with_tenant_id(value):: (
      local converted = value;
      assert std.isString(converted) : '"tenant_id" expected to be of type "string"';
      {
        tenant_id: converted,
      }
    ),
  },
  native_application_oidc_options:: {
    local block = self,
    new(client_secret):: (
      {}
      + block.with_client_secret(client_secret)
    ),
    with_authorization_endpoint(value):: (
      local converted = value;
      assert std.isString(converted) : '"authorization_endpoint" expected to be of type "string"';
      {
        authorization_endpoint: converted,
      }
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
    with_issuer(value):: (
      local converted = value;
      assert std.isString(converted) : '"issuer" expected to be of type "string"';
      {
        issuer: converted,
      }
    ),
    with_public_signing_key_endpoint(value):: (
      local converted = value;
      assert std.isString(converted) : '"public_signing_key_endpoint" expected to be of type "string"';
      {
        public_signing_key_endpoint: converted,
      }
    ),
    with_scope(value):: (
      local converted = value;
      assert std.isString(converted) : '"scope" expected to be of type "string"';
      {
        scope: converted,
      }
    ),
    with_token_endpoint(value):: (
      local converted = value;
      assert std.isString(converted) : '"token_endpoint" expected to be of type "string"';
      {
        token_endpoint: converted,
      }
    ),
    with_user_info_endpoint(value):: (
      local converted = value;
      assert std.isString(converted) : '"user_info_endpoint" expected to be of type "string"';
      {
        user_info_endpoint: converted,
      }
    ),
  },
  oidc_options:: {
    local block = self,
    new(client_secret):: (
      {}
      + block.with_client_secret(client_secret)
    ),
    with_authorization_endpoint(value):: (
      local converted = value;
      assert std.isString(converted) : '"authorization_endpoint" expected to be of type "string"';
      {
        authorization_endpoint: converted,
      }
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
    with_issuer(value):: (
      local converted = value;
      assert std.isString(converted) : '"issuer" expected to be of type "string"';
      {
        issuer: converted,
      }
    ),
    with_scope(value):: (
      local converted = value;
      assert std.isString(converted) : '"scope" expected to be of type "string"';
      {
        scope: converted,
      }
    ),
    with_token_endpoint(value):: (
      local converted = value;
      assert std.isString(converted) : '"token_endpoint" expected to be of type "string"';
      {
        token_endpoint: converted,
      }
    ),
    with_user_info_endpoint(value):: (
      local converted = value;
      assert std.isString(converted) : '"user_info_endpoint" expected to be of type "string"';
      {
        user_info_endpoint: converted,
      }
    ),
  },
  sse_specification:: {
    local block = self,
    new():: (
      {}
    ),
    with_customer_managed_key_enabled(value):: (
      local converted = value;
      assert std.isBoolean(converted) : '"customer_managed_key_enabled" expected to be of type "bool"';
      {
        customer_managed_key_enabled: converted,
      }
    ),
    with_kms_key_arn(value):: (
      local converted = value;
      assert std.isString(converted) : '"kms_key_arn" expected to be of type "string"';
      {
        kms_key_arn: converted,
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
  with_device_options(value):: (
    local converted = if std.isArray(value) then value else [value];
    {
      device_options: value,
    }
  ),
  with_native_application_oidc_options(value):: (
    local converted = if std.isArray(value) then value else [value];
    {
      native_application_oidc_options: value,
    }
  ),
  with_oidc_options(value):: (
    local converted = if std.isArray(value) then value else [value];
    {
      oidc_options: value,
    }
  ),
  with_sse_specification(value):: (
    local converted = if std.isArray(value) then value else [value];
    {
      sse_specification: value,
    }
  ),
  with_timeouts(value):: (
    local converted = value;
    {
      timeouts: value,
    }
  ),
  with_device_options_mixin(value):: (
    local converted = if std.isArray(value) then value else [value];
    {
      device_options+: converted,
    }
  ),
  with_native_application_oidc_options_mixin(value):: (
    local converted = if std.isArray(value) then value else [value];
    {
      native_application_oidc_options+: converted,
    }
  ),
  with_oidc_options_mixin(value):: (
    local converted = if std.isArray(value) then value else [value];
    {
      oidc_options+: converted,
    }
  ),
  with_sse_specification_mixin(value):: (
    local converted = if std.isArray(value) then value else [value];
    {
      sse_specification+: converted,
    }
  ),
}
