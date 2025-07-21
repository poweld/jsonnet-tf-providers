{
  local block = self,
  new(name):: (
    {}
    + block.with_name(name)
  ),
  '#with_description':: 'Policy Description',
  with_description(value):: (
    local converted = value;
    assert std.isString(converted) : '"description" expected to be of type "string"';
    {
      description: converted,
    }
  ),
  with_duo(value):: (
    local converted = value;
    assert std.isObject(converted) : '"duo" expected to be of type "map"';
    {
      duo: converted,
    }
  ),
  with_external_idp(value):: (
    local converted = value;
    assert std.isObject(converted) : '"external_idp" expected to be of type "map"';
    {
      external_idp: converted,
    }
  ),
  with_external_idps(value):: (
    local converted = if std.isArray(value) then value else [value];
    assert (std.isArray(converted) && std.length(std.set(converted)) == std.length(converted)) : '"external_idps" expected to be of type "set"';
    {
      external_idps: converted,
    }
  ),
  with_external_idps_mixin(value):: (
    local converted = if std.isArray(value) then value else [value];
    assert (std.isArray(converted) && std.length(std.set(converted)) == std.length(converted)) : '"external_idps" expected to be of type "set"';
    {
      external_idps+: converted,
    }
  ),
  with_fido_u2f(value):: (
    local converted = value;
    assert std.isObject(converted) : '"fido_u2f" expected to be of type "map"';
    {
      fido_u2f: converted,
    }
  ),
  with_fido_webauthn(value):: (
    local converted = value;
    assert std.isObject(converted) : '"fido_webauthn" expected to be of type "map"';
    {
      fido_webauthn: converted,
    }
  ),
  with_google_otp(value):: (
    local converted = value;
    assert std.isObject(converted) : '"google_otp" expected to be of type "map"';
    {
      google_otp: converted,
    }
  ),
  '#with_groups_included':: 'List of Group IDs to Include',
  with_groups_included(value):: (
    local converted = if std.isArray(value) then value else [value];
    assert (std.isArray(converted) && std.length(std.set(converted)) == std.length(converted)) : '"groups_included" expected to be of type "set"';
    {
      groups_included: converted,
    }
  ),
  '#with_groups_included_mixin':: 'List of Group IDs to Include',
  with_groups_included_mixin(value):: (
    local converted = if std.isArray(value) then value else [value];
    assert (std.isArray(converted) && std.length(std.set(converted)) == std.length(converted)) : '"groups_included" expected to be of type "set"';
    {
      groups_included+: converted,
    }
  ),
  with_hotp(value):: (
    local converted = value;
    assert std.isObject(converted) : '"hotp" expected to be of type "map"';
    {
      hotp: converted,
    }
  ),
  with_id(value):: (
    local converted = value;
    assert std.isString(converted) : '"id" expected to be of type "string"';
    {
      id: converted,
    }
  ),
  '#with_is_oie':: 'Is the policy using Okta Identity Engine (OIE) with authenticators instead of factors?',
  with_is_oie(value):: (
    local converted = value;
    assert std.isBoolean(converted) : '"is_oie" expected to be of type "bool"';
    {
      is_oie: converted,
    }
  ),
  '#with_name':: 'Policy Name',
  with_name(value):: (
    local converted = value;
    assert std.isString(converted) : '"name" expected to be of type "string"';
    {
      name: converted,
    }
  ),
  with_okta_call(value):: (
    local converted = value;
    assert std.isObject(converted) : '"okta_call" expected to be of type "map"';
    {
      okta_call: converted,
    }
  ),
  with_okta_email(value):: (
    local converted = value;
    assert std.isObject(converted) : '"okta_email" expected to be of type "map"';
    {
      okta_email: converted,
    }
  ),
  with_okta_otp(value):: (
    local converted = value;
    assert std.isObject(converted) : '"okta_otp" expected to be of type "map"';
    {
      okta_otp: converted,
    }
  ),
  with_okta_password(value):: (
    local converted = value;
    assert std.isObject(converted) : '"okta_password" expected to be of type "map"';
    {
      okta_password: converted,
    }
  ),
  with_okta_push(value):: (
    local converted = value;
    assert std.isObject(converted) : '"okta_push" expected to be of type "map"';
    {
      okta_push: converted,
    }
  ),
  with_okta_question(value):: (
    local converted = value;
    assert std.isObject(converted) : '"okta_question" expected to be of type "map"';
    {
      okta_question: converted,
    }
  ),
  with_okta_sms(value):: (
    local converted = value;
    assert std.isObject(converted) : '"okta_sms" expected to be of type "map"';
    {
      okta_sms: converted,
    }
  ),
  with_okta_verify(value):: (
    local converted = value;
    assert std.isObject(converted) : '"okta_verify" expected to be of type "map"';
    {
      okta_verify: converted,
    }
  ),
  with_onprem_mfa(value):: (
    local converted = value;
    assert std.isObject(converted) : '"onprem_mfa" expected to be of type "map"';
    {
      onprem_mfa: converted,
    }
  ),
  with_phone_number(value):: (
    local converted = value;
    assert std.isObject(converted) : '"phone_number" expected to be of type "map"';
    {
      phone_number: converted,
    }
  ),
  '#with_priority':: 'Policy Priority, this attribute can be set to a valid priority. To avoid endless diff situation we error if an invalid priority is provided. API defaults it to the last (lowest) if not there.',
  with_priority(value):: (
    local converted = value;
    assert std.isNumber(converted) : '"priority" expected to be of type "number"';
    {
      priority: converted,
    }
  ),
  with_rsa_token(value):: (
    local converted = value;
    assert std.isObject(converted) : '"rsa_token" expected to be of type "map"';
    {
      rsa_token: converted,
    }
  ),
  with_security_question(value):: (
    local converted = value;
    assert std.isObject(converted) : '"security_question" expected to be of type "map"';
    {
      security_question: converted,
    }
  ),
  with_smart_card_idp(value):: (
    local converted = value;
    assert std.isObject(converted) : '"smart_card_idp" expected to be of type "map"';
    {
      smart_card_idp: converted,
    }
  ),
  '#with_status':: 'Policy Status: `ACTIVE` or `INACTIVE`. Default: `ACTIVE`',
  with_status(value):: (
    local converted = value;
    assert std.isString(converted) : '"status" expected to be of type "string"';
    {
      status: converted,
    }
  ),
  with_symantec_vip(value):: (
    local converted = value;
    assert std.isObject(converted) : '"symantec_vip" expected to be of type "map"';
    {
      symantec_vip: converted,
    }
  ),
  with_webauthn(value):: (
    local converted = value;
    assert std.isObject(converted) : '"webauthn" expected to be of type "map"';
    {
      webauthn: converted,
    }
  ),
  with_yubikey_token(value):: (
    local converted = value;
    assert std.isObject(converted) : '"yubikey_token" expected to be of type "map"';
    {
      yubikey_token: converted,
    }
  ),
}
