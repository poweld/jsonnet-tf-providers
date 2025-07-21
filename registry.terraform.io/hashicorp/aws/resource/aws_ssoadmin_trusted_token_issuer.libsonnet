{
  local block = self,
  new(instance_arn, name, trusted_token_issuer_type):: (
    {}
    + block.with_instance_arn(instance_arn)
    + block.with_name(name)
    + block.with_trusted_token_issuer_type(trusted_token_issuer_type)
  ),
  with_arn(value):: (
    local converted = value;
    assert std.isString(converted) : '"arn" expected to be of type "string"';
    {
      arn: converted,
    }
  ),
  with_client_token(value):: (
    local converted = value;
    assert std.isString(converted) : '"client_token" expected to be of type "string"';
    {
      client_token: converted,
    }
  ),
  with_id(value):: (
    local converted = value;
    assert std.isString(converted) : '"id" expected to be of type "string"';
    {
      id: converted,
    }
  ),
  with_instance_arn(value):: (
    local converted = value;
    assert std.isString(converted) : '"instance_arn" expected to be of type "string"';
    {
      instance_arn: converted,
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
  with_trusted_token_issuer_type(value):: (
    local converted = value;
    assert std.isString(converted) : '"trusted_token_issuer_type" expected to be of type "string"';
    {
      trusted_token_issuer_type: converted,
    }
  ),
  trusted_token_issuer_configuration:: {
    local block = self,
    new():: (
      {}
    ),
    oidc_jwt_configuration:: {
      local block = self,
      new(claim_attribute_path, identity_store_attribute_path, issuer_url, jwks_retrieval_option):: (
        {}
        + block.with_claim_attribute_path(claim_attribute_path)
        + block.with_identity_store_attribute_path(identity_store_attribute_path)
        + block.with_issuer_url(issuer_url)
        + block.with_jwks_retrieval_option(jwks_retrieval_option)
      ),
      with_claim_attribute_path(value):: (
        local converted = value;
        assert std.isString(converted) : '"claim_attribute_path" expected to be of type "string"';
        {
          claim_attribute_path: converted,
        }
      ),
      with_identity_store_attribute_path(value):: (
        local converted = value;
        assert std.isString(converted) : '"identity_store_attribute_path" expected to be of type "string"';
        {
          identity_store_attribute_path: converted,
        }
      ),
      with_issuer_url(value):: (
        local converted = value;
        assert std.isString(converted) : '"issuer_url" expected to be of type "string"';
        {
          issuer_url: converted,
        }
      ),
      with_jwks_retrieval_option(value):: (
        local converted = value;
        assert std.isString(converted) : '"jwks_retrieval_option" expected to be of type "string"';
        {
          jwks_retrieval_option: converted,
        }
      ),
    },
    with_oidc_jwt_configuration(value):: (
      local converted = if std.isArray(value) then value else [value];
      {
        oidc_jwt_configuration: value,
      }
    ),
    with_oidc_jwt_configuration_mixin(value):: (
      local converted = if std.isArray(value) then value else [value];
      {
        oidc_jwt_configuration+: converted,
      }
    ),
  },
  with_trusted_token_issuer_configuration(value):: (
    local converted = if std.isArray(value) then value else [value];
    {
      trusted_token_issuer_configuration: value,
    }
  ),
  with_trusted_token_issuer_configuration_mixin(value):: (
    local converted = if std.isArray(value) then value else [value];
    {
      trusted_token_issuer_configuration+: converted,
    }
  ),
}
