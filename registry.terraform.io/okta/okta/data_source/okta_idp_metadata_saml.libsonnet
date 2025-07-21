{
  local block = self,
  new():: (
    {}
  ),
  '#with_assertions_signed':: 'Whether assertions are signed.',
  with_assertions_signed(value):: (
    local converted = value;
    assert std.isBoolean(converted) : '"assertions_signed" expected to be of type "bool"';
    {
      assertions_signed: converted,
    }
  ),
  '#with_authn_request_signed':: 'Whether authn requests are signed.',
  with_authn_request_signed(value):: (
    local converted = value;
    assert std.isBoolean(converted) : '"authn_request_signed" expected to be of type "bool"';
    {
      authn_request_signed: converted,
    }
  ),
  '#with_encryption_certificate':: 'SAML request encryption certificate.',
  with_encryption_certificate(value):: (
    local converted = value;
    assert std.isString(converted) : '"encryption_certificate" expected to be of type "string"';
    {
      encryption_certificate: converted,
    }
  ),
  '#with_entity_id':: 'Entity URL for instance https://www.okta.com/saml2/service-provider/sposcfdmlybtwkdcgtuf',
  with_entity_id(value):: (
    local converted = value;
    assert std.isString(converted) : '"entity_id" expected to be of type "string"';
    {
      entity_id: converted,
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
  '#with_idp_id':: 'The id of the IdP to retrieve metadata for.',
  with_idp_id(value):: (
    local converted = value;
    assert std.isString(converted) : '"idp_id" expected to be of type "string"';
    {
      idp_id: converted,
    }
  ),
  '#with_metadata':: 'Raw IdP metadata.',
  with_metadata(value):: (
    local converted = value;
    assert std.isString(converted) : '"metadata" expected to be of type "string"';
    {
      metadata: converted,
    }
  ),
  '#with_signing_certificate':: 'SAML request signing certificate.',
  with_signing_certificate(value):: (
    local converted = value;
    assert std.isString(converted) : '"signing_certificate" expected to be of type "string"';
    {
      signing_certificate: converted,
    }
  ),
}
