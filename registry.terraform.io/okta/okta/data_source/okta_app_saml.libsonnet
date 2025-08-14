{
  local block = self,
  new():: (
    {}
  ),
  "#withAccessibilityErrorRedirectUrl":: "Custom error page URL",
  withAccessibilityErrorRedirectUrl(value):: (
    local converted = value;
    assert std.isString(converted) : '"accessibility_error_redirect_url" expected to be of type "string"';
    {
      accessibility_error_redirect_url: converted,
    }
  ),
  "#withAccessibilityLoginRedirectUrl":: "Custom login page URL",
  withAccessibilityLoginRedirectUrl(value):: (
    local converted = value;
    assert std.isString(converted) : '"accessibility_login_redirect_url" expected to be of type "string"';
    {
      accessibility_login_redirect_url: converted,
    }
  ),
  "#withAccessibilitySelfService":: "Enable self service",
  withAccessibilitySelfService(value):: (
    local converted = value;
    assert std.isBoolean(converted) : '"accessibility_self_service" expected to be of type "bool"';
    {
      accessibility_self_service: converted,
    }
  ),
  "#withAcsEndpoints":: "List of ACS endpoints for this SAML application",
  withAcsEndpoints(value):: (
    local converted = if std.isArray(value) then value else [value];
    assert (std.isArray(converted) && std.length(std.set(converted)) == std.length(converted)) : '"acs_endpoints" expected to be of type "set"';
    {
      acs_endpoints: converted,
    }
  ),
  "#withAcsEndpointsMixin":: "List of ACS endpoints for this SAML application",
  withAcsEndpointsMixin(value):: (
    local converted = if std.isArray(value) then value else [value];
    assert (std.isArray(converted) && std.length(std.set(converted)) == std.length(converted)) : '"acs_endpoints" expected to be of type "set"';
    {
      acs_endpoints+: converted,
    }
  ),
  "#withActiveOnly":: "Search only ACTIVE applications.",
  withActiveOnly(value):: (
    local converted = value;
    assert std.isBoolean(converted) : '"active_only" expected to be of type "bool"';
    {
      active_only: converted,
    }
  ),
  "#withAppSettingsJson":: "Application settings in JSON format",
  withAppSettingsJson(value):: (
    local converted = value;
    assert std.isString(converted) : '"app_settings_json" expected to be of type "string"';
    {
      app_settings_json: converted,
    }
  ),
  "#withAssertionSigned":: "Determines whether the SAML assertion is digitally signed",
  withAssertionSigned(value):: (
    local converted = value;
    assert std.isBoolean(converted) : '"assertion_signed" expected to be of type "bool"';
    {
      assertion_signed: converted,
    }
  ),
  withAttributeStatements(value):: (
    local converted = if std.isArray(value) then value else [value];
    assert std.isArray(converted) : '"attribute_statements" expected to be of type "list"';
    {
      attribute_statements: converted,
    }
  ),
  withAttributeStatementsMixin(value):: (
    local converted = if std.isArray(value) then value else [value];
    assert std.isArray(converted) : '"attribute_statements" expected to be of type "list"';
    {
      attribute_statements+: converted,
    }
  ),
  "#withAudience":: "Audience Restriction",
  withAudience(value):: (
    local converted = value;
    assert std.isString(converted) : '"audience" expected to be of type "string"';
    {
      audience: converted,
    }
  ),
  "#withAuthnContextClassRef":: "Identifies the SAML authentication context class for the assertion’s authentication statement",
  withAuthnContextClassRef(value):: (
    local converted = value;
    assert std.isString(converted) : '"authn_context_class_ref" expected to be of type "string"';
    {
      authn_context_class_ref: converted,
    }
  ),
  "#withAutoSubmitToolbar":: "Display auto submit toolbar",
  withAutoSubmitToolbar(value):: (
    local converted = value;
    assert std.isBoolean(converted) : '"auto_submit_toolbar" expected to be of type "bool"';
    {
      auto_submit_toolbar: converted,
    }
  ),
  "#withDefaultRelayState":: "Identifies a specific application resource in an IDP initiated SSO scenario.",
  withDefaultRelayState(value):: (
    local converted = value;
    assert std.isString(converted) : '"default_relay_state" expected to be of type "string"';
    {
      default_relay_state: converted,
    }
  ),
  "#withDestination":: "Identifies the location where the SAML response is intended to be sent inside of the SAML assertion",
  withDestination(value):: (
    local converted = value;
    assert std.isString(converted) : '"destination" expected to be of type "string"';
    {
      destination: converted,
    }
  ),
  "#withDigestAlgorithm":: "Determines the digest algorithm used to digitally sign the SAML assertion and response",
  withDigestAlgorithm(value):: (
    local converted = value;
    assert std.isString(converted) : '"digest_algorithm" expected to be of type "string"';
    {
      digest_algorithm: converted,
    }
  ),
  "#withFeatures":: "features to enable",
  withFeatures(value):: (
    local converted = if std.isArray(value) then value else [value];
    assert (std.isArray(converted) && std.length(std.set(converted)) == std.length(converted)) : '"features" expected to be of type "set"';
    {
      features: converted,
    }
  ),
  "#withFeaturesMixin":: "features to enable",
  withFeaturesMixin(value):: (
    local converted = if std.isArray(value) then value else [value];
    assert (std.isArray(converted) && std.length(std.set(converted)) == std.length(converted)) : '"features" expected to be of type "set"';
    {
      features+: converted,
    }
  ),
  "#withGroups":: "Groups associated with the application",
  withGroups(value):: (
    local converted = if std.isArray(value) then value else [value];
    assert (std.isArray(converted) && std.length(std.set(converted)) == std.length(converted)) : '"groups" expected to be of type "set"';
    {
      groups: converted,
    }
  ),
  "#withGroupsMixin":: "Groups associated with the application",
  withGroupsMixin(value):: (
    local converted = if std.isArray(value) then value else [value];
    assert (std.isArray(converted) && std.length(std.set(converted)) == std.length(converted)) : '"groups" expected to be of type "set"';
    {
      groups+: converted,
    }
  ),
  "#withHideIos":: "Do not display application icon on mobile app",
  withHideIos(value):: (
    local converted = value;
    assert std.isBoolean(converted) : '"hide_ios" expected to be of type "bool"';
    {
      hide_ios: converted,
    }
  ),
  "#withHideWeb":: "Do not display application icon to users",
  withHideWeb(value):: (
    local converted = value;
    assert std.isBoolean(converted) : '"hide_web" expected to be of type "bool"';
    {
      hide_web: converted,
    }
  ),
  "#withHonorForceAuthn":: "Prompt user to re-authenticate if SP asks for it",
  withHonorForceAuthn(value):: (
    local converted = value;
    assert std.isBoolean(converted) : '"honor_force_authn" expected to be of type "bool"';
    {
      honor_force_authn: converted,
    }
  ),
  "#withId":: "Id of application to retrieve, conflicts with label and label_prefix.",
  withId(value):: (
    local converted = value;
    assert std.isString(converted) : '"id" expected to be of type "string"';
    {
      id: converted,
    }
  ),
  "#withIdpIssuer":: "SAML issuer ID",
  withIdpIssuer(value):: (
    local converted = value;
    assert std.isString(converted) : '"idp_issuer" expected to be of type "string"';
    {
      idp_issuer: converted,
    }
  ),
  "#withInlineHookId":: "Saml Inline Hook setting",
  withInlineHookId(value):: (
    local converted = value;
    assert std.isString(converted) : '"inline_hook_id" expected to be of type "string"';
    {
      inline_hook_id: converted,
    }
  ),
  "#withKeyId":: "Certificate ID",
  withKeyId(value):: (
    local converted = value;
    assert std.isString(converted) : '"key_id" expected to be of type "string"';
    {
      key_id: converted,
    }
  ),
  "#withLabel":: "The label of the app to retrieve, conflicts with label_prefix and id. Label  \t\t\t\tuses the ?q=<label> query parameter exposed by Okta's API. It should be noted that at this time  \t\t\t\tthis searches both name and label. This is used to avoid paginating through all applications.",
  withLabel(value):: (
    local converted = value;
    assert std.isString(converted) : '"label" expected to be of type "string"';
    {
      label: converted,
    }
  ),
  "#withLabelPrefix":: "Label prefix of the app to retrieve, conflicts with label and id. This will tell the \t\t\t\tprovider to do a starts with query as opposed to an equals query.",
  withLabelPrefix(value):: (
    local converted = value;
    assert std.isString(converted) : '"label_prefix" expected to be of type "string"';
    {
      label_prefix: converted,
    }
  ),
  "#withLinks":: "Discoverable resources related to the app",
  withLinks(value):: (
    local converted = value;
    assert std.isString(converted) : '"links" expected to be of type "string"';
    {
      links: converted,
    }
  ),
  "#withName":: "Name of application.",
  withName(value):: (
    local converted = value;
    assert std.isString(converted) : '"name" expected to be of type "string"';
    {
      name: converted,
    }
  ),
  "#withRecipient":: "The location where the app may present the SAML assertion",
  withRecipient(value):: (
    local converted = value;
    assert std.isString(converted) : '"recipient" expected to be of type "string"';
    {
      recipient: converted,
    }
  ),
  "#withRequestCompressed":: "Denotes whether the request is compressed or not.",
  withRequestCompressed(value):: (
    local converted = value;
    assert std.isBoolean(converted) : '"request_compressed" expected to be of type "bool"';
    {
      request_compressed: converted,
    }
  ),
  "#withResponseSigned":: "Determines whether the SAML auth response message is digitally signed",
  withResponseSigned(value):: (
    local converted = value;
    assert std.isBoolean(converted) : '"response_signed" expected to be of type "bool"';
    {
      response_signed: converted,
    }
  ),
  "#withSamlSignedRequestEnabled":: "SAML Signed Request enabled",
  withSamlSignedRequestEnabled(value):: (
    local converted = value;
    assert std.isBoolean(converted) : '"saml_signed_request_enabled" expected to be of type "bool"';
    {
      saml_signed_request_enabled: converted,
    }
  ),
  "#withSignatureAlgorithm":: "Signature algorithm used to digitally sign the assertion and response",
  withSignatureAlgorithm(value):: (
    local converted = value;
    assert std.isString(converted) : '"signature_algorithm" expected to be of type "string"';
    {
      signature_algorithm: converted,
    }
  ),
  "#withSingleLogoutCertificate":: "x509 encoded certificate that the Service Provider uses to sign Single Logout requests",
  withSingleLogoutCertificate(value):: (
    local converted = value;
    assert std.isString(converted) : '"single_logout_certificate" expected to be of type "string"';
    {
      single_logout_certificate: converted,
    }
  ),
  "#withSingleLogoutIssuer":: "The issuer of the Service Provider that generates the Single Logout request",
  withSingleLogoutIssuer(value):: (
    local converted = value;
    assert std.isString(converted) : '"single_logout_issuer" expected to be of type "string"';
    {
      single_logout_issuer: converted,
    }
  ),
  "#withSingleLogoutUrl":: "The location where the logout response is sent",
  withSingleLogoutUrl(value):: (
    local converted = value;
    assert std.isString(converted) : '"single_logout_url" expected to be of type "string"';
    {
      single_logout_url: converted,
    }
  ),
  "#withSkipGroups":: "Ignore groups sync. This is a temporary solution until 'groups' field is supported in all the app-like resources",
  withSkipGroups(value):: (
    local converted = value;
    assert std.isBoolean(converted) : '"skip_groups" expected to be of type "bool"';
    {
      skip_groups: converted,
    }
  ),
  "#withSkipUsers":: "Ignore users sync. This is a temporary solution until 'users' field is supported in all the app-like resources",
  withSkipUsers(value):: (
    local converted = value;
    assert std.isBoolean(converted) : '"skip_users" expected to be of type "bool"';
    {
      skip_users: converted,
    }
  ),
  "#withSpIssuer":: "SAML SP issuer ID",
  withSpIssuer(value):: (
    local converted = value;
    assert std.isString(converted) : '"sp_issuer" expected to be of type "string"';
    {
      sp_issuer: converted,
    }
  ),
  "#withSsoUrl":: "Single Sign On URL",
  withSsoUrl(value):: (
    local converted = value;
    assert std.isString(converted) : '"sso_url" expected to be of type "string"';
    {
      sso_url: converted,
    }
  ),
  "#withStatus":: "Status of application.",
  withStatus(value):: (
    local converted = value;
    assert std.isString(converted) : '"status" expected to be of type "string"';
    {
      status: converted,
    }
  ),
  "#withSubjectNameIdFormat":: "Identifies the SAML processing rules.",
  withSubjectNameIdFormat(value):: (
    local converted = value;
    assert std.isString(converted) : '"subject_name_id_format" expected to be of type "string"';
    {
      subject_name_id_format: converted,
    }
  ),
  "#withSubjectNameIdTemplate":: "Template for app user's username when a user is assigned to the app",
  withSubjectNameIdTemplate(value):: (
    local converted = value;
    assert std.isString(converted) : '"subject_name_id_template" expected to be of type "string"';
    {
      subject_name_id_template: converted,
    }
  ),
  "#withUserNameTemplate":: "Username template",
  withUserNameTemplate(value):: (
    local converted = value;
    assert std.isString(converted) : '"user_name_template" expected to be of type "string"';
    {
      user_name_template: converted,
    }
  ),
  "#withUserNameTemplatePushStatus":: "Push username on update",
  withUserNameTemplatePushStatus(value):: (
    local converted = value;
    assert std.isString(converted) : '"user_name_template_push_status" expected to be of type "string"';
    {
      user_name_template_push_status: converted,
    }
  ),
  "#withUserNameTemplateSuffix":: "Username template suffix",
  withUserNameTemplateSuffix(value):: (
    local converted = value;
    assert std.isString(converted) : '"user_name_template_suffix" expected to be of type "string"';
    {
      user_name_template_suffix: converted,
    }
  ),
  "#withUserNameTemplateType":: "Username template type",
  withUserNameTemplateType(value):: (
    local converted = value;
    assert std.isString(converted) : '"user_name_template_type" expected to be of type "string"';
    {
      user_name_template_type: converted,
    }
  ),
  "#withUsers":: "Users associated with the application",
  withUsers(value):: (
    local converted = if std.isArray(value) then value else [value];
    assert (std.isArray(converted) && std.length(std.set(converted)) == std.length(converted)) : '"users" expected to be of type "set"';
    {
      users: converted,
    }
  ),
  "#withUsersMixin":: "Users associated with the application",
  withUsersMixin(value):: (
    local converted = if std.isArray(value) then value else [value];
    assert (std.isArray(converted) && std.length(std.set(converted)) == std.length(converted)) : '"users" expected to be of type "set"';
    {
      users+: converted,
    }
  ),
}
