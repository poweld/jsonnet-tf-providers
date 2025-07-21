{
  local block = self,
  new(issuer, kid, name, sso_url):: (
    {}
    + block.with_issuer(issuer)
    + block.with_kid(kid)
    + block.with_name(name)
    + block.with_sso_url(sso_url)
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
  with_acs_binding(value):: (
    local converted = value;
    assert std.isString(converted) : '"acs_binding" expected to be of type "string"';
    {
      acs_binding: converted,
    }
  ),
  '#with_acs_type':: 'The type of ACS. It can be `INSTANCE` or `ORG`. Default: `INSTANCE`',
  with_acs_type(value):: (
    local converted = value;
    assert std.isString(converted) : '"acs_type" expected to be of type "string"';
    {
      acs_type: converted,
    }
  ),
  with_audience(value):: (
    local converted = value;
    assert std.isString(converted) : '"audience" expected to be of type "string"';
    {
      audience: converted,
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
  '#with_honor_persistent_name_id':: 'Determines if the IdP should persist account linking when the incoming assertion NameID format is urn:oasis:names:tc:SAML:2.0:nameid-format:persistent',
  with_honor_persistent_name_id(value):: (
    local converted = value;
    assert std.isBoolean(converted) : '"honor_persistent_name_id" expected to be of type "bool"';
    {
      honor_persistent_name_id: converted,
    }
  ),
  with_id(value):: (
    local converted = value;
    assert std.isString(converted) : '"id" expected to be of type "string"';
    {
      id: converted,
    }
  ),
  '#with_issuer':: 'URI that identifies the issuer.',
  with_issuer(value):: (
    local converted = value;
    assert std.isString(converted) : '"issuer" expected to be of type "string"';
    {
      issuer: converted,
    }
  ),
  '#with_issuer_mode':: 'Indicates whether Okta uses the original Okta org domain URL, or a custom domain URL',
  with_issuer_mode(value):: (
    local converted = value;
    assert std.isString(converted) : '"issuer_mode" expected to be of type "string"';
    {
      issuer_mode: converted,
    }
  ),
  '#with_kid':: 'The ID of the signing key.',
  with_kid(value):: (
    local converted = value;
    assert std.isString(converted) : '"kid" expected to be of type "string"';
    {
      kid: converted,
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
  '#with_name_format':: 'The name identifier format to use. By default `urn:oasis:names:tc:SAML:1.1:nameid-format:unspecified`.',
  with_name_format(value):: (
    local converted = value;
    assert std.isString(converted) : '"name_format" expected to be of type "string"';
    {
      name_format: converted,
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
  '#with_provisioning_action':: 'Provisioning action for an IdP user during authentication. Default: `AUTO`',
  with_provisioning_action(value):: (
    local converted = value;
    assert std.isString(converted) : '"provisioning_action" expected to be of type "string"';
    {
      provisioning_action: converted,
    }
  ),
  '#with_request_signature_algorithm':: 'The XML digital Signature Algorithm used when signing an `AuthnRequest` message. It can be `SHA-256` or `SHA-1`. Default: `SHA-256`',
  with_request_signature_algorithm(value):: (
    local converted = value;
    assert std.isString(converted) : '"request_signature_algorithm" expected to be of type "string"';
    {
      request_signature_algorithm: converted,
    }
  ),
  '#with_request_signature_scope':: 'Specifies whether to digitally sign an AuthnRequest messages to the IdP. It can be `REQUEST` or `NONE`. Default: `REQUEST`',
  with_request_signature_scope(value):: (
    local converted = value;
    assert std.isString(converted) : '"request_signature_scope" expected to be of type "string"';
    {
      request_signature_scope: converted,
    }
  ),
  '#with_response_signature_algorithm':: 'The minimum XML digital signature algorithm allowed when verifying a `SAMLResponse` message or Assertion element. It can be `SHA-256` or `SHA-1`. Default: `SHA-256`',
  with_response_signature_algorithm(value):: (
    local converted = value;
    assert std.isString(converted) : '"response_signature_algorithm" expected to be of type "string"';
    {
      response_signature_algorithm: converted,
    }
  ),
  '#with_response_signature_scope':: 'Specifies whether to verify a `SAMLResponse` message or Assertion element XML digital signature. It can be `RESPONSE`, `ASSERTION`, or `ANY`. Default: `ANY`',
  with_response_signature_scope(value):: (
    local converted = value;
    assert std.isString(converted) : '"response_signature_scope" expected to be of type "string"';
    {
      response_signature_scope: converted,
    }
  ),
  '#with_sso_binding':: 'The method of making an SSO request. It can be set to `HTTP-POST` or `HTTP-REDIRECT`. Default: `HTTP-POST`',
  with_sso_binding(value):: (
    local converted = value;
    assert std.isString(converted) : '"sso_binding" expected to be of type "string"';
    {
      sso_binding: converted,
    }
  ),
  '#with_sso_destination':: 'URI reference indicating the address to which the AuthnRequest message is sent.',
  with_sso_destination(value):: (
    local converted = value;
    assert std.isString(converted) : '"sso_destination" expected to be of type "string"';
    {
      sso_destination: converted,
    }
  ),
  '#with_sso_url':: 'URL of binding-specific endpoint to send an AuthnRequest message to IdP.',
  with_sso_url(value):: (
    local converted = value;
    assert std.isString(converted) : '"sso_url" expected to be of type "string"';
    {
      sso_url: converted,
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
  '#with_subject_filter':: 'Optional regular expression pattern used to filter untrusted IdP usernames.',
  with_subject_filter(value):: (
    local converted = value;
    assert std.isString(converted) : '"subject_filter" expected to be of type "string"';
    {
      subject_filter: converted,
    }
  ),
  '#with_subject_format':: 'The name format.',
  with_subject_format(value):: (
    local converted = if std.isArray(value) then value else [value];
    assert (std.isArray(converted) && std.length(std.set(converted)) == std.length(converted)) : '"subject_format" expected to be of type "set"';
    {
      subject_format: converted,
    }
  ),
  '#with_subject_format_mixin':: 'The name format.',
  with_subject_format_mixin(value):: (
    local converted = if std.isArray(value) then value else [value];
    assert (std.isArray(converted) && std.length(std.set(converted)) == std.length(converted)) : '"subject_format" expected to be of type "set"';
    {
      subject_format+: converted,
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
  with_type(value):: (
    local converted = value;
    assert std.isString(converted) : '"type" expected to be of type "string"';
    {
      type: converted,
    }
  ),
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
