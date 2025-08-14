{
  local block = self,
  new():: (
    {}
  ),
  "#withAccountLinkAction":: "Specifies the account linking action for an IdP user.",
  withAccountLinkAction(value):: (
    local converted = value;
    assert std.isString(converted) : '"account_link_action" expected to be of type "string"';
    {
      account_link_action: converted,
    }
  ),
  "#withAccountLinkGroupInclude":: "Group memberships to determine link candidates.",
  withAccountLinkGroupInclude(value):: (
    local converted = if std.isArray(value) then value else [value];
    assert (std.isArray(converted) && std.length(std.set(converted)) == std.length(converted)) : '"account_link_group_include" expected to be of type "set"';
    {
      account_link_group_include: converted,
    }
  ),
  "#withAccountLinkGroupIncludeMixin":: "Group memberships to determine link candidates.",
  withAccountLinkGroupIncludeMixin(value):: (
    local converted = if std.isArray(value) then value else [value];
    assert (std.isArray(converted) && std.length(std.set(converted)) == std.length(converted)) : '"account_link_group_include" expected to be of type "set"';
    {
      account_link_group_include+: converted,
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
  "#withDeprovisionedAction":: "Action for a previously deprovisioned IdP user during authentication.",
  withDeprovisionedAction(value):: (
    local converted = value;
    assert std.isString(converted) : '"deprovisioned_action" expected to be of type "string"';
    {
      deprovisioned_action: converted,
    }
  ),
  "#withGroupsAction":: "Provisioning action for IdP user's group memberships.",
  withGroupsAction(value):: (
    local converted = value;
    assert std.isString(converted) : '"groups_action" expected to be of type "string"';
    {
      groups_action: converted,
    }
  ),
  "#withGroupsAssignment":: "List of Okta Group IDs.",
  withGroupsAssignment(value):: (
    local converted = if std.isArray(value) then value else [value];
    assert (std.isArray(converted) && std.length(std.set(converted)) == std.length(converted)) : '"groups_assignment" expected to be of type "set"';
    {
      groups_assignment: converted,
    }
  ),
  "#withGroupsAssignmentMixin":: "List of Okta Group IDs.",
  withGroupsAssignmentMixin(value):: (
    local converted = if std.isArray(value) then value else [value];
    assert (std.isArray(converted) && std.length(std.set(converted)) == std.length(converted)) : '"groups_assignment" expected to be of type "set"';
    {
      groups_assignment+: converted,
    }
  ),
  "#withGroupsAttribute":: "IdP user profile attribute name for an array value that contains group memberships.",
  withGroupsAttribute(value):: (
    local converted = value;
    assert std.isString(converted) : '"groups_attribute" expected to be of type "string"';
    {
      groups_attribute: converted,
    }
  ),
  "#withGroupsFilter":: "Whitelist of Okta Group identifiers.",
  withGroupsFilter(value):: (
    local converted = if std.isArray(value) then value else [value];
    assert (std.isArray(converted) && std.length(std.set(converted)) == std.length(converted)) : '"groups_filter" expected to be of type "set"';
    {
      groups_filter: converted,
    }
  ),
  "#withGroupsFilterMixin":: "Whitelist of Okta Group identifiers.",
  withGroupsFilterMixin(value):: (
    local converted = if std.isArray(value) then value else [value];
    assert (std.isArray(converted) && std.length(std.set(converted)) == std.length(converted)) : '"groups_filter" expected to be of type "set"';
    {
      groups_filter+: converted,
    }
  ),
  "#withId":: "The id of the social idp to retrieve, conflicts with `name`.",
  withId(value):: (
    local converted = value;
    assert std.isString(converted) : '"id" expected to be of type "string"';
    {
      id: converted,
    }
  ),
  "#withIssuerMode":: "Indicates whether Okta uses the original Okta org domain URL, or a custom domain URL.",
  withIssuerMode(value):: (
    local converted = value;
    assert std.isString(converted) : '"issuer_mode" expected to be of type "string"';
    {
      issuer_mode: converted,
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
  "#withName":: "The name of the social idp to retrieve, conflicts with `id`.",
  withName(value):: (
    local converted = value;
    assert std.isString(converted) : '"name" expected to be of type "string"';
    {
      name: converted,
    }
  ),
  "#withProfileMaster":: "Determines if the IdP should act as a source of truth for user profile attributes.",
  withProfileMaster(value):: (
    local converted = value;
    assert std.isBoolean(converted) : '"profile_master" expected to be of type "bool"';
    {
      profile_master: converted,
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
  "#withProvisioningAction":: "Provisioning action for an IdP user during authentication.",
  withProvisioningAction(value):: (
    local converted = value;
    assert std.isString(converted) : '"provisioning_action" expected to be of type "string"';
    {
      provisioning_action: converted,
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
  "#withStatus":: "Status of the IdP.",
  withStatus(value):: (
    local converted = value;
    assert std.isString(converted) : '"status" expected to be of type "string"';
    {
      status: converted,
    }
  ),
  "#withSubjectMatchAttribute":: "Okta user profile attribute for matching transformed IdP username.",
  withSubjectMatchAttribute(value):: (
    local converted = value;
    assert std.isString(converted) : '"subject_match_attribute" expected to be of type "string"';
    {
      subject_match_attribute: converted,
    }
  ),
  "#withSubjectMatchType":: "Determines the Okta user profile attribute match conditions for account linking and authentication of the transformed IdP username.",
  withSubjectMatchType(value):: (
    local converted = value;
    assert std.isString(converted) : '"subject_match_type" expected to be of type "string"';
    {
      subject_match_type: converted,
    }
  ),
  "#withSuspendedAction":: "Action for a previously suspended IdP user during authentication.",
  withSuspendedAction(value):: (
    local converted = value;
    assert std.isString(converted) : '"suspended_action" expected to be of type "string"';
    {
      suspended_action: converted,
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
  "#withType":: "The type of Social IdP. See API docs [Identity Provider Type](https://developer.okta.com/docs/reference/api/idps/#identity-provider-type)",
  withType(value):: (
    local converted = value;
    assert std.isString(converted) : '"type" expected to be of type "string"';
    {
      type: converted,
    }
  ),
  "#withUsernameTemplate":: "Okta EL Expression to generate or transform a unique username for the IdP user.",
  withUsernameTemplate(value):: (
    local converted = value;
    assert std.isString(converted) : '"username_template" expected to be of type "string"';
    {
      username_template: converted,
    }
  ),
}
