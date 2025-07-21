{
  local block = self,
  new():: (
    {}
  ),
  '#with_authorization_binding':: 'The method of making an authorization request.',
  with_authorization_binding(value):: (
    local converted = value;
    assert std.isString(converted) : '"authorization_binding" expected to be of type "string"';
    {
      authorization_binding: converted,
    }
  ),
  '#with_authorization_url':: 'IdP Authorization Server (AS) endpoint to request consent from the user and obtain an authorization code grant.',
  with_authorization_url(value):: (
    local converted = value;
    assert std.isString(converted) : '"authorization_url" expected to be of type "string"';
    {
      authorization_url: converted,
    }
  ),
  '#with_client_id':: 'Unique identifier issued by AS for the Okta IdP instance.',
  with_client_id(value):: (
    local converted = value;
    assert std.isString(converted) : '"client_id" expected to be of type "string"';
    {
      client_id: converted,
    }
  ),
  '#with_client_secret':: 'Client secret issued by AS for the Okta IdP instance.',
  with_client_secret(value):: (
    local converted = value;
    assert std.isString(converted) : '"client_secret" expected to be of type "string"';
    {
      client_secret: converted,
    }
  ),
  '#with_id':: 'Id of idp.',
  with_id(value):: (
    local converted = value;
    assert std.isString(converted) : '"id" expected to be of type "string"';
    {
      id: converted,
    }
  ),
  '#with_issuer_mode':: 'Indicates whether Okta uses the original Okta org domain URL, a custom domain URL, or dynamic.',
  with_issuer_mode(value):: (
    local converted = value;
    assert std.isString(converted) : '"issuer_mode" expected to be of type "string"';
    {
      issuer_mode: converted,
    }
  ),
  '#with_issuer_url':: 'URI that identifies the issuer.',
  with_issuer_url(value):: (
    local converted = value;
    assert std.isString(converted) : '"issuer_url" expected to be of type "string"';
    {
      issuer_url: converted,
    }
  ),
  '#with_jwks_binding':: ' The method of making a request for the OIDC JWKS.',
  with_jwks_binding(value):: (
    local converted = value;
    assert std.isString(converted) : '"jwks_binding" expected to be of type "string"';
    {
      jwks_binding: converted,
    }
  ),
  '#with_jwks_url':: 'Endpoint where the keys signer publishes its keys in a JWK Set.',
  with_jwks_url(value):: (
    local converted = value;
    assert std.isString(converted) : '"jwks_url" expected to be of type "string"';
    {
      jwks_url: converted,
    }
  ),
  '#with_max_clock_skew':: 'Maximum allowable clock-skew when processing messages from the IdP.',
  with_max_clock_skew(value):: (
    local converted = value;
    assert std.isNumber(converted) : '"max_clock_skew" expected to be of type "number"';
    {
      max_clock_skew: converted,
    }
  ),
  '#with_name':: 'Name of the idp.',
  with_name(value):: (
    local converted = value;
    assert std.isString(converted) : '"name" expected to be of type "string"';
    {
      name: converted,
    }
  ),
  '#with_protocol_type':: 'The type of protocol to use.',
  with_protocol_type(value):: (
    local converted = value;
    assert std.isString(converted) : '"protocol_type" expected to be of type "string"';
    {
      protocol_type: converted,
    }
  ),
  '#with_scopes':: 'The scopes of the IdP.',
  with_scopes(value):: (
    local converted = if std.isArray(value) then value else [value];
    assert (std.isArray(converted) && std.length(std.set(converted)) == std.length(converted)) : '"scopes" expected to be of type "set"';
    {
      scopes: converted,
    }
  ),
  '#with_scopes_mixin':: 'The scopes of the IdP.',
  with_scopes_mixin(value):: (
    local converted = if std.isArray(value) then value else [value];
    assert (std.isArray(converted) && std.length(std.set(converted)) == std.length(converted)) : '"scopes" expected to be of type "set"';
    {
      scopes+: converted,
    }
  ),
  '#with_token_binding':: 'The method of making a token request.',
  with_token_binding(value):: (
    local converted = value;
    assert std.isString(converted) : '"token_binding" expected to be of type "string"';
    {
      token_binding: converted,
    }
  ),
  '#with_token_url':: 'IdP Authorization Server (AS) endpoint to exchange the authorization code grant for an access token.',
  with_token_url(value):: (
    local converted = value;
    assert std.isString(converted) : '"token_url" expected to be of type "string"';
    {
      token_url: converted,
    }
  ),
  '#with_type':: 'Type of idp.',
  with_type(value):: (
    local converted = value;
    assert std.isString(converted) : '"type" expected to be of type "string"';
    {
      type: converted,
    }
  ),
  '#with_user_info_binding':: 'The method of making a user info request.',
  with_user_info_binding(value):: (
    local converted = value;
    assert std.isString(converted) : '"user_info_binding" expected to be of type "string"';
    {
      user_info_binding: converted,
    }
  ),
  '#with_user_info_url':: 'Protected resource endpoint that returns claims about the authenticated user.',
  with_user_info_url(value):: (
    local converted = value;
    assert std.isString(converted) : '"user_info_url" expected to be of type "string"';
    {
      user_info_url: converted,
    }
  ),
}
