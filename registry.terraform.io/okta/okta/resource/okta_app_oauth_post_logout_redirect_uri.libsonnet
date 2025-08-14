{
  local block = self,
  new(app_id, uri):: (
    {}
    + block.withAppId(app_id)
    + block.withUri(uri)
  ),
  "#withAppId":: "OAuth application ID.",
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
  "#withUri":: "Post Logout Redirect URI to append to Okta OIDC application.",
  withUri(value):: (
    local converted = value;
    assert std.isString(converted) : '"uri" expected to be of type "string"';
    {
      uri: converted,
    }
  ),
}
