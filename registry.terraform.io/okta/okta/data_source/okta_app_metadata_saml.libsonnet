{
  local block = self,
  new(app_id):: (
    {}
    + block.with_app_id(app_id)
  ),
  '#with_app_id':: 'The application ID.',
  with_app_id(value):: (
    local converted = value;
    assert std.isString(converted) : '"app_id" expected to be of type "string"';
    {
      app_id: converted,
    }
  ),
  '#with_certificate':: 'Public certificate from application metadata.',
  with_certificate(value):: (
    local converted = value;
    assert std.isString(converted) : '"certificate" expected to be of type "string"';
    {
      certificate: converted,
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
  '#with_key_id':: 'Certificate Key ID.',
  with_key_id(value):: (
    local converted = value;
    assert std.isString(converted) : '"key_id" expected to be of type "string"';
    {
      key_id: converted,
    }
  ),
  '#with_metadata':: 'Raw metadata of application.',
  with_metadata(value):: (
    local converted = value;
    assert std.isString(converted) : '"metadata" expected to be of type "string"';
    {
      metadata: converted,
    }
  ),
  '#with_want_authn_requests_signed':: 'Whether authn requests are signed.',
  with_want_authn_requests_signed(value):: (
    local converted = value;
    assert std.isBoolean(converted) : '"want_authn_requests_signed" expected to be of type "bool"';
    {
      want_authn_requests_signed: converted,
    }
  ),
}
