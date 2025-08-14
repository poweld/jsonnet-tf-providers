{
  local block = self,
  new(app_id):: (
    {}
    + block.withAppId(app_id)
  ),
  "#withAppId":: "The application ID.",
  withAppId(value):: (
    local converted = value;
    assert std.isString(converted) : '"app_id" expected to be of type "string"';
    {
      app_id: converted,
    }
  ),
  "#withCertificate":: "Public certificate from application metadata.",
  withCertificate(value):: (
    local converted = value;
    assert std.isString(converted) : '"certificate" expected to be of type "string"';
    {
      certificate: converted,
    }
  ),
  "#withEntityId":: "Entity URL for instance https://www.okta.com/saml2/service-provider/sposcfdmlybtwkdcgtuf",
  withEntityId(value):: (
    local converted = value;
    assert std.isString(converted) : '"entity_id" expected to be of type "string"';
    {
      entity_id: converted,
    }
  ),
  "#withHttpPostBinding":: "urn:oasis:names:tc:SAML:2.0:bindings:HTTP-Post location from the SAML metadata.",
  withHttpPostBinding(value):: (
    local converted = value;
    assert std.isString(converted) : '"http_post_binding" expected to be of type "string"';
    {
      http_post_binding: converted,
    }
  ),
  "#withHttpRedirectBinding":: "urn:oasis:names:tc:SAML:2.0:bindings:HTTP-Redirect location from the SAML metadata.",
  withHttpRedirectBinding(value):: (
    local converted = value;
    assert std.isString(converted) : '"http_redirect_binding" expected to be of type "string"';
    {
      http_redirect_binding: converted,
    }
  ),
  withId(value):: (
    local converted = value;
    assert std.isString(converted) : '"id" expected to be of type "string"';
    {
      id: converted,
    }
  ),
  "#withKeyId":: "Certificate Key ID.",
  withKeyId(value):: (
    local converted = value;
    assert std.isString(converted) : '"key_id" expected to be of type "string"';
    {
      key_id: converted,
    }
  ),
  "#withMetadata":: "Raw metadata of application.",
  withMetadata(value):: (
    local converted = value;
    assert std.isString(converted) : '"metadata" expected to be of type "string"';
    {
      metadata: converted,
    }
  ),
  "#withWantAuthnRequestsSigned":: "Whether authn requests are signed.",
  withWantAuthnRequestsSigned(value):: (
    local converted = value;
    assert std.isBoolean(converted) : '"want_authn_requests_signed" expected to be of type "bool"';
    {
      want_authn_requests_signed: converted,
    }
  ),
}
