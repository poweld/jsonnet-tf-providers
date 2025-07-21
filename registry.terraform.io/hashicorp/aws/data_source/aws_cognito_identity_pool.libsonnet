{
  local block = self,
  new(identity_pool_name):: (
    {}
    + block.with_identity_pool_name(identity_pool_name)
  ),
  with_allow_classic_flow(value):: (
    local converted = value;
    assert std.isBoolean(converted) : '"allow_classic_flow" expected to be of type "bool"';
    {
      allow_classic_flow: converted,
    }
  ),
  with_allow_unauthenticated_identities(value):: (
    local converted = value;
    assert std.isBoolean(converted) : '"allow_unauthenticated_identities" expected to be of type "bool"';
    {
      allow_unauthenticated_identities: converted,
    }
  ),
  with_arn(value):: (
    local converted = value;
    assert std.isString(converted) : '"arn" expected to be of type "string"';
    {
      arn: converted,
    }
  ),
  with_cognito_identity_providers(value):: (
    local converted = if std.isArray(value) then value else [value];
    assert (std.isArray(converted) && std.length(std.set(converted)) == std.length(converted)) : '"cognito_identity_providers" expected to be of type "set"';
    {
      cognito_identity_providers: converted,
    }
  ),
  with_cognito_identity_providers_mixin(value):: (
    local converted = if std.isArray(value) then value else [value];
    assert (std.isArray(converted) && std.length(std.set(converted)) == std.length(converted)) : '"cognito_identity_providers" expected to be of type "set"';
    {
      cognito_identity_providers+: converted,
    }
  ),
  with_developer_provider_name(value):: (
    local converted = value;
    assert std.isString(converted) : '"developer_provider_name" expected to be of type "string"';
    {
      developer_provider_name: converted,
    }
  ),
  with_id(value):: (
    local converted = value;
    assert std.isString(converted) : '"id" expected to be of type "string"';
    {
      id: converted,
    }
  ),
  with_identity_pool_name(value):: (
    local converted = value;
    assert std.isString(converted) : '"identity_pool_name" expected to be of type "string"';
    {
      identity_pool_name: converted,
    }
  ),
  with_openid_connect_provider_arns(value):: (
    local converted = if std.isArray(value) then value else [value];
    assert (std.isArray(converted) && std.length(std.set(converted)) == std.length(converted)) : '"openid_connect_provider_arns" expected to be of type "set"';
    {
      openid_connect_provider_arns: converted,
    }
  ),
  with_openid_connect_provider_arns_mixin(value):: (
    local converted = if std.isArray(value) then value else [value];
    assert (std.isArray(converted) && std.length(std.set(converted)) == std.length(converted)) : '"openid_connect_provider_arns" expected to be of type "set"';
    {
      openid_connect_provider_arns+: converted,
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
  with_saml_provider_arns(value):: (
    local converted = if std.isArray(value) then value else [value];
    assert std.isArray(converted) : '"saml_provider_arns" expected to be of type "list"';
    {
      saml_provider_arns: converted,
    }
  ),
  with_saml_provider_arns_mixin(value):: (
    local converted = if std.isArray(value) then value else [value];
    assert std.isArray(converted) : '"saml_provider_arns" expected to be of type "list"';
    {
      saml_provider_arns+: converted,
    }
  ),
  with_supported_login_providers(value):: (
    local converted = value;
    assert std.isObject(converted) : '"supported_login_providers" expected to be of type "map"';
    {
      supported_login_providers: converted,
    }
  ),
  with_tags(value):: (
    local converted = value;
    assert std.isObject(converted) : '"tags" expected to be of type "map"';
    {
      tags: converted,
    }
  ),
}
