{
  local block = self,
  new(terraformName):: (
    {
      jsonnetTfMetadata:: {
        terraformObject:: "okta_idp_metadata_saml",
        terraformType:: "data",
        terraformPrefix:: "data",
        terraformAttributes:: ["assertions_signed", "authn_request_signed", "encryption_certificate", "entity_id", "http_post_binding", "http_redirect_binding", "id", "idp_id", "metadata", "signing_certificate"],
      },
    }
    + block.withTerraformName(terraformName)
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
  withTerraformName(value):: {
    jsonnetTfMetadata+:: {
      terraformName:: value,
    },
  },
}
