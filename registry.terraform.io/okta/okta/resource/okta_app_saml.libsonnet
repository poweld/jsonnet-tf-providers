{
  local block = self,
  new(label):: (
    {}
    + block.with_label(label)
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
  '#with_accessibility_self_service':: 'Enable self service. Default is `false`',
  with_accessibility_self_service(value):: (
    local converted = value;
    assert std.isBoolean(converted) : '"accessibility_self_service" expected to be of type "bool"';
    {
      accessibility_self_service: converted,
    }
  ),
  '#with_acs_endpoints':: 'An array of ACS endpoints. You can configure a maximum of 100 endpoints.',
  with_acs_endpoints(value):: (
    local converted = if std.isArray(value) then value else [value];
    assert std.isArray(converted) : '"acs_endpoints" expected to be of type "list"';
    {
      acs_endpoints: converted,
    }
  ),
  '#with_acs_endpoints_mixin':: 'An array of ACS endpoints. You can configure a maximum of 100 endpoints.',
  with_acs_endpoints_mixin(value):: (
    local converted = if std.isArray(value) then value else [value];
    assert std.isArray(converted) : '"acs_endpoints" expected to be of type "list"';
    {
      acs_endpoints+: converted,
    }
  ),
  '#with_admin_note':: 'Application notes for admins.',
  with_admin_note(value):: (
    local converted = value;
    assert std.isString(converted) : '"admin_note" expected to be of type "string"';
    {
      admin_note: converted,
    }
  ),
  '#with_app_links_json':: 'Displays specific appLinks for the app. The value for each application link should be boolean.',
  with_app_links_json(value):: (
    local converted = value;
    assert std.isString(converted) : '"app_links_json" expected to be of type "string"';
    {
      app_links_json: converted,
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
  '#with_audience':: 'Audience Restriction',
  with_audience(value):: (
    local converted = value;
    assert std.isString(converted) : '"audience" expected to be of type "string"';
    {
      audience: converted,
    }
  ),
  '#with_authentication_policy':: 'The ID of the associated `app_signon_policy`. If this property is removed from the application the `default` sign-on-policy will be associated with this application.y',
  with_authentication_policy(value):: (
    local converted = value;
    assert std.isString(converted) : '"authentication_policy" expected to be of type "string"';
    {
      authentication_policy: converted,
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
  '#with_auto_submit_toolbar':: 'Display auto submit toolbar. Default is: `false`',
  with_auto_submit_toolbar(value):: (
    local converted = value;
    assert std.isBoolean(converted) : '"auto_submit_toolbar" expected to be of type "bool"';
    {
      auto_submit_toolbar: converted,
    }
  ),
  '#with_certificate':: 'cert from SAML XML metadata payload',
  with_certificate(value):: (
    local converted = value;
    assert std.isString(converted) : '"certificate" expected to be of type "string"';
    {
      certificate: converted,
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
  '#with_embed_url':: 'The url that can be used to embed this application in other portals.',
  with_embed_url(value):: (
    local converted = value;
    assert std.isString(converted) : '"embed_url" expected to be of type "string"';
    {
      embed_url: converted,
    }
  ),
  '#with_enduser_note':: 'Application notes for end users.',
  with_enduser_note(value):: (
    local converted = value;
    assert std.isString(converted) : '"enduser_note" expected to be of type "string"';
    {
      enduser_note: converted,
    }
  ),
  '#with_entity_key':: 'Entity ID, the ID portion of the entity_url',
  with_entity_key(value):: (
    local converted = value;
    assert std.isString(converted) : '"entity_key" expected to be of type "string"';
    {
      entity_key: converted,
    }
  ),
  '#with_entity_url':: 'Entity URL for instance http://www.okta.com/exk1fcia6d6EMsf331d8',
  with_entity_url(value):: (
    local converted = value;
    assert std.isString(converted) : '"entity_url" expected to be of type "string"';
    {
      entity_url: converted,
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
  '#with_honor_force_authn':: 'Prompt user to re-authenticate if SP asks for it. Default is: `false`',
  with_honor_force_authn(value):: (
    local converted = value;
    assert std.isBoolean(converted) : '"honor_force_authn" expected to be of type "bool"';
    {
      honor_force_authn: converted,
    }
  ),
  '#with_http_post_binding':: 'urn:oasis:names:tc:SAML:2.0:bindings:HTTP-Post location from the SAML metadata.',
  with_http_post_binding(value):: (
    local converted = value;
    assert std.isString(converted) : '"http_post_binding" expected to be of type "string"';
    {
      http_post_binding: converted,
    }
  ),
  '#with_http_redirect_binding':: 'urn:oasis:names:tc:SAML:2.0:bindings:HTTP-Redirect location from the SAML metadata.',
  with_http_redirect_binding(value):: (
    local converted = value;
    assert std.isString(converted) : '"http_redirect_binding" expected to be of type "string"';
    {
      http_redirect_binding: converted,
    }
  ),
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
  '#with_implicit_assignment':: '*Early Access Property*. Enable Federation Broker Mode.',
  with_implicit_assignment(value):: (
    local converted = value;
    assert std.isBoolean(converted) : '"implicit_assignment" expected to be of type "bool"';
    {
      implicit_assignment: converted,
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
  '#with_key_name':: 'Certificate name. This modulates the rotation of keys. New name == new key. Required to be set with `key_years_valid`',
  with_key_name(value):: (
    local converted = value;
    assert std.isString(converted) : '"key_name" expected to be of type "string"';
    {
      key_name: converted,
    }
  ),
  '#with_key_years_valid':: 'Number of years the certificate is valid (2 - 10 years).',
  with_key_years_valid(value):: (
    local converted = value;
    assert std.isNumber(converted) : '"key_years_valid" expected to be of type "number"';
    {
      key_years_valid: converted,
    }
  ),
  '#with_keys':: 'Application keys',
  with_keys(value):: (
    local converted = if std.isArray(value) then value else [value];
    assert std.isArray(converted) : '"keys" expected to be of type "list"';
    {
      keys: converted,
    }
  ),
  '#with_keys_mixin':: 'Application keys',
  with_keys_mixin(value):: (
    local converted = if std.isArray(value) then value else [value];
    assert std.isArray(converted) : '"keys" expected to be of type "list"';
    {
      keys+: converted,
    }
  ),
  '#with_label':: "The Application's display name.",
  with_label(value):: (
    local converted = value;
    assert std.isString(converted) : '"label" expected to be of type "string"';
    {
      label: converted,
    }
  ),
  '#with_logo':: 'Local file path to the logo. The file must be in PNG, JPG, or GIF format, and less than 1 MB in size.',
  with_logo(value):: (
    local converted = value;
    assert std.isString(converted) : '"logo" expected to be of type "string"';
    {
      logo: converted,
    }
  ),
  '#with_logo_url':: "URL of the application's logo",
  with_logo_url(value):: (
    local converted = value;
    assert std.isString(converted) : '"logo_url" expected to be of type "string"';
    {
      logo_url: converted,
    }
  ),
  '#with_metadata':: 'SAML xml metadata payload',
  with_metadata(value):: (
    local converted = value;
    assert std.isString(converted) : '"metadata" expected to be of type "string"';
    {
      metadata: converted,
    }
  ),
  '#with_metadata_url':: 'SAML xml metadata URL',
  with_metadata_url(value):: (
    local converted = value;
    assert std.isString(converted) : '"metadata_url" expected to be of type "string"';
    {
      metadata_url: converted,
    }
  ),
  '#with_name':: 'Name of the app.',
  with_name(value):: (
    local converted = value;
    assert std.isString(converted) : '"name" expected to be of type "string"';
    {
      name: converted,
    }
  ),
  '#with_preconfigured_app':: "Name of application from the Okta Integration Network. For instance 'slack'. If not included a custom app will be created.  If not provided the following arguments are required: 'sso_url' 'recipient' 'destination' 'audience' 'subject_name_id_template' 'subject_name_id_format' 'signature_algorithm' 'digest_algorithm' 'authn_context_class_ref'",
  with_preconfigured_app(value):: (
    local converted = value;
    assert std.isString(converted) : '"preconfigured_app" expected to be of type "string"';
    {
      preconfigured_app: converted,
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
  '#with_saml_version':: "SAML version for the app's sign-on mode. Valid values are: `2.0` or `1.1`. Default is `2.0`",
  with_saml_version(value):: (
    local converted = value;
    assert std.isString(converted) : '"saml_version" expected to be of type "string"';
    {
      saml_version: converted,
    }
  ),
  '#with_sign_on_mode':: 'Sign on mode of application.',
  with_sign_on_mode(value):: (
    local converted = value;
    assert std.isString(converted) : '"sign_on_mode" expected to be of type "string"';
    {
      sign_on_mode: converted,
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
  '#with_single_logout_certificate':: 'x509 encoded certificate that the Service Provider uses to sign Single Logout requests. Note: should be provided without `-----BEGIN CERTIFICATE-----` and `-----END CERTIFICATE-----`, see [official documentation](https://developer.okta.com/docs/reference/api/apps/#service-provider-certificate).',
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
  '#with_status':: 'Status of application. By default, it is `ACTIVE`',
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
  '#with_user_name_template':: 'Username template. Default: `${source.login}`',
  with_user_name_template(value):: (
    local converted = value;
    assert std.isString(converted) : '"user_name_template" expected to be of type "string"';
    {
      user_name_template: converted,
    }
  ),
  '#with_user_name_template_push_status':: 'Push username on update. Valid values: `PUSH` and `DONT_PUSH`',
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
  '#with_user_name_template_type':: 'Username template type. Default: `BUILT_IN`',
  with_user_name_template_type(value):: (
    local converted = value;
    assert std.isString(converted) : '"user_name_template_type" expected to be of type "string"';
    {
      user_name_template_type: converted,
    }
  ),
  acs_endpoints_indices:: {
    local block = self,
    new(index, url):: (
      {}
      + block.with_index(index)
      + block.with_url(url)
    ),
    with_index(value):: (
      local converted = value;
      assert std.isNumber(converted) : '"index" expected to be of type "number"';
      {
        index: converted,
      }
    ),
    with_url(value):: (
      local converted = value;
      assert std.isString(converted) : '"url" expected to be of type "string"';
      {
        url: converted,
      }
    ),
  },
  attribute_statements:: {
    local block = self,
    new(name):: (
      {}
      + block.with_name(name)
    ),
    '#with_filter_type':: 'Type of group attribute filter. Valid values are: `STARTS_WITH`, `EQUALS`, `CONTAINS`, or `REGEX`',
    with_filter_type(value):: (
      local converted = value;
      assert std.isString(converted) : '"filter_type" expected to be of type "string"';
      {
        filter_type: converted,
      }
    ),
    '#with_filter_value':: 'Filter value to use',
    with_filter_value(value):: (
      local converted = value;
      assert std.isString(converted) : '"filter_value" expected to be of type "string"';
      {
        filter_value: converted,
      }
    ),
    '#with_name':: 'The reference name of the attribute statement',
    with_name(value):: (
      local converted = value;
      assert std.isString(converted) : '"name" expected to be of type "string"';
      {
        name: converted,
      }
    ),
    '#with_namespace':: 'The attribute namespace. It can be set to `urn:oasis:names:tc:SAML:2.0:attrname-format:unspecified`, `urn:oasis:names:tc:SAML:2.0:attrname-format:uri`, or `urn:oasis:names:tc:SAML:2.0:attrname-format:basic`',
    with_namespace(value):: (
      local converted = value;
      assert std.isString(converted) : '"namespace" expected to be of type "string"';
      {
        namespace: converted,
      }
    ),
    '#with_type':: 'The type of attribute statements object',
    with_type(value):: (
      local converted = value;
      assert std.isString(converted) : '"type" expected to be of type "string"';
      {
        type: converted,
      }
    ),
    with_values(value):: (
      local converted = if std.isArray(value) then value else [value];
      assert std.isArray(converted) : '"values" expected to be of type "list"';
      {
        values: converted,
      }
    ),
    with_values_mixin(value):: (
      local converted = if std.isArray(value) then value else [value];
      assert std.isArray(converted) : '"values" expected to be of type "list"';
      {
        values+: converted,
      }
    ),
  },
  timeouts:: {
    local block = self,
    new():: (
      {}
    ),
    with_create(value):: (
      local converted = value;
      assert std.isString(converted) : '"create" expected to be of type "string"';
      {
        create: converted,
      }
    ),
    with_read(value):: (
      local converted = value;
      assert std.isString(converted) : '"read" expected to be of type "string"';
      {
        read: converted,
      }
    ),
    with_update(value):: (
      local converted = value;
      assert std.isString(converted) : '"update" expected to be of type "string"';
      {
        update: converted,
      }
    ),
  },
  with_acs_endpoints_indices(value):: (
    local converted = if std.isArray(value) then value else [value];
    {
      acs_endpoints_indices: value,
    }
  ),
  with_attribute_statements(value):: (
    local converted = if std.isArray(value) then value else [value];
    {
      attribute_statements: value,
    }
  ),
  with_timeouts(value):: (
    local converted = value;
    {
      timeouts: value,
    }
  ),
  with_acs_endpoints_indices_mixin(value):: (
    local converted = if std.isArray(value) then value else [value];
    {
      acs_endpoints_indices+: converted,
    }
  ),
  with_attribute_statements_mixin(value):: (
    local converted = if std.isArray(value) then value else [value];
    {
      attribute_statements+: converted,
    }
  ),
}
