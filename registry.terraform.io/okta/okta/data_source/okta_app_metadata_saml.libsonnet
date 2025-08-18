{
  local block = self,
  new(app_id):: (
    {
      terraformObject:: "okta_app_metadata_saml",
      terraformType:: "data",
    }
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
}
