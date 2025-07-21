{
  local block = self,
  new():: (
    {}
  ),
  '#with_account_link_action':: 'Specifies the account linking action for an IdP user.',
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
  '#with_deprovisioned_action':: 'Action for a previously deprovisioned IdP user during authentication.',
  with_deprovisioned_action(value):: (
    local converted = value;
    assert std.isString(converted) : '"deprovisioned_action" expected to be of type "string"';
    {
      deprovisioned_action: converted,
    }
  ),
  '#with_groups_action':: "Provisioning action for IdP user's group memberships.",
  with_groups_action(value):: (
    local converted = value;
    assert std.isString(converted) : '"groups_action" expected to be of type "string"';
    {
      groups_action: converted,
    }
  ),
  '#with_groups_assignment':: 'List of Okta Group IDs.',
  with_groups_assignment(value):: (
    local converted = if std.isArray(value) then value else [value];
    assert (std.isArray(converted) && std.length(std.set(converted)) == std.length(converted)) : '"groups_assignment" expected to be of type "set"';
    {
      groups_assignment: converted,
    }
  ),
  '#with_groups_assignment_mixin':: 'List of Okta Group IDs.',
  with_groups_assignment_mixin(value):: (
    local converted = if std.isArray(value) then value else [value];
    assert (std.isArray(converted) && std.length(std.set(converted)) == std.length(converted)) : '"groups_assignment" expected to be of type "set"';
    {
      groups_assignment+: converted,
    }
  ),
  '#with_groups_attribute':: 'IdP user profile attribute name for an array value that contains group memberships.',
  with_groups_attribute(value):: (
    local converted = value;
    assert std.isString(converted) : '"groups_attribute" expected to be of type "string"';
    {
      groups_attribute: converted,
    }
  ),
  '#with_groups_filter':: 'Whitelist of Okta Group identifiers.',
  with_groups_filter(value):: (
    local converted = if std.isArray(value) then value else [value];
    assert (std.isArray(converted) && std.length(std.set(converted)) == std.length(converted)) : '"groups_filter" expected to be of type "set"';
    {
      groups_filter: converted,
    }
  ),
  '#with_groups_filter_mixin':: 'Whitelist of Okta Group identifiers.',
  with_groups_filter_mixin(value):: (
    local converted = if std.isArray(value) then value else [value];
    assert (std.isArray(converted) && std.length(std.set(converted)) == std.length(converted)) : '"groups_filter" expected to be of type "set"';
    {
      groups_filter+: converted,
    }
  ),
  '#with_id':: 'The id of the social idp to retrieve, conflicts with `name`.',
  with_id(value):: (
    local converted = value;
    assert std.isString(converted) : '"id" expected to be of type "string"';
    {
      id: converted,
    }
  ),
  '#with_issuer_mode':: 'Indicates whether Okta uses the original Okta org domain URL, or a custom domain URL.',
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
  '#with_name':: 'The name of the social idp to retrieve, conflicts with `id`.',
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
  '#with_protocol_type':: 'The type of protocol to use.',
  with_protocol_type(value):: (
    local converted = value;
    assert std.isString(converted) : '"protocol_type" expected to be of type "string"';
    {
      protocol_type: converted,
    }
  ),
  '#with_provisioning_action':: 'Provisioning action for an IdP user during authentication.',
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
  '#with_status':: 'Status of the IdP.',
  with_status(value):: (
    local converted = value;
    assert std.isString(converted) : '"status" expected to be of type "string"';
    {
      status: converted,
    }
  ),
  '#with_subject_match_attribute':: 'Okta user profile attribute for matching transformed IdP username.',
  with_subject_match_attribute(value):: (
    local converted = value;
    assert std.isString(converted) : '"subject_match_attribute" expected to be of type "string"';
    {
      subject_match_attribute: converted,
    }
  ),
  '#with_subject_match_type':: 'Determines the Okta user profile attribute match conditions for account linking and authentication of the transformed IdP username.',
  with_subject_match_type(value):: (
    local converted = value;
    assert std.isString(converted) : '"subject_match_type" expected to be of type "string"';
    {
      subject_match_type: converted,
    }
  ),
  '#with_suspended_action':: 'Action for a previously suspended IdP user during authentication.',
  with_suspended_action(value):: (
    local converted = value;
    assert std.isString(converted) : '"suspended_action" expected to be of type "string"';
    {
      suspended_action: converted,
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
  '#with_type':: 'The type of Social IdP. See API docs [Identity Provider Type](https://developer.okta.com/docs/reference/api/idps/#identity-provider-type)',
  with_type(value):: (
    local converted = value;
    assert std.isString(converted) : '"type" expected to be of type "string"';
    {
      type: converted,
    }
  ),
  '#with_username_template':: 'Okta EL Expression to generate or transform a unique username for the IdP user.',
  with_username_template(value):: (
    local converted = value;
    assert std.isString(converted) : '"username_template" expected to be of type "string"';
    {
      username_template: converted,
    }
  ),
}
