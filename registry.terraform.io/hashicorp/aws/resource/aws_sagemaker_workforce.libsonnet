{
  local block = self,
  new(workforce_name):: (
    {}
    + block.with_workforce_name(workforce_name)
  ),
  with_arn(value):: (
    local converted = value;
    assert std.isString(converted) : '"arn" expected to be of type "string"';
    {
      arn: converted,
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
  with_subdomain(value):: (
    local converted = value;
    assert std.isString(converted) : '"subdomain" expected to be of type "string"';
    {
      subdomain: converted,
    }
  ),
  with_workforce_name(value):: (
    local converted = value;
    assert std.isString(converted) : '"workforce_name" expected to be of type "string"';
    {
      workforce_name: converted,
    }
  ),
  cognito_config:: {
    local block = self,
    new(client_id, user_pool):: (
      {}
      + block.with_client_id(client_id)
      + block.with_user_pool(user_pool)
    ),
    with_client_id(value):: (
      local converted = value;
      assert std.isString(converted) : '"client_id" expected to be of type "string"';
      {
        client_id: converted,
      }
    ),
    with_user_pool(value):: (
      local converted = value;
      assert std.isString(converted) : '"user_pool" expected to be of type "string"';
      {
        user_pool: converted,
      }
    ),
  },
  oidc_config:: {
    local block = self,
    new(authorization_endpoint, client_id, client_secret, issuer, jwks_uri, logout_endpoint, token_endpoint, user_info_endpoint):: (
      {}
      + block.with_authorization_endpoint(authorization_endpoint)
      + block.with_client_id(client_id)
      + block.with_client_secret(client_secret)
      + block.with_issuer(issuer)
      + block.with_jwks_uri(jwks_uri)
      + block.with_logout_endpoint(logout_endpoint)
      + block.with_token_endpoint(token_endpoint)
      + block.with_user_info_endpoint(user_info_endpoint)
    ),
    with_authentication_request_extra_params(value):: (
      local converted = value;
      assert std.isObject(converted) : '"authentication_request_extra_params" expected to be of type "map"';
      {
        authentication_request_extra_params: converted,
      }
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
    with_jwks_uri(value):: (
      local converted = value;
      assert std.isString(converted) : '"jwks_uri" expected to be of type "string"';
      {
        jwks_uri: converted,
      }
    ),
    with_logout_endpoint(value):: (
      local converted = value;
      assert std.isString(converted) : '"logout_endpoint" expected to be of type "string"';
      {
        logout_endpoint: converted,
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
  source_ip_config:: {
    local block = self,
    new(cidrs):: (
      {}
      + block.with_cidrs(cidrs)
    ),
    with_cidrs(value):: (
      local converted = if std.isArray(value) then value else [value];
      assert (std.isArray(converted) && std.length(std.set(converted)) == std.length(converted)) : '"cidrs" expected to be of type "set"';
      {
        cidrs: converted,
      }
    ),
    with_cidrs_mixin(value):: (
      local converted = if std.isArray(value) then value else [value];
      assert (std.isArray(converted) && std.length(std.set(converted)) == std.length(converted)) : '"cidrs" expected to be of type "set"';
      {
        cidrs+: converted,
      }
    ),
  },
  workforce_vpc_config:: {
    local block = self,
    new():: (
      {}
    ),
    with_security_group_ids(value):: (
      local converted = if std.isArray(value) then value else [value];
      assert (std.isArray(converted) && std.length(std.set(converted)) == std.length(converted)) : '"security_group_ids" expected to be of type "set"';
      {
        security_group_ids: converted,
      }
    ),
    with_security_group_ids_mixin(value):: (
      local converted = if std.isArray(value) then value else [value];
      assert (std.isArray(converted) && std.length(std.set(converted)) == std.length(converted)) : '"security_group_ids" expected to be of type "set"';
      {
        security_group_ids+: converted,
      }
    ),
    with_subnets(value):: (
      local converted = if std.isArray(value) then value else [value];
      assert (std.isArray(converted) && std.length(std.set(converted)) == std.length(converted)) : '"subnets" expected to be of type "set"';
      {
        subnets: converted,
      }
    ),
    with_subnets_mixin(value):: (
      local converted = if std.isArray(value) then value else [value];
      assert (std.isArray(converted) && std.length(std.set(converted)) == std.length(converted)) : '"subnets" expected to be of type "set"';
      {
        subnets+: converted,
      }
    ),
    with_vpc_endpoint_id(value):: (
      local converted = value;
      assert std.isString(converted) : '"vpc_endpoint_id" expected to be of type "string"';
      {
        vpc_endpoint_id: converted,
      }
    ),
    with_vpc_id(value):: (
      local converted = value;
      assert std.isString(converted) : '"vpc_id" expected to be of type "string"';
      {
        vpc_id: converted,
      }
    ),
  },
  with_cognito_config(value):: (
    local converted = if std.isArray(value) then value else [value];
    {
      cognito_config: value,
    }
  ),
  with_oidc_config(value):: (
    local converted = if std.isArray(value) then value else [value];
    {
      oidc_config: value,
    }
  ),
  with_source_ip_config(value):: (
    local converted = if std.isArray(value) then value else [value];
    {
      source_ip_config: value,
    }
  ),
  with_workforce_vpc_config(value):: (
    local converted = if std.isArray(value) then value else [value];
    {
      workforce_vpc_config: value,
    }
  ),
  with_cognito_config_mixin(value):: (
    local converted = if std.isArray(value) then value else [value];
    {
      cognito_config+: converted,
    }
  ),
  with_oidc_config_mixin(value):: (
    local converted = if std.isArray(value) then value else [value];
    {
      oidc_config+: converted,
    }
  ),
  with_source_ip_config_mixin(value):: (
    local converted = if std.isArray(value) then value else [value];
    {
      source_ip_config+: converted,
    }
  ),
  with_workforce_vpc_config_mixin(value):: (
    local converted = if std.isArray(value) then value else [value];
    {
      workforce_vpc_config+: converted,
    }
  ),
}
