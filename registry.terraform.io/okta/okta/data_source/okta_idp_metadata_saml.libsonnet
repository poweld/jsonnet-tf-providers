{
  local block = self,
  new():: (
    {
      terraformObject:: "okta_idp_metadata_saml",
      terraformType:: "data",
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
}
