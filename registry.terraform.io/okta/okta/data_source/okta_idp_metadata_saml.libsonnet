{
  local block = self,
  new():: (
    {
      terraformObject:: "okta_idp_metadata_saml",
      terraformType:: "data",
    }
  ),
  "#withAssertionsSigned":: "Whether assertions are signed.",
  withAssertionsSigned(value):: (
    local converted = value;
    assert std.isBoolean(converted) : '"assertions_signed" expected to be of type "bool"';
    {
      assertions_signed: converted,
    }
  ),
  "#withAuthnRequestSigned":: "Whether authn requests are signed.",
  withAuthnRequestSigned(value):: (
    local converted = value;
    assert std.isBoolean(converted) : '"authn_request_signed" expected to be of type "bool"';
    {
      authn_request_signed: converted,
    }
  ),
  "#withEncryptionCertificate":: "SAML request encryption certificate.",
  withEncryptionCertificate(value):: (
    local converted = value;
    assert std.isString(converted) : '"encryption_certificate" expected to be of type "string"';
    {
      encryption_certificate: converted,
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
  "#withIdpId":: "The id of the IdP to retrieve metadata for.",
  withIdpId(value):: (
    local converted = value;
    assert std.isString(converted) : '"idp_id" expected to be of type "string"';
    {
      idp_id: converted,
    }
  ),
  "#withMetadata":: "Raw IdP metadata.",
  withMetadata(value):: (
    local converted = value;
    assert std.isString(converted) : '"metadata" expected to be of type "string"';
    {
      metadata: converted,
    }
  ),
  "#withSigningCertificate":: "SAML request signing certificate.",
  withSigningCertificate(value):: (
    local converted = value;
    assert std.isString(converted) : '"signing_certificate" expected to be of type "string"';
    {
      signing_certificate: converted,
    }
  ),
}
