{
  local block = self,
  new(authorization_binding, authorization_url, client_id, client_secret, issuer_url, jwks_binding, jwks_url, name, scopes, token_binding, token_url):: (
    {}
    + block.with_authorization_binding(authorization_binding)
    + block.with_authorization_url(authorization_url)
    + block.with_client_id(client_id)
    + block.with_client_secret(client_secret)
    + block.with_issuer_url(issuer_url)
    + block.with_jwks_binding(jwks_binding)
    + block.with_jwks_url(jwks_url)
    + block.with_name(name)
    + block.with_scopes(scopes)
    + block.with_token_binding(token_binding)
    + block.with_token_url(token_url)
  ),
  '#with_account_link_action':: 'Specifies the account linking action for an IdP user. Default: `AUTO`',
  with_account_link_action(value):: (
    local converted = value;
    assert std.isString(converted) : '"account_link_action" expected to be of type "string"';
    {
      account_link_action: converted,
    }
  ),
  '#with_account_link_group_include':: 'Group memberships to determine link candidates.',
  with_account_link_group_include(value):: (
    local converted = if std.isArray(value) then value else [value];
    assert (std.isArray(converted) && std.length(std.set(converted)) == std.length(converted)) : '"account_link_group_include" expected to be of type "set"';
    {
      account_link_group_include: converted,
    }
  ),
  '#with_account_link_group_include_mixin':: 'Group memberships to determine link candidates.',
  with_account_link_group_include_mixin(value):: (
    local converted = if std.isArray(value) then value else [value];
    assert (std.isArray(converted) && std.length(std.set(converted)) == std.length(converted)) : '"account_link_group_include" expected to be of type "set"';
    {
      account_link_group_include+: converted,
    }
  ),
  '#with_authorization_binding':: 'The method of making an authorization request. It can be set to `HTTP-POST` or `HTTP-REDIRECT`.',
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
  '#with_deprovisioned_action':: 'Action for a previously deprovisioned IdP user during authentication. Can be `NONE` or `REACTIVATE`. Default: `NONE`',
  with_deprovisioned_action(value):: (
    local converted = value;
    assert std.isString(converted) : '"deprovisioned_action" expected to be of type "string"';
    {
      deprovisioned_action: converted,
    }
  ),
  '#with_filter':: 'Optional regular expression pattern used to filter untrusted IdP usernames.',
  with_filter(value):: (
    local converted = value;
    assert std.isString(converted) : '"filter" expected to be of type "string"';
    {
      filter: converted,
    }
  ),
  '#with_groups_action':: "Provisioning action for IdP user's group memberships. It can be `NONE`, `SYNC`, `APPEND`, or `ASSIGN`. Default: `NONE`",
  with_groups_action(value):: (
    local converted = value;
    assert std.isString(converted) : '"groups_action" expected to be of type "string"';
    {
      groups_action: converted,
    }
  ),
  '#with_groups_assignment':: 'List of Okta Group IDs to add an IdP user as a member with the `ASSIGN` `groups_action`.',
  with_groups_assignment(value):: (
    local converted = if std.isArray(value) then value else [value];
    assert (std.isArray(converted) && std.length(std.set(converted)) == std.length(converted)) : '"groups_assignment" expected to be of type "set"';
    {
      groups_assignment: converted,
    }
  ),
  '#with_groups_assignment_mixin':: 'List of Okta Group IDs to add an IdP user as a member with the `ASSIGN` `groups_action`.',
  with_groups_assignment_mixin(value):: (
    local converted = if std.isArray(value) then value else [value];
    assert (std.isArray(converted) && std.length(std.set(converted)) == std.length(converted)) : '"groups_assignment" expected to be of type "set"';
    {
      groups_assignment+: converted,
    }
  ),
  '#with_groups_attribute':: 'IdP user profile attribute name (case-insensitive) for an array value that contains group memberships.',
  with_groups_attribute(value):: (
    local converted = value;
    assert std.isString(converted) : '"groups_attribute" expected to be of type "string"';
    {
      groups_attribute: converted,
    }
  ),
  '#with_groups_filter':: 'Whitelist of Okta Group identifiers that are allowed for the `APPEND` or `SYNC` `groups_action`.',
  with_groups_filter(value):: (
    local converted = if std.isArray(value) then value else [value];
    assert (std.isArray(converted) && std.length(std.set(converted)) == std.length(converted)) : '"groups_filter" expected to be of type "set"';
    {
      groups_filter: converted,
    }
  ),
  '#with_groups_filter_mixin':: 'Whitelist of Okta Group identifiers that are allowed for the `APPEND` or `SYNC` `groups_action`.',
  with_groups_filter_mixin(value):: (
    local converted = if std.isArray(value) then value else [value];
    assert (std.isArray(converted) && std.length(std.set(converted)) == std.length(converted)) : '"groups_filter" expected to be of type "set"';
    {
      groups_filter+: converted,
    }
  ),
  with_id(value):: (
    local converted = value;
    assert std.isString(converted) : '"id" expected to be of type "string"';
    {
      id: converted,
    }
  ),
  '#with_issuer_mode':: 'Indicates whether Okta uses the original Okta org domain URL, a custom domain URL, or dynamic. It can be `ORG_URL`, `CUSTOM_URL`, or `DYNAMIC`. Default: `ORG_URL`',
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
  '#with_jwks_binding':: 'The method of making a request for the OIDC JWKS. It can be set to `HTTP-POST` or `HTTP-REDIRECT`',
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
  '#with_name':: 'Name of the IdP',
  with_name(value):: (
    local converted = value;
    assert std.isString(converted) : '"name" expected to be of type "string"';
    {
      name: converted,
    }
  ),
  '#with_pkce_required':: 'Require Proof Key for Code Exchange (PKCE) for additional verification key rotation mode. See: https://developer.okta.com/docs/reference/api/idps/#oauth-2-0-and-openid-connect-client-object',
  with_pkce_required(value):: (
    local converted = value;
    assert std.isBoolean(converted) : '"pkce_required" expected to be of type "bool"';
    {
      pkce_required: converted,
    }
  ),
  '#with_profile_master':: 'Determines if the IdP should act as a source of truth for user profile attributes.',
  with_profile_master(value):: (
    local converted = value;
    assert std.isBoolean(converted) : '"profile_master" expected to be of type "bool"';
    {
      profile_master: converted,
    }
  ),
  '#with_protocol_type':: ' The type of protocol to use. It can be `OIDC` or `OAUTH2`. Default: `OIDC`',
  with_protocol_type(value):: (
    local converted = value;
    assert std.isString(converted) : '"protocol_type" expected to be of type "string"';
    {
      protocol_type: converted,
    }
  ),
  '#with_provisioning_action':: 'Provisioning action for an IdP user during authentication. Default: `AUTO`',
  with_provisioning_action(value):: (
    local converted = value;
    assert std.isString(converted) : '"provisioning_action" expected to be of type "string"';
    {
      provisioning_action: converted,
    }
  ),
  '#with_request_signature_algorithm':: 'The HMAC Signature Algorithm used when signing an authorization request. Defaults to `HS256`. It can be `HS256`, `HS384`, `HS512`, `SHA-256`. `RS256`, `RS384`, or `RS512`. NOTE: `SHA-256` an undocumented legacy value and not continue to be valid. See API docs https://developer.okta.com/docs/reference/api/idps/#oidc-request-signature-algorithm-object',
  with_request_signature_algorithm(value):: (
    local converted = value;
    assert std.isString(converted) : '"request_signature_algorithm" expected to be of type "string"';
    {
      request_signature_algorithm: converted,
    }
  ),
  '#with_request_signature_scope':: 'Specifies whether to digitally sign an AuthnRequest messages to the IdP. Defaults to `REQUEST`. It can be `REQUEST` or `NONE`.',
  with_request_signature_scope(value):: (
    local converted = value;
    assert std.isString(converted) : '"request_signature_scope" expected to be of type "string"';
    {
      request_signature_scope: converted,
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
  '#with_status':: 'Default to `ACTIVE`',
  with_status(value):: (
    local converted = value;
    assert std.isString(converted) : '"status" expected to be of type "string"';
    {
      status: converted,
    }
  ),
  '#with_subject_match_attribute':: 'Okta user profile attribute for matching transformed IdP username. Only for matchType `CUSTOM_ATTRIBUTE`.',
  with_subject_match_attribute(value):: (
    local converted = value;
    assert std.isString(converted) : '"subject_match_attribute" expected to be of type "string"';
    {
      subject_match_attribute: converted,
    }
  ),
  '#with_subject_match_type':: 'Determines the Okta user profile attribute match conditions for account linking and authentication of the transformed IdP username. By default, it is set to `USERNAME`. It can be set to `USERNAME`, `EMAIL`, `USERNAME_OR_EMAIL` or `CUSTOM_ATTRIBUTE`.',
  with_subject_match_type(value):: (
    local converted = value;
    assert std.isString(converted) : '"subject_match_type" expected to be of type "string"';
    {
      subject_match_type: converted,
    }
  ),
  '#with_suspended_action':: 'Action for a previously suspended IdP user during authentication. Can be `NONE` or `REACTIVATE`. Default: `NONE`',
  with_suspended_action(value):: (
    local converted = value;
    assert std.isString(converted) : '"suspended_action" expected to be of type "string"';
    {
      suspended_action: converted,
    }
  ),
  '#with_token_binding':: 'The method of making a token request. It can be set to `HTTP-POST` or `HTTP-REDIRECT`.',
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
  '#with_type':: 'Type of OIDC IdP.',
  with_type(value):: (
    local converted = value;
    assert std.isString(converted) : '"type" expected to be of type "string"';
    {
      type: converted,
    }
  ),
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
  '#with_user_type_id':: 'User type ID. Can be used as `target_id` in the `okta_profile_mapping` resource.',
  with_user_type_id(value):: (
    local converted = value;
    assert std.isString(converted) : '"user_type_id" expected to be of type "string"';
    {
      user_type_id: converted,
    }
  ),
  '#with_username_template':: 'Okta EL Expression to generate or transform a unique username for the IdP user. Default: `idpuser.email`',
  with_username_template(value):: (
    local converted = value;
    assert std.isString(converted) : '"username_template" expected to be of type "string"';
    {
      username_template: converted,
    }
  ),
}
