{
  local block = self,
  new():: (
    {
      terraformObject:: "okta_idp_oidc",
    }
  ),
  "#withAuthorizationBinding":: "The method of making an authorization request.",
  withAuthorizationBinding(value):: (
    local converted = value;
    assert std.isString(converted) : '"authorization_binding" expected to be of type "string"';
    {
      authorization_binding: converted,
    }
  ),
  "#withAuthorizationUrl":: "IdP Authorization Server (AS) endpoint to request consent from the user and obtain an authorization code grant.",
  withAuthorizationUrl(value):: (
    local converted = value;
    assert std.isString(converted) : '"authorization_url" expected to be of type "string"';
    {
      authorization_url: converted,
    }
  ),
  "#withClientId":: "Unique identifier issued by AS for the Okta IdP instance.",
  withClientId(value):: (
    local converted = value;
    assert std.isString(converted) : '"client_id" expected to be of type "string"';
    {
      client_id: converted,
    }
  ),
  "#withClientSecret":: "Client secret issued by AS for the Okta IdP instance.",
  withClientSecret(value):: (
    local converted = value;
    assert std.isString(converted) : '"client_secret" expected to be of type "string"';
    {
      client_secret: converted,
    }
  ),
  "#withId":: "Id of idp.",
  withId(value):: (
    local converted = value;
    assert std.isString(converted) : '"id" expected to be of type "string"';
    {
      id: converted,
    }
  ),
  "#withIssuerMode":: "Indicates whether Okta uses the original Okta org domain URL, a custom domain URL, or dynamic.",
  withIssuerMode(value):: (
    local converted = value;
    assert std.isString(converted) : '"issuer_mode" expected to be of type "string"';
    {
      issuer_mode: converted,
    }
  ),
  "#withIssuerUrl":: "URI that identifies the issuer.",
  withIssuerUrl(value):: (
    local converted = value;
    assert std.isString(converted) : '"issuer_url" expected to be of type "string"';
    {
      issuer_url: converted,
    }
  ),
  "#withJwksBinding":: " The method of making a request for the OIDC JWKS.",
  withJwksBinding(value):: (
    local converted = value;
    assert std.isString(converted) : '"jwks_binding" expected to be of type "string"';
    {
      jwks_binding: converted,
    }
  ),
  "#withJwksUrl":: "Endpoint where the keys signer publishes its keys in a JWK Set.",
  withJwksUrl(value):: (
    local converted = value;
    assert std.isString(converted) : '"jwks_url" expected to be of type "string"';
    {
      jwks_url: converted,
    }
  ),
  "#withMaxClockSkew":: "Maximum allowable clock-skew when processing messages from the IdP.",
  withMaxClockSkew(value):: (
    local converted = value;
    assert std.isNumber(converted) : '"max_clock_skew" expected to be of type "number"';
    {
      max_clock_skew: converted,
    }
  ),
  "#withName":: "Name of the idp.",
  withName(value):: (
    local converted = value;
    assert std.isString(converted) : '"name" expected to be of type "string"';
    {
      name: converted,
    }
  ),
  "#withProtocolType":: "The type of protocol to use.",
  withProtocolType(value):: (
    local converted = value;
    assert std.isString(converted) : '"protocol_type" expected to be of type "string"';
    {
      protocol_type: converted,
    }
  ),
  "#withScopes":: "The scopes of the IdP.",
  withScopes(value):: (
    local converted = if std.isArray(value) then value else [value];
    assert (std.isArray(converted) && std.length(std.set(converted)) == std.length(converted)) : '"scopes" expected to be of type "set"';
    {
      scopes: converted,
    }
  ),
  "#withScopesMixin":: "The scopes of the IdP.",
  withScopesMixin(value):: (
    local converted = if std.isArray(value) then value else [value];
    assert (std.isArray(converted) && std.length(std.set(converted)) == std.length(converted)) : '"scopes" expected to be of type "set"';
    {
      scopes+: converted,
    }
  ),
  "#withTokenBinding":: "The method of making a token request.",
  withTokenBinding(value):: (
    local converted = value;
    assert std.isString(converted) : '"token_binding" expected to be of type "string"';
    {
      token_binding: converted,
    }
  ),
  "#withTokenUrl":: "IdP Authorization Server (AS) endpoint to exchange the authorization code grant for an access token.",
  withTokenUrl(value):: (
    local converted = value;
    assert std.isString(converted) : '"token_url" expected to be of type "string"';
    {
      token_url: converted,
    }
  ),
  "#withType":: "Type of idp.",
  withType(value):: (
    local converted = value;
    assert std.isString(converted) : '"type" expected to be of type "string"';
    {
      type: converted,
    }
  ),
  "#withUserInfoBinding":: "The method of making a user info request.",
  withUserInfoBinding(value):: (
    local converted = value;
    assert std.isString(converted) : '"user_info_binding" expected to be of type "string"';
    {
      user_info_binding: converted,
    }
  ),
  "#withUserInfoUrl":: "Protected resource endpoint that returns claims about the authenticated user.",
  withUserInfoUrl(value):: (
    local converted = value;
    assert std.isString(converted) : '"user_info_url" expected to be of type "string"';
    {
      user_info_url: converted,
    }
  ),
}
