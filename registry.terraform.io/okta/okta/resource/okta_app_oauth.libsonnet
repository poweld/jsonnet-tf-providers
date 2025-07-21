{
  local block = self,
  new(label, type):: (
    {}
    + block.with_label(label)
    + block.with_type(type)
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
  '#with_authentication_policy':: 'The ID of the associated app_signon_policy. If this property is removed from the application, the default sign-on-policy will be associated with this application. From now on, there is no need to attach authentication_policy for applications of type SERVICE',
  with_authentication_policy(value):: (
    local converted = value;
    assert std.isString(converted) : '"authentication_policy" expected to be of type "string"';
    {
      authentication_policy: converted,
    }
  ),
  '#with_auto_key_rotation':: "Requested key rotation mode. If \t\t\t\tauto_key_rotation isn't specified, the client automatically opts in for Okta's \t\t\t\tkey rotation. You can update this property via the API or via the administrator \t\t\t\tUI. \t\t\t\tSee: https://developer.okta.com/docs/reference/api/apps/#oauth-credential-object'",
  with_auto_key_rotation(value):: (
    local converted = value;
    assert std.isBoolean(converted) : '"auto_key_rotation" expected to be of type "bool"';
    {
      auto_key_rotation: converted,
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
  '#with_client_basic_secret':: 'The user provided OAuth client secret key value, this can be set when token_endpoint_auth_method is client_secret_basic. This does nothing when `omit_secret is set to true.',
  with_client_basic_secret(value):: (
    local converted = value;
    assert std.isString(converted) : '"client_basic_secret" expected to be of type "string"';
    {
      client_basic_secret: converted,
    }
  ),
  '#with_client_id':: 'OAuth client ID. If set during creation, app is created with this id.',
  with_client_id(value):: (
    local converted = value;
    assert std.isString(converted) : '"client_id" expected to be of type "string"';
    {
      client_id: converted,
    }
  ),
  '#with_client_secret':: 'OAuth client secret value, this is output only. This will be in plain text in your statefile unless you set omit_secret above.',
  with_client_secret(value):: (
    local converted = value;
    assert std.isString(converted) : '"client_secret" expected to be of type "string"';
    {
      client_secret: converted,
    }
  ),
  '#with_client_uri':: 'URI to a web page providing information about the client.',
  with_client_uri(value):: (
    local converted = value;
    assert std.isString(converted) : '"client_uri" expected to be of type "string"';
    {
      client_uri: converted,
    }
  ),
  '#with_consent_method':: '*Early Access Property*. Indicates whether user consent is required or implicit. Valid values: REQUIRED, TRUSTED. Default value is TRUSTED',
  with_consent_method(value):: (
    local converted = value;
    assert std.isString(converted) : '"consent_method" expected to be of type "string"';
    {
      consent_method: converted,
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
  '#with_grant_types':: 'List of OAuth 2.0 grant types. Conditional validation params found here https://developer.okta.com/docs/api/resources/apps#credentials-settings-details. Defaults to minimum requirements per app type.',
  with_grant_types(value):: (
    local converted = if std.isArray(value) then value else [value];
    assert (std.isArray(converted) && std.length(std.set(converted)) == std.length(converted)) : '"grant_types" expected to be of type "set"';
    {
      grant_types: converted,
    }
  ),
  '#with_grant_types_mixin':: 'List of OAuth 2.0 grant types. Conditional validation params found here https://developer.okta.com/docs/api/resources/apps#credentials-settings-details. Defaults to minimum requirements per app type.',
  with_grant_types_mixin(value):: (
    local converted = if std.isArray(value) then value else [value];
    assert (std.isArray(converted) && std.length(std.set(converted)) == std.length(converted)) : '"grant_types" expected to be of type "set"';
    {
      grant_types+: converted,
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
  with_id(value):: (
    local converted = value;
    assert std.isString(converted) : '"id" expected to be of type "string"';
    {
      id: converted,
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
  '#with_issuer_mode':: '*Early Access Property*. Indicates whether the Okta Authorization Server uses the original Okta org domain URL or a custom domain URL as the issuer of ID token for this client.',
  with_issuer_mode(value):: (
    local converted = value;
    assert std.isString(converted) : '"issuer_mode" expected to be of type "string"';
    {
      issuer_mode: converted,
    }
  ),
  '#with_jwks_uri':: 'URL reference to JWKS',
  with_jwks_uri(value):: (
    local converted = value;
    assert std.isString(converted) : '"jwks_uri" expected to be of type "string"';
    {
      jwks_uri: converted,
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
  '#with_login_mode':: 'The type of Idp-Initiated login that the client supports, if any',
  with_login_mode(value):: (
    local converted = value;
    assert std.isString(converted) : '"login_mode" expected to be of type "string"';
    {
      login_mode: converted,
    }
  ),
  '#with_login_scopes':: 'List of scopes to use for the request',
  with_login_scopes(value):: (
    local converted = if std.isArray(value) then value else [value];
    assert (std.isArray(converted) && std.length(std.set(converted)) == std.length(converted)) : '"login_scopes" expected to be of type "set"';
    {
      login_scopes: converted,
    }
  ),
  '#with_login_scopes_mixin':: 'List of scopes to use for the request',
  with_login_scopes_mixin(value):: (
    local converted = if std.isArray(value) then value else [value];
    assert (std.isArray(converted) && std.length(std.set(converted)) == std.length(converted)) : '"login_scopes" expected to be of type "set"';
    {
      login_scopes+: converted,
    }
  ),
  '#with_login_uri':: 'URI that initiates login.',
  with_login_uri(value):: (
    local converted = value;
    assert std.isString(converted) : '"login_uri" expected to be of type "string"';
    {
      login_uri: converted,
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
  '#with_logo_uri':: 'URI that references a logo for the client.',
  with_logo_uri(value):: (
    local converted = value;
    assert std.isString(converted) : '"logo_uri" expected to be of type "string"';
    {
      logo_uri: converted,
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
  '#with_name':: 'Name of the app.',
  with_name(value):: (
    local converted = value;
    assert std.isString(converted) : '"name" expected to be of type "string"';
    {
      name: converted,
    }
  ),
  '#with_omit_secret':: 'This tells the provider not manage the client_secret value in state. When this is false (the default), it will cause the auto-generated client_secret to be persisted in the client_secret attribute in state. This also means that every time an update to this app is run, this value is also set on the API. If this changes from false => true, the `client_secret` is dropped from state and the secret at the time of the apply is what remains. If this is ever changes from true => false your app will be recreated, due to the need to regenerate a secret we can store in state.',
  with_omit_secret(value):: (
    local converted = value;
    assert std.isBoolean(converted) : '"omit_secret" expected to be of type "bool"';
    {
      omit_secret: converted,
    }
  ),
  '#with_pkce_required':: 'Require Proof Key for Code Exchange (PKCE) for additional verification key rotation mode. See: https://developer.okta.com/docs/reference/api/apps/#oauth-credential-object',
  with_pkce_required(value):: (
    local converted = value;
    assert std.isBoolean(converted) : '"pkce_required" expected to be of type "bool"';
    {
      pkce_required: converted,
    }
  ),
  '#with_policy_uri':: 'URI to web page providing client policy document.',
  with_policy_uri(value):: (
    local converted = value;
    assert std.isString(converted) : '"policy_uri" expected to be of type "string"';
    {
      policy_uri: converted,
    }
  ),
  '#with_post_logout_redirect_uris':: 'List of URIs for redirection after logout. Note: see okta_app_oauth_post_logout_redirect_uri for appending to this list in a decentralized way.',
  with_post_logout_redirect_uris(value):: (
    local converted = if std.isArray(value) then value else [value];
    assert (std.isArray(converted) && std.length(std.set(converted)) == std.length(converted)) : '"post_logout_redirect_uris" expected to be of type "set"';
    {
      post_logout_redirect_uris: converted,
    }
  ),
  '#with_post_logout_redirect_uris_mixin':: 'List of URIs for redirection after logout. Note: see okta_app_oauth_post_logout_redirect_uri for appending to this list in a decentralized way.',
  with_post_logout_redirect_uris_mixin(value):: (
    local converted = if std.isArray(value) then value else [value];
    assert (std.isArray(converted) && std.length(std.set(converted)) == std.length(converted)) : '"post_logout_redirect_uris" expected to be of type "set"';
    {
      post_logout_redirect_uris+: converted,
    }
  ),
  '#with_profile':: "Custom JSON that represents an OAuth application's profile",
  with_profile(value):: (
    local converted = value;
    assert std.isString(converted) : '"profile" expected to be of type "string"';
    {
      profile: converted,
    }
  ),
  '#with_redirect_uris':: 'List of URIs for use in the redirect-based flow. This is required for all application types except service. Note: see okta_app_oauth_redirect_uri for appending to this list in a decentralized way.',
  with_redirect_uris(value):: (
    local converted = if std.isArray(value) then value else [value];
    assert std.isArray(converted) : '"redirect_uris" expected to be of type "list"';
    {
      redirect_uris: converted,
    }
  ),
  '#with_redirect_uris_mixin':: 'List of URIs for use in the redirect-based flow. This is required for all application types except service. Note: see okta_app_oauth_redirect_uri for appending to this list in a decentralized way.',
  with_redirect_uris_mixin(value):: (
    local converted = if std.isArray(value) then value else [value];
    assert std.isArray(converted) : '"redirect_uris" expected to be of type "list"';
    {
      redirect_uris+: converted,
    }
  ),
  '#with_refresh_token_leeway':: '*Early Access Property* Grace period for token rotation, required with grant types refresh_token',
  with_refresh_token_leeway(value):: (
    local converted = value;
    assert std.isNumber(converted) : '"refresh_token_leeway" expected to be of type "number"';
    {
      refresh_token_leeway: converted,
    }
  ),
  '#with_refresh_token_rotation':: '*Early Access Property* Refresh token rotation behavior, required with grant types refresh_token',
  with_refresh_token_rotation(value):: (
    local converted = value;
    assert std.isString(converted) : '"refresh_token_rotation" expected to be of type "string"';
    {
      refresh_token_rotation: converted,
    }
  ),
  '#with_response_types':: 'List of OAuth 2.0 response type strings. Valid values are any combination of: `code`, `token`, and `id_token`.',
  with_response_types(value):: (
    local converted = if std.isArray(value) then value else [value];
    assert (std.isArray(converted) && std.length(std.set(converted)) == std.length(converted)) : '"response_types" expected to be of type "set"';
    {
      response_types: converted,
    }
  ),
  '#with_response_types_mixin':: 'List of OAuth 2.0 response type strings. Valid values are any combination of: `code`, `token`, and `id_token`.',
  with_response_types_mixin(value):: (
    local converted = if std.isArray(value) then value else [value];
    assert (std.isArray(converted) && std.length(std.set(converted)) == std.length(converted)) : '"response_types" expected to be of type "set"';
    {
      response_types+: converted,
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
  '#with_status':: 'Status of application. By default, it is `ACTIVE`',
  with_status(value):: (
    local converted = value;
    assert std.isString(converted) : '"status" expected to be of type "string"';
    {
      status: converted,
    }
  ),
  '#with_token_endpoint_auth_method':: "Requested authentication method for the token endpoint, valid values include:  'client_secret_basic', 'client_secret_post', 'client_secret_jwt', 'private_key_jwt', 'none', etc.",
  with_token_endpoint_auth_method(value):: (
    local converted = value;
    assert std.isString(converted) : '"token_endpoint_auth_method" expected to be of type "string"';
    {
      token_endpoint_auth_method: converted,
    }
  ),
  '#with_tos_uri':: 'URI to web page providing client tos (terms of service).',
  with_tos_uri(value):: (
    local converted = value;
    assert std.isString(converted) : '"tos_uri" expected to be of type "string"';
    {
      tos_uri: converted,
    }
  ),
  '#with_type':: 'The type of client application.',
  with_type(value):: (
    local converted = value;
    assert std.isString(converted) : '"type" expected to be of type "string"';
    {
      type: converted,
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
  '#with_wildcard_redirect':: '*Early Access Property*. Indicates if the client is allowed to use wildcard matching of redirect_uris',
  with_wildcard_redirect(value):: (
    local converted = value;
    assert std.isString(converted) : '"wildcard_redirect" expected to be of type "string"';
    {
      wildcard_redirect: converted,
    }
  ),
  groups_claim:: {
    local block = self,
    new(name, type, value):: (
      {}
      + block.with_name(name)
      + block.with_type(type)
      + block.with_value(value)
    ),
    '#with_filter_type':: 'Groups claim filter. Can only be set if type is FILTER.',
    with_filter_type(value):: (
      local converted = value;
      assert std.isString(converted) : '"filter_type" expected to be of type "string"';
      {
        filter_type: converted,
      }
    ),
    '#with_issuer_mode':: 'Issuer mode inherited from OAuth App',
    with_issuer_mode(value):: (
      local converted = value;
      assert std.isString(converted) : '"issuer_mode" expected to be of type "string"';
      {
        issuer_mode: converted,
      }
    ),
    '#with_name':: 'Name of the claim that will be used in the token.',
    with_name(value):: (
      local converted = value;
      assert std.isString(converted) : '"name" expected to be of type "string"';
      {
        name: converted,
      }
    ),
    '#with_type':: 'Groups claim type.',
    with_type(value):: (
      local converted = value;
      assert std.isString(converted) : '"type" expected to be of type "string"';
      {
        type: converted,
      }
    ),
    '#with_value':: 'Value of the claim. Can be an Okta Expression Language statement that evaluates at the time the token is minted.',
    with_value(value):: (
      local converted = value;
      assert std.isString(converted) : '"value" expected to be of type "string"';
      {
        value: converted,
      }
    ),
  },
  jwks:: {
    local block = self,
    new(kid, kty):: (
      {}
      + block.with_kid(kid)
      + block.with_kty(kty)
    ),
    '#with_e':: 'RSA Exponent',
    with_e(value):: (
      local converted = value;
      assert std.isString(converted) : '"e" expected to be of type "string"';
      {
        e: converted,
      }
    ),
    '#with_kid':: 'Key ID',
    with_kid(value):: (
      local converted = value;
      assert std.isString(converted) : '"kid" expected to be of type "string"';
      {
        kid: converted,
      }
    ),
    '#with_kty':: 'Key type',
    with_kty(value):: (
      local converted = value;
      assert std.isString(converted) : '"kty" expected to be of type "string"';
      {
        kty: converted,
      }
    ),
    '#with_n':: 'RSA Modulus',
    with_n(value):: (
      local converted = value;
      assert std.isString(converted) : '"n" expected to be of type "string"';
      {
        n: converted,
      }
    ),
    '#with_x':: 'X coordinate of the elliptic curve point',
    with_x(value):: (
      local converted = value;
      assert std.isString(converted) : '"x" expected to be of type "string"';
      {
        x: converted,
      }
    ),
    '#with_y':: 'Y coordinate of the elliptic curve point',
    with_y(value):: (
      local converted = value;
      assert std.isString(converted) : '"y" expected to be of type "string"';
      {
        y: converted,
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
  with_groups_claim(value):: (
    local converted = if std.isArray(value) then value else [value];
    {
      groups_claim: value,
    }
  ),
  with_jwks(value):: (
    local converted = if std.isArray(value) then value else [value];
    {
      jwks: value,
    }
  ),
  with_timeouts(value):: (
    local converted = value;
    {
      timeouts: value,
    }
  ),
  with_groups_claim_mixin(value):: (
    local converted = if std.isArray(value) then value else [value];
    {
      groups_claim+: converted,
    }
  ),
  with_jwks_mixin(value):: (
    local converted = if std.isArray(value) then value else [value];
    {
      jwks+: converted,
    }
  ),
}
