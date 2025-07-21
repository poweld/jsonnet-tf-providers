{
  local block = self,
  new(key, name):: (
    {}
    + block.with_key(key)
    + block.with_name(name)
  ),
  with_id(value):: (
    local converted = value;
    assert std.isString(converted) : '"id" expected to be of type "string"';
    {
      id: converted,
    }
  ),
  '#with_key':: 'A human-readable string that identifies the authenticator. Some authenticators are available by feature flag on the organization. Possible values inclue: `duo`, `external_idp`, `google_otp`, `okta_email`, `okta_password`, `okta_verify`, `onprem_mfa`, `phone_number`, `rsa_token`, `security_question`, `webauthn`',
  with_key(value):: (
    local converted = value;
    assert std.isString(converted) : '"key" expected to be of type "string"';
    {
      key: converted,
    }
  ),
  '#with_legacy_ignore_name':: 'Name does not trigger change detection (legacy behavior)',
  with_legacy_ignore_name(value):: (
    local converted = value;
    assert std.isBoolean(converted) : '"legacy_ignore_name" expected to be of type "bool"';
    {
      legacy_ignore_name: converted,
    }
  ),
  '#with_name':: 'Display name of the Authenticator',
  with_name(value):: (
    local converted = value;
    assert std.isString(converted) : '"name" expected to be of type "string"';
    {
      name: converted,
    }
  ),
  '#with_provider_auth_port':: 'The RADIUS server port (for example 1812). This is defined when the On-Prem RADIUS server is configured. Used only for authenticators with type `security_key`.  Conflicts with `provider_json` argument.',
  with_provider_auth_port(value):: (
    local converted = value;
    assert std.isNumber(converted) : '"provider_auth_port" expected to be of type "number"';
    {
      provider_auth_port: converted,
    }
  ),
  '#with_provider_host':: '(DUO specific) - The Duo Security API hostname. Conflicts with `provider_json` argument.',
  with_provider_host(value):: (
    local converted = value;
    assert std.isString(converted) : '"provider_host" expected to be of type "string"';
    {
      provider_host: converted,
    }
  ),
  '#with_provider_hostname':: 'Server host name or IP address. Default is `localhost`. Used only for authenticators with type `security_key`. Conflicts with `provider_json` argument.',
  with_provider_hostname(value):: (
    local converted = value;
    assert std.isString(converted) : '"provider_hostname" expected to be of type "string"';
    {
      provider_hostname: converted,
    }
  ),
  '#with_provider_instance_id':: 'App Instance ID.',
  with_provider_instance_id(value):: (
    local converted = value;
    assert std.isString(converted) : '"provider_instance_id" expected to be of type "string"';
    {
      provider_instance_id: converted,
    }
  ),
  '#with_provider_integration_key':: '(DUO specific) - The Duo Security integration key.  Conflicts with `provider_json` argument.',
  with_provider_integration_key(value):: (
    local converted = value;
    assert std.isString(converted) : '"provider_integration_key" expected to be of type "string"';
    {
      provider_integration_key: converted,
    }
  ),
  '#with_provider_json':: "Provider JSON allows for expressive providervalues. This argument conflicts with the other 'provider_xxx' arguments. The [CreateProvider](https://developer.okta.com/docs/reference/api/authenticators-admin/#request) illustrates detailed provider values for a Duo authenticator. [Provider values](https://developer.okta.com/docs/reference/api/authenticators-admin/#authenticators-administration-api-object)are listed in Okta API.",
  with_provider_json(value):: (
    local converted = value;
    assert std.isString(converted) : '"provider_json" expected to be of type "string"';
    {
      provider_json: converted,
    }
  ),
  '#with_provider_secret_key':: '(DUO specific) - The Duo Security secret key.  Conflicts with `provider_json` argument.',
  with_provider_secret_key(value):: (
    local converted = value;
    assert std.isString(converted) : '"provider_secret_key" expected to be of type "string"';
    {
      provider_secret_key: converted,
    }
  ),
  '#with_provider_shared_secret':: 'An authentication key that must be defined when the RADIUS server is configured, and must be the same on both the RADIUS client and server. Used only for authenticators with type `security_key`. Conflicts with `provider_json` argument.',
  with_provider_shared_secret(value):: (
    local converted = value;
    assert std.isString(converted) : '"provider_shared_secret" expected to be of type "string"';
    {
      provider_shared_secret: converted,
    }
  ),
  '#with_provider_type':: 'Provider type. Supported value for Duo: `DUO`. Supported value for Custom App: `PUSH`',
  with_provider_type(value):: (
    local converted = value;
    assert std.isString(converted) : '"provider_type" expected to be of type "string"';
    {
      provider_type: converted,
    }
  ),
  '#with_provider_user_name_template':: 'Username template expected by the provider. Used only for authenticators with type `security_key`.  Conflicts with `provider_json` argument.',
  with_provider_user_name_template(value):: (
    local converted = value;
    assert std.isString(converted) : '"provider_user_name_template" expected to be of type "string"';
    {
      provider_user_name_template: converted,
    }
  ),
  '#with_settings':: 'Settings for the authenticator. The settings JSON contains values based on Authenticator key. It is not used for authenticators with type `security_key`',
  with_settings(value):: (
    local converted = value;
    assert std.isString(converted) : '"settings" expected to be of type "string"';
    {
      settings: converted,
    }
  ),
  '#with_status':: 'Authenticator status: `ACTIVE` or `INACTIVE`. Default: `ACTIVE`',
  with_status(value):: (
    local converted = value;
    assert std.isString(converted) : '"status" expected to be of type "string"';
    {
      status: converted,
    }
  ),
  '#with_type':: 'he type of Authenticator. Values include: `password`, `security_question`, `phone`, `email`, `app`, `federated`, and `security_key`.',
  with_type(value):: (
    local converted = value;
    assert std.isString(converted) : '"type" expected to be of type "string"';
    {
      type: converted,
    }
  ),
}
