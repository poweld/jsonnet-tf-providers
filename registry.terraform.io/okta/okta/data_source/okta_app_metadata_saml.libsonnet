{
  local block = self,
  new(terraformName, appId):: (
    {
      jsonnetTfMetadata:: {
        terraformObject:: "okta_app_metadata_saml",
        terraformType:: "data",
        terraformPrefix:: "data",
        terraformAttributes:: ["app_id", "certificate", "entity_id", "http_post_binding", "http_redirect_binding", "id", "key_id", "metadata", "want_authn_requests_signed"],
      },
    }
    + block.withTerraformName(terraformName)
    + block.withAppId(appId)
  ),
  "#withAppId":: "The application ID.",
  withAppId(value):: (
    local converted = value;
    assert std.isString(converted) : '"app_id" expected to be of type "string"';
    {
      app_id: converted,
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
  withTerraformName(value):: {
    jsonnetTfMetadata+:: {
      terraformName:: value,
    },
  },
}
