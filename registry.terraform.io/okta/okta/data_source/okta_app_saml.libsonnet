{
  local block = self,
  new():: (
    {}
  ),
  '#with_accessibility_error_redirect_url':: 'Custom error page URL',
  with_accessibility_error_redirect_url(value):: (
    local converted = value;
    assert std.isString(converted) : '"accessibility_error_redirect_url" expected to be of type "string"';
    {
      accessibility_error_redirect_url: converted,
    }
  ),
  '#with_accessibility_login_redirect_url':: 'Custom login page URL',
  with_accessibility_login_redirect_url(value):: (
    local converted = value;
    assert std.isString(converted) : '"accessibility_login_redirect_url" expected to be of type "string"';
    {
      accessibility_login_redirect_url: converted,
    }
  ),
  '#with_accessibility_self_service':: 'Enable self service',
  with_accessibility_self_service(value):: (
    local converted = value;
    assert std.isBoolean(converted) : '"accessibility_self_service" expected to be of type "bool"';
    {
      accessibility_self_service: converted,
    }
  ),
  '#with_acs_endpoints':: 'List of ACS endpoints for this SAML application',
  with_acs_endpoints(value):: (
    local converted = if std.isArray(value) then value else [value];
    assert (std.isArray(converted) && std.length(std.set(converted)) == std.length(converted)) : '"acs_endpoints" expected to be of type "set"';
    {
      acs_endpoints: converted,
    }
  ),
  '#with_acs_endpoints_mixin':: 'List of ACS endpoints for this SAML application',
  with_acs_endpoints_mixin(value):: (
    local converted = if std.isArray(value) then value else [value];
    assert (std.isArray(converted) && std.length(std.set(converted)) == std.length(converted)) : '"acs_endpoints" expected to be of type "set"';
    {
      acs_endpoints+: converted,
    }
  ),
  '#with_active_only':: 'Search only ACTIVE applications.',
  with_active_only(value):: (
    local converted = value;
    assert std.isBoolean(converted) : '"active_only" expected to be of type "bool"';
    {
      active_only: converted,
    }
  ),
  '#with_app_settings_json':: 'Application settings in JSON format',
  with_app_settings_json(value):: (
    local converted = value;
    assert std.isString(converted) : '"app_settings_json" expected to be of type "string"';
    {
      app_settings_json: converted,
    }
  ),
  '#with_assertion_signed':: 'Determines whether the SAML assertion is digitally signed',
  with_assertion_signed(value):: (
    local converted = value;
    assert std.isBoolean(converted) : '"assertion_signed" expected to be of type "bool"';
    {
      assertion_signed: converted,
    }
  ),
  with_attribute_statements(value):: (
    local converted = if std.isArray(value) then value else [value];
    assert std.isArray(converted) : '"attribute_statements" expected to be of type "list"';
    {
      attribute_statements: converted,
    }
  ),
  with_attribute_statements_mixin(value):: (
    local converted = if std.isArray(value) then value else [value];
    assert std.isArray(converted) : '"attribute_statements" expected to be of type "list"';
    {
      attribute_statements+: converted,
    }
  ),
  '#with_audience':: 'Audience Restriction',
  with_audience(value):: (
    local converted = value;
    assert std.isString(converted) : '"audience" expected to be of type "string"';
    {
      audience: converted,
    }
  ),
  '#with_authn_context_class_ref':: 'Identifies the SAML authentication context class for the assertion’s authentication statement',
  with_authn_context_class_ref(value):: (
    local converted = value;
    assert std.isString(converted) : '"authn_context_class_ref" expected to be of type "string"';
    {
      authn_context_class_ref: converted,
    }
  ),
  '#with_auto_submit_toolbar':: 'Display auto submit toolbar',
  with_auto_submit_toolbar(value):: (
    local converted = value;
    assert std.isBoolean(converted) : '"auto_submit_toolbar" expected to be of type "bool"';
    {
      auto_submit_toolbar: converted,
    }
  ),
  '#with_default_relay_state':: 'Identifies a specific application resource in an IDP initiated SSO scenario.',
  with_default_relay_state(value):: (
    local converted = value;
    assert std.isString(converted) : '"default_relay_state" expected to be of type "string"';
    {
      default_relay_state: converted,
    }
  ),
  '#with_destination':: 'Identifies the location where the SAML response is intended to be sent inside of the SAML assertion',
  with_destination(value):: (
    local converted = value;
    assert std.isString(converted) : '"destination" expected to be of type "string"';
    {
      destination: converted,
    }
  ),
  '#with_digest_algorithm':: 'Determines the digest algorithm used to digitally sign the SAML assertion and response',
  with_digest_algorithm(value):: (
    local converted = value;
    assert std.isString(converted) : '"digest_algorithm" expected to be of type "string"';
    {
      digest_algorithm: converted,
    }
  ),
  '#with_features':: 'features to enable',
  with_features(value):: (
    local converted = if std.isArray(value) then value else [value];
    assert (std.isArray(converted) && std.length(std.set(converted)) == std.length(converted)) : '"features" expected to be of type "set"';
    {
      features: converted,
    }
  ),
  '#with_features_mixin':: 'features to enable',
  with_features_mixin(value):: (
    local converted = if std.isArray(value) then value else [value];
    assert (std.isArray(converted) && std.length(std.set(converted)) == std.length(converted)) : '"features" expected to be of type "set"';
    {
      features+: converted,
    }
  ),
  '#with_groups':: 'Groups associated with the application',
  with_groups(value):: (
    local converted = if std.isArray(value) then value else [value];
    assert (std.isArray(converted) && std.length(std.set(converted)) == std.length(converted)) : '"groups" expected to be of type "set"';
    {
      groups: converted,
    }
  ),
  '#with_groups_mixin':: 'Groups associated with the application',
  with_groups_mixin(value):: (
    local converted = if std.isArray(value) then value else [value];
    assert (std.isArray(converted) && std.length(std.set(converted)) == std.length(converted)) : '"groups" expected to be of type "set"';
    {
      groups+: converted,
    }
  ),
  '#with_hide_ios':: 'Do not display application icon on mobile app',
  with_hide_ios(value):: (
    local converted = value;
    assert std.isBoolean(converted) : '"hide_ios" expected to be of type "bool"';
    {
      hide_ios: converted,
    }
  ),
  '#with_hide_web':: 'Do not display application icon to users',
  with_hide_web(value):: (
    local converted = value;
    assert std.isBoolean(converted) : '"hide_web" expected to be of type "bool"';
    {
      hide_web: converted,
    }
  ),
  '#with_honor_force_authn':: 'Prompt user to re-authenticate if SP asks for it',
  with_honor_force_authn(value):: (
    local converted = value;
    assert std.isBoolean(converted) : '"honor_force_authn" expected to be of type "bool"';
    {
      honor_force_authn: converted,
    }
  ),
  '#with_id':: 'Id of application to retrieve, conflicts with label and label_prefix.',
  with_id(value):: (
    local converted = value;
    assert std.isString(converted) : '"id" expected to be of type "string"';
    {
      id: converted,
    }
  ),
  '#with_idp_issuer':: 'SAML issuer ID',
  with_idp_issuer(value):: (
    local converted = value;
    assert std.isString(converted) : '"idp_issuer" expected to be of type "string"';
    {
      idp_issuer: converted,
    }
  ),
  '#with_inline_hook_id':: 'Saml Inline Hook setting',
  with_inline_hook_id(value):: (
    local converted = value;
    assert std.isString(converted) : '"inline_hook_id" expected to be of type "string"';
    {
      inline_hook_id: converted,
    }
  ),
  '#with_key_id':: 'Certificate ID',
  with_key_id(value):: (
    local converted = value;
    assert std.isString(converted) : '"key_id" expected to be of type "string"';
    {
      key_id: converted,
    }
  ),
  '#with_label':: "The label of the app to retrieve, conflicts with label_prefix and id. Label  \t\t\t\tuses the ?q=<label> query parameter exposed by Okta's API. It should be noted that at this time  \t\t\t\tthis searches both name and label. This is used to avoid paginating through all applications.",
  with_label(value):: (
    local converted = value;
    assert std.isString(converted) : '"label" expected to be of type "string"';
    {
      label: converted,
    }
  ),
  '#with_label_prefix':: 'Label prefix of the app to retrieve, conflicts with label and id. This will tell the \t\t\t\tprovider to do a starts with query as opposed to an equals query.',
  with_label_prefix(value):: (
    local converted = value;
    assert std.isString(converted) : '"label_prefix" expected to be of type "string"';
    {
      label_prefix: converted,
    }
  ),
  '#with_links':: 'Discoverable resources related to the app',
  with_links(value):: (
    local converted = value;
    assert std.isString(converted) : '"links" expected to be of type "string"';
    {
      links: converted,
    }
  ),
  '#with_name':: 'Name of application.',
  with_name(value):: (
    local converted = value;
    assert std.isString(converted) : '"name" expected to be of type "string"';
    {
      name: converted,
    }
  ),
  '#with_recipient':: 'The location where the app may present the SAML assertion',
  with_recipient(value):: (
    local converted = value;
    assert std.isString(converted) : '"recipient" expected to be of type "string"';
    {
      recipient: converted,
    }
  ),
  '#with_request_compressed':: 'Denotes whether the request is compressed or not.',
  with_request_compressed(value):: (
    local converted = value;
    assert std.isBoolean(converted) : '"request_compressed" expected to be of type "bool"';
    {
      request_compressed: converted,
    }
  ),
  '#with_response_signed':: 'Determines whether the SAML auth response message is digitally signed',
  with_response_signed(value):: (
    local converted = value;
    assert std.isBoolean(converted) : '"response_signed" expected to be of type "bool"';
    {
      response_signed: converted,
    }
  ),
  '#with_saml_signed_request_enabled':: 'SAML Signed Request enabled',
  with_saml_signed_request_enabled(value):: (
    local converted = value;
    assert std.isBoolean(converted) : '"saml_signed_request_enabled" expected to be of type "bool"';
    {
      saml_signed_request_enabled: converted,
    }
  ),
  '#with_signature_algorithm':: 'Signature algorithm used to digitally sign the assertion and response',
  with_signature_algorithm(value):: (
    local converted = value;
    assert std.isString(converted) : '"signature_algorithm" expected to be of type "string"';
    {
      signature_algorithm: converted,
    }
  ),
  '#with_single_logout_certificate':: 'x509 encoded certificate that the Service Provider uses to sign Single Logout requests',
  with_single_logout_certificate(value):: (
    local converted = value;
    assert std.isString(converted) : '"single_logout_certificate" expected to be of type "string"';
    {
      single_logout_certificate: converted,
    }
  ),
  '#with_single_logout_issuer':: 'The issuer of the Service Provider that generates the Single Logout request',
  with_single_logout_issuer(value):: (
    local converted = value;
    assert std.isString(converted) : '"single_logout_issuer" expected to be of type "string"';
    {
      single_logout_issuer: converted,
    }
  ),
  '#with_single_logout_url':: 'The location where the logout response is sent',
  with_single_logout_url(value):: (
    local converted = value;
    assert std.isString(converted) : '"single_logout_url" expected to be of type "string"';
    {
      single_logout_url: converted,
    }
  ),
  '#with_skip_groups':: "Ignore groups sync. This is a temporary solution until 'groups' field is supported in all the app-like resources",
  with_skip_groups(value):: (
    local converted = value;
    assert std.isBoolean(converted) : '"skip_groups" expected to be of type "bool"';
    {
      skip_groups: converted,
    }
  ),
  '#with_skip_users':: "Ignore users sync. This is a temporary solution until 'users' field is supported in all the app-like resources",
  with_skip_users(value):: (
    local converted = value;
    assert std.isBoolean(converted) : '"skip_users" expected to be of type "bool"';
    {
      skip_users: converted,
    }
  ),
  '#with_sp_issuer':: 'SAML SP issuer ID',
  with_sp_issuer(value):: (
    local converted = value;
    assert std.isString(converted) : '"sp_issuer" expected to be of type "string"';
    {
      sp_issuer: converted,
    }
  ),
  '#with_sso_url':: 'Single Sign On URL',
  with_sso_url(value):: (
    local converted = value;
    assert std.isString(converted) : '"sso_url" expected to be of type "string"';
    {
      sso_url: converted,
    }
  ),
  '#with_status':: 'Status of application.',
  with_status(value):: (
    local converted = value;
    assert std.isString(converted) : '"status" expected to be of type "string"';
    {
      status: converted,
    }
  ),
  '#with_subject_name_id_format':: 'Identifies the SAML processing rules.',
  with_subject_name_id_format(value):: (
    local converted = value;
    assert std.isString(converted) : '"subject_name_id_format" expected to be of type "string"';
    {
      subject_name_id_format: converted,
    }
  ),
  '#with_subject_name_id_template':: "Template for app user's username when a user is assigned to the app",
  with_subject_name_id_template(value):: (
    local converted = value;
    assert std.isString(converted) : '"subject_name_id_template" expected to be of type "string"';
    {
      subject_name_id_template: converted,
    }
  ),
  '#with_user_name_template':: 'Username template',
  with_user_name_template(value):: (
    local converted = value;
    assert std.isString(converted) : '"user_name_template" expected to be of type "string"';
    {
      user_name_template: converted,
    }
  ),
  '#with_user_name_template_push_status':: 'Push username on update',
  with_user_name_template_push_status(value):: (
    local converted = value;
    assert std.isString(converted) : '"user_name_template_push_status" expected to be of type "string"';
    {
      user_name_template_push_status: converted,
    }
  ),
  '#with_user_name_template_suffix':: 'Username template suffix',
  with_user_name_template_suffix(value):: (
    local converted = value;
    assert std.isString(converted) : '"user_name_template_suffix" expected to be of type "string"';
    {
      user_name_template_suffix: converted,
    }
  ),
  '#with_user_name_template_type':: 'Username template type',
  with_user_name_template_type(value):: (
    local converted = value;
    assert std.isString(converted) : '"user_name_template_type" expected to be of type "string"';
    {
      user_name_template_type: converted,
    }
  ),
  '#with_users':: 'Users associated with the application',
  with_users(value):: (
    local converted = if std.isArray(value) then value else [value];
    assert (std.isArray(converted) && std.length(std.set(converted)) == std.length(converted)) : '"users" expected to be of type "set"';
    {
      users: converted,
    }
  ),
  '#with_users_mixin':: 'Users associated with the application',
  with_users_mixin(value):: (
    local converted = if std.isArray(value) then value else [value];
    assert (std.isArray(converted) && std.length(std.set(converted)) == std.length(converted)) : '"users" expected to be of type "set"';
    {
      users+: converted,
    }
  ),
}
