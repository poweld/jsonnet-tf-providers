{
  local block = self,
  new(provider_id):: (
    {}
    + block.with_provider_id(provider_id)
  ),
  '#with_active':: 'Whether to activate the provider, by default, it is set to `true`.',
  with_active(value):: (
    local converted = value;
    assert std.isBoolean(converted) : '"active" expected to be of type "bool"';
    {
      active: converted,
    }
  ),
  with_id(value):: (
    local converted = value;
    assert std.isString(converted) : '"id" expected to be of type "string"';
    {
      id: converted,
    }
  ),
  '#with_provider_id':: 'The MFA provider name. Allowed values are `duo`, `fido_u2f`, `fido_webauthn`, `google_otp`, `okta_call`, `okta_otp`, `okta_password`, `okta_push`, `okta_question`, `okta_sms`, `okta_email`, `rsa_token`, `symantec_vip`, `yubikey_token`, or `hotp`.',
  with_provider_id(value):: (
    local converted = value;
    assert std.isString(converted) : '"provider_id" expected to be of type "string"';
    {
      provider_id: converted,
    }
  ),
}
