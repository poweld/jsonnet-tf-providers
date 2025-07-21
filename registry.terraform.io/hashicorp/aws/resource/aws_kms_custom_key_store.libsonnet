{
  local block = self,
  new(custom_key_store_name):: (
    {}
    + block.with_custom_key_store_name(custom_key_store_name)
  ),
  with_cloud_hsm_cluster_id(value):: (
    local converted = value;
    assert std.isString(converted) : '"cloud_hsm_cluster_id" expected to be of type "string"';
    {
      cloud_hsm_cluster_id: converted,
    }
  ),
  with_custom_key_store_name(value):: (
    local converted = value;
    assert std.isString(converted) : '"custom_key_store_name" expected to be of type "string"';
    {
      custom_key_store_name: converted,
    }
  ),
  with_custom_key_store_type(value):: (
    local converted = value;
    assert std.isString(converted) : '"custom_key_store_type" expected to be of type "string"';
    {
      custom_key_store_type: converted,
    }
  ),
  with_id(value):: (
    local converted = value;
    assert std.isString(converted) : '"id" expected to be of type "string"';
    {
      id: converted,
    }
  ),
  with_key_store_password(value):: (
    local converted = value;
    assert std.isString(converted) : '"key_store_password" expected to be of type "string"';
    {
      key_store_password: converted,
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
  with_trust_anchor_certificate(value):: (
    local converted = value;
    assert std.isString(converted) : '"trust_anchor_certificate" expected to be of type "string"';
    {
      trust_anchor_certificate: converted,
    }
  ),
  with_xks_proxy_connectivity(value):: (
    local converted = value;
    assert std.isString(converted) : '"xks_proxy_connectivity" expected to be of type "string"';
    {
      xks_proxy_connectivity: converted,
    }
  ),
  with_xks_proxy_uri_endpoint(value):: (
    local converted = value;
    assert std.isString(converted) : '"xks_proxy_uri_endpoint" expected to be of type "string"';
    {
      xks_proxy_uri_endpoint: converted,
    }
  ),
  with_xks_proxy_uri_path(value):: (
    local converted = value;
    assert std.isString(converted) : '"xks_proxy_uri_path" expected to be of type "string"';
    {
      xks_proxy_uri_path: converted,
    }
  ),
  with_xks_proxy_vpc_endpoint_service_name(value):: (
    local converted = value;
    assert std.isString(converted) : '"xks_proxy_vpc_endpoint_service_name" expected to be of type "string"';
    {
      xks_proxy_vpc_endpoint_service_name: converted,
    }
  ),
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
  xks_proxy_authentication_credential:: {
    local block = self,
    new(access_key_id, raw_secret_access_key):: (
      {}
      + block.with_access_key_id(access_key_id)
      + block.with_raw_secret_access_key(raw_secret_access_key)
    ),
    with_access_key_id(value):: (
      local converted = value;
      assert std.isString(converted) : '"access_key_id" expected to be of type "string"';
      {
        access_key_id: converted,
      }
    ),
    with_raw_secret_access_key(value):: (
      local converted = value;
      assert std.isString(converted) : '"raw_secret_access_key" expected to be of type "string"';
      {
        raw_secret_access_key: converted,
      }
    ),
  },
  with_timeouts(value):: (
    local converted = value;
    {
      timeouts: value,
    }
  ),
  with_xks_proxy_authentication_credential(value):: (
    local converted = if std.isArray(value) then value else [value];
    {
      xks_proxy_authentication_credential: value,
    }
  ),
  with_xks_proxy_authentication_credential_mixin(value):: (
    local converted = if std.isArray(value) then value else [value];
    {
      xks_proxy_authentication_credential+: converted,
    }
  ),
}
