{
  local block = self,
  new(client_id, user_pool_id):: (
    {}
    + block.with_client_id(client_id)
    + block.with_user_pool_id(user_pool_id)
  ),
  with_access_token_validity(value):: (
    local converted = value;
    assert std.isNumber(converted) : '"access_token_validity" expected to be of type "number"';
    {
      access_token_validity: converted,
    }
  ),
  with_allowed_oauth_flows(value):: (
    local converted = if std.isArray(value) then value else [value];
    assert (std.isArray(converted) && std.length(std.set(converted)) == std.length(converted)) : '"allowed_oauth_flows" expected to be of type "set"';
    {
      allowed_oauth_flows: converted,
    }
  ),
  with_allowed_oauth_flows_mixin(value):: (
    local converted = if std.isArray(value) then value else [value];
    assert (std.isArray(converted) && std.length(std.set(converted)) == std.length(converted)) : '"allowed_oauth_flows" expected to be of type "set"';
    {
      allowed_oauth_flows+: converted,
    }
  ),
  with_allowed_oauth_flows_user_pool_client(value):: (
    local converted = value;
    assert std.isBoolean(converted) : '"allowed_oauth_flows_user_pool_client" expected to be of type "bool"';
    {
      allowed_oauth_flows_user_pool_client: converted,
    }
  ),
  with_allowed_oauth_scopes(value):: (
    local converted = if std.isArray(value) then value else [value];
    assert (std.isArray(converted) && std.length(std.set(converted)) == std.length(converted)) : '"allowed_oauth_scopes" expected to be of type "set"';
    {
      allowed_oauth_scopes: converted,
    }
  ),
  with_allowed_oauth_scopes_mixin(value):: (
    local converted = if std.isArray(value) then value else [value];
    assert (std.isArray(converted) && std.length(std.set(converted)) == std.length(converted)) : '"allowed_oauth_scopes" expected to be of type "set"';
    {
      allowed_oauth_scopes+: converted,
    }
  ),
  with_analytics_configuration(value):: (
    local converted = if std.isArray(value) then value else [value];
    assert std.isArray(converted) : '"analytics_configuration" expected to be of type "list"';
    {
      analytics_configuration: converted,
    }
  ),
  with_analytics_configuration_mixin(value):: (
    local converted = if std.isArray(value) then value else [value];
    assert std.isArray(converted) : '"analytics_configuration" expected to be of type "list"';
    {
      analytics_configuration+: converted,
    }
  ),
  with_callback_urls(value):: (
    local converted = if std.isArray(value) then value else [value];
    assert (std.isArray(converted) && std.length(std.set(converted)) == std.length(converted)) : '"callback_urls" expected to be of type "set"';
    {
      callback_urls: converted,
    }
  ),
  with_callback_urls_mixin(value):: (
    local converted = if std.isArray(value) then value else [value];
    assert (std.isArray(converted) && std.length(std.set(converted)) == std.length(converted)) : '"callback_urls" expected to be of type "set"';
    {
      callback_urls+: converted,
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
  with_default_redirect_uri(value):: (
    local converted = value;
    assert std.isString(converted) : '"default_redirect_uri" expected to be of type "string"';
    {
      default_redirect_uri: converted,
    }
  ),
  with_enable_propagate_additional_user_context_data(value):: (
    local converted = value;
    assert std.isBoolean(converted) : '"enable_propagate_additional_user_context_data" expected to be of type "bool"';
    {
      enable_propagate_additional_user_context_data: converted,
    }
  ),
  with_enable_token_revocation(value):: (
    local converted = value;
    assert std.isBoolean(converted) : '"enable_token_revocation" expected to be of type "bool"';
    {
      enable_token_revocation: converted,
    }
  ),
  with_explicit_auth_flows(value):: (
    local converted = if std.isArray(value) then value else [value];
    assert (std.isArray(converted) && std.length(std.set(converted)) == std.length(converted)) : '"explicit_auth_flows" expected to be of type "set"';
    {
      explicit_auth_flows: converted,
    }
  ),
  with_explicit_auth_flows_mixin(value):: (
    local converted = if std.isArray(value) then value else [value];
    assert (std.isArray(converted) && std.length(std.set(converted)) == std.length(converted)) : '"explicit_auth_flows" expected to be of type "set"';
    {
      explicit_auth_flows+: converted,
    }
  ),
  with_generate_secret(value):: (
    local converted = value;
    assert std.isBoolean(converted) : '"generate_secret" expected to be of type "bool"';
    {
      generate_secret: converted,
    }
  ),
  with_id(value):: (
    local converted = value;
    assert std.isString(converted) : '"id" expected to be of type "string"';
    {
      id: converted,
    }
  ),
  with_id_token_validity(value):: (
    local converted = value;
    assert std.isNumber(converted) : '"id_token_validity" expected to be of type "number"';
    {
      id_token_validity: converted,
    }
  ),
  with_logout_urls(value):: (
    local converted = if std.isArray(value) then value else [value];
    assert (std.isArray(converted) && std.length(std.set(converted)) == std.length(converted)) : '"logout_urls" expected to be of type "set"';
    {
      logout_urls: converted,
    }
  ),
  with_logout_urls_mixin(value):: (
    local converted = if std.isArray(value) then value else [value];
    assert (std.isArray(converted) && std.length(std.set(converted)) == std.length(converted)) : '"logout_urls" expected to be of type "set"';
    {
      logout_urls+: converted,
    }
  ),
  with_name(value):: (
    local converted = value;
    assert std.isString(converted) : '"name" expected to be of type "string"';
    {
      name: converted,
    }
  ),
  with_prevent_user_existence_errors(value):: (
    local converted = value;
    assert std.isString(converted) : '"prevent_user_existence_errors" expected to be of type "string"';
    {
      prevent_user_existence_errors: converted,
    }
  ),
  with_read_attributes(value):: (
    local converted = if std.isArray(value) then value else [value];
    assert (std.isArray(converted) && std.length(std.set(converted)) == std.length(converted)) : '"read_attributes" expected to be of type "set"';
    {
      read_attributes: converted,
    }
  ),
  with_read_attributes_mixin(value):: (
    local converted = if std.isArray(value) then value else [value];
    assert (std.isArray(converted) && std.length(std.set(converted)) == std.length(converted)) : '"read_attributes" expected to be of type "set"';
    {
      read_attributes+: converted,
    }
  ),
  with_refresh_token_rotation(value):: (
    local converted = if std.isArray(value) then value else [value];
    assert std.isArray(converted) : '"refresh_token_rotation" expected to be of type "list"';
    {
      refresh_token_rotation: converted,
    }
  ),
  with_refresh_token_rotation_mixin(value):: (
    local converted = if std.isArray(value) then value else [value];
    assert std.isArray(converted) : '"refresh_token_rotation" expected to be of type "list"';
    {
      refresh_token_rotation+: converted,
    }
  ),
  with_refresh_token_validity(value):: (
    local converted = value;
    assert std.isNumber(converted) : '"refresh_token_validity" expected to be of type "number"';
    {
      refresh_token_validity: converted,
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
  with_supported_identity_providers(value):: (
    local converted = if std.isArray(value) then value else [value];
    assert (std.isArray(converted) && std.length(std.set(converted)) == std.length(converted)) : '"supported_identity_providers" expected to be of type "set"';
    {
      supported_identity_providers: converted,
    }
  ),
  with_supported_identity_providers_mixin(value):: (
    local converted = if std.isArray(value) then value else [value];
    assert (std.isArray(converted) && std.length(std.set(converted)) == std.length(converted)) : '"supported_identity_providers" expected to be of type "set"';
    {
      supported_identity_providers+: converted,
    }
  ),
  with_token_validity_units(value):: (
    local converted = if std.isArray(value) then value else [value];
    assert std.isArray(converted) : '"token_validity_units" expected to be of type "list"';
    {
      token_validity_units: converted,
    }
  ),
  with_token_validity_units_mixin(value):: (
    local converted = if std.isArray(value) then value else [value];
    assert std.isArray(converted) : '"token_validity_units" expected to be of type "list"';
    {
      token_validity_units+: converted,
    }
  ),
  with_user_pool_id(value):: (
    local converted = value;
    assert std.isString(converted) : '"user_pool_id" expected to be of type "string"';
    {
      user_pool_id: converted,
    }
  ),
  with_write_attributes(value):: (
    local converted = if std.isArray(value) then value else [value];
    assert (std.isArray(converted) && std.length(std.set(converted)) == std.length(converted)) : '"write_attributes" expected to be of type "set"';
    {
      write_attributes: converted,
    }
  ),
  with_write_attributes_mixin(value):: (
    local converted = if std.isArray(value) then value else [value];
    assert (std.isArray(converted) && std.length(std.set(converted)) == std.length(converted)) : '"write_attributes" expected to be of type "set"';
    {
      write_attributes+: converted,
    }
  ),
}
