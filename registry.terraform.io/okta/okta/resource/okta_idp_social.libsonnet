{
  local block = self,
  new(name, scopes, type):: (
    {}
    + block.with_name(name)
    + block.with_scopes(scopes)
    + block.with_type(type)
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
  '#with_apple_kid':: 'The Key ID that you obtained from Apple when you created the private key for the client',
  with_apple_kid(value):: (
    local converted = value;
    assert std.isString(converted) : '"apple_kid" expected to be of type "string"';
    {
      apple_kid: converted,
    }
  ),
  '#with_apple_private_key':: "The Key ID that you obtained from Apple when you created the private key for the client. PrivateKey is required when resource is first created. For all consecutive updates, it can be empty/omitted and keeps the existing value if it is empty/omitted. PrivateKey isn't returned when importing this resource.",
  with_apple_private_key(value):: (
    local converted = value;
    assert std.isString(converted) : '"apple_private_key" expected to be of type "string"';
    {
      apple_private_key: converted,
    }
  ),
  '#with_apple_team_id':: 'The Team ID associated with your Apple developer account',
  with_apple_team_id(value):: (
    local converted = value;
    assert std.isString(converted) : '"apple_team_id" expected to be of type "string"';
    {
      apple_team_id: converted,
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
  '#with_issuer_mode':: 'Indicates whether Okta uses the original Okta org domain URL, or a custom domain URL. It can be `ORG_URL` or `CUSTOM_URL`. Default: `ORG_URL`',
  with_issuer_mode(value):: (
    local converted = value;
    assert std.isString(converted) : '"issuer_mode" expected to be of type "string"';
    {
      issuer_mode: converted,
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
  '#with_profile_master':: 'Determines if the IdP should act as a source of truth for user profile attributes.',
  with_profile_master(value):: (
    local converted = value;
    assert std.isBoolean(converted) : '"profile_master" expected to be of type "bool"';
    {
      profile_master: converted,
    }
  ),
  '#with_protocol_type':: 'The type of protocol to use. It can be `OIDC` or `OAUTH2`. Default: `OAUTH2`',
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
  '#with_trust_audience':: 'Trust audience for the Okta IdP instance.',
  with_trust_audience(value):: (
    local converted = value;
    assert std.isString(converted) : '"trust_audience" expected to be of type "string"';
    {
      trust_audience: converted,
    }
  ),
  '#with_trust_issuer':: 'Trust issuer for the Okta IdP instance.',
  with_trust_issuer(value):: (
    local converted = value;
    assert std.isString(converted) : '"trust_issuer" expected to be of type "string"';
    {
      trust_issuer: converted,
    }
  ),
  '#with_trust_kid':: 'Trust kid for the Okta IdP instance.',
  with_trust_kid(value):: (
    local converted = value;
    assert std.isString(converted) : '"trust_kid" expected to be of type "string"';
    {
      trust_kid: converted,
    }
  ),
  '#with_trust_revocation':: 'Trust revocation for the Okta IdP instance.',
  with_trust_revocation(value):: (
    local converted = value;
    assert std.isString(converted) : '"trust_revocation" expected to be of type "string"';
    {
      trust_revocation: converted,
    }
  ),
  '#with_trust_revocation_cache_lifetime':: 'Trust revocation cache lifetime for the Okta IdP instance.',
  with_trust_revocation_cache_lifetime(value):: (
    local converted = value;
    assert std.isNumber(converted) : '"trust_revocation_cache_lifetime" expected to be of type "number"';
    {
      trust_revocation_cache_lifetime: converted,
    }
  ),
  '#with_type':: 'Identity Provider Types: https://developer.okta.com/docs/reference/api/idps/#identity-provider-type',
  with_type(value):: (
    local converted = value;
    assert std.isString(converted) : '"type" expected to be of type "string"';
    {
      type: converted,
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
