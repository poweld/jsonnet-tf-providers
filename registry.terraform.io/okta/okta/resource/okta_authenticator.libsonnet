{
  local block = self,
  new(key, name):: (
    {
      terraformObject:: "okta_authenticator",
      terraformType:: "resource",
    }
    + block.withKey(key)
    + block.withName(name)
  ),
  withId(value):: (
    local converted = value;
    assert std.isString(converted) : '"id" expected to be of type "string"';
    {
      id: converted,
    }
  ),
  "#withKey":: "A human-readable string that identifies the authenticator. Some authenticators are available by feature flag on the organization. Possible values inclue: `duo`, `external_idp`, `google_otp`, `okta_email`, `okta_password`, `okta_verify`, `onprem_mfa`, `phone_number`, `rsa_token`, `security_question`, `webauthn`",
  withKey(value):: (
    local converted = value;
    assert std.isString(converted) : '"key" expected to be of type "string"';
    {
      key: converted,
    }
  ),
  "#withLegacyIgnoreName":: "Name does not trigger change detection (legacy behavior)",
  withLegacyIgnoreName(value):: (
    local converted = value;
    assert std.isBoolean(converted) : '"legacy_ignore_name" expected to be of type "bool"';
    {
      legacy_ignore_name: converted,
    }
  ),
  "#withName":: "Display name of the Authenticator",
  withName(value):: (
    local converted = value;
    assert std.isString(converted) : '"name" expected to be of type "string"';
    {
      name: converted,
    }
  ),
  "#withProviderAuthPort":: "The RADIUS server port (for example 1812). This is defined when the On-Prem RADIUS server is configured. Used only for authenticators with type `security_key`.  Conflicts with `provider_json` argument.",
  withProviderAuthPort(value):: (
    local converted = value;
    assert std.isNumber(converted) : '"provider_auth_port" expected to be of type "number"';
    {
      provider_auth_port: converted,
    }
  ),
  "#withProviderHost":: "(DUO specific) - The Duo Security API hostname. Conflicts with `provider_json` argument.",
  withProviderHost(value):: (
    local converted = value;
    assert std.isString(converted) : '"provider_host" expected to be of type "string"';
    {
      provider_host: converted,
    }
  ),
  "#withProviderHostname":: "Server host name or IP address. Default is `localhost`. Used only for authenticators with type `security_key`. Conflicts with `provider_json` argument.",
  withProviderHostname(value):: (
    local converted = value;
    assert std.isString(converted) : '"provider_hostname" expected to be of type "string"';
    {
      provider_hostname: converted,
    }
  ),
  "#withProviderInstanceId":: "App Instance ID.",
  withProviderInstanceId(value):: (
    local converted = value;
    assert std.isString(converted) : '"provider_instance_id" expected to be of type "string"';
    {
      provider_instance_id: converted,
    }
  ),
  "#withProviderIntegrationKey":: "(DUO specific) - The Duo Security integration key.  Conflicts with `provider_json` argument.",
  withProviderIntegrationKey(value):: (
    local converted = value;
    assert std.isString(converted) : '"provider_integration_key" expected to be of type "string"';
    {
      provider_integration_key: converted,
    }
  ),
  "#withProviderJson":: "Provider JSON allows for expressive providervalues. This argument conflicts with the other 'provider_xxx' arguments. The [CreateProvider](https://developer.okta.com/docs/reference/api/authenticators-admin/#request) illustrates detailed provider values for a Duo authenticator. [Provider values](https://developer.okta.com/docs/reference/api/authenticators-admin/#authenticators-administration-api-object)are listed in Okta API.",
  withProviderJson(value):: (
    local converted = value;
    assert std.isString(converted) : '"provider_json" expected to be of type "string"';
    {
      provider_json: converted,
    }
  ),
  "#withProviderSecretKey":: "(DUO specific) - The Duo Security secret key.  Conflicts with `provider_json` argument.",
  withProviderSecretKey(value):: (
    local converted = value;
    assert std.isString(converted) : '"provider_secret_key" expected to be of type "string"';
    {
      provider_secret_key: converted,
    }
  ),
  "#withProviderSharedSecret":: "An authentication key that must be defined when the RADIUS server is configured, and must be the same on both the RADIUS client and server. Used only for authenticators with type `security_key`. Conflicts with `provider_json` argument.",
  withProviderSharedSecret(value):: (
    local converted = value;
    assert std.isString(converted) : '"provider_shared_secret" expected to be of type "string"';
    {
      provider_shared_secret: converted,
    }
  ),
  "#withProviderType":: "Provider type. Supported value for Duo: `DUO`. Supported value for Custom App: `PUSH`",
  withProviderType(value):: (
    local converted = value;
    assert std.isString(converted) : '"provider_type" expected to be of type "string"';
    {
      provider_type: converted,
    }
  ),
  "#withProviderUserNameTemplate":: "Username template expected by the provider. Used only for authenticators with type `security_key`.  Conflicts with `provider_json` argument.",
  withProviderUserNameTemplate(value):: (
    local converted = value;
    assert std.isString(converted) : '"provider_user_name_template" expected to be of type "string"';
    {
      provider_user_name_template: converted,
    }
  ),
  "#withSettings":: "Settings for the authenticator. The settings JSON contains values based on Authenticator key. It is not used for authenticators with type `security_key`",
  withSettings(value):: (
    local converted = value;
    assert std.isString(converted) : '"settings" expected to be of type "string"';
    {
      settings: converted,
    }
  ),
  "#withStatus":: "Authenticator status: `ACTIVE` or `INACTIVE`. Default: `ACTIVE`",
  withStatus(value):: (
    local converted = value;
    assert std.isString(converted) : '"status" expected to be of type "string"';
    {
      status: converted,
    }
  ),
  "#withType":: "he type of Authenticator. Values include: `password`, `security_question`, `phone`, `email`, `app`, `federated`, and `security_key`.",
  withType(value):: (
    local converted = value;
    assert std.isString(converted) : '"type" expected to be of type "string"';
    {
      type: converted,
    }
  ),
}
