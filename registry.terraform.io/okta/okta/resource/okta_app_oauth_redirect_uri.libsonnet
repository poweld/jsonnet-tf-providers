{
  local block = self,
  new(app_id, uri):: (
    {}
    + block.with_app_id(app_id)
    + block.with_uri(uri)
  ),
  '#with_app_id':: 'OAuth application ID.',
  with_app_id(value):: (
    local converted = value;
    assert std.isString(converted) : '"app_id" expected to be of type "string"';
    {
      app_id: converted,
    }
  ),
  with_id(value):: (
    local converted = value;
    assert std.isString(converted) : '"id" expected to be of type "string"';
    {
      id: converted,
    }
  ),
  '#with_uri':: 'Redirect URI to append to Okta OIDC application.',
  with_uri(value):: (
    local converted = value;
    assert std.isString(converted) : '"uri" expected to be of type "string"';
    {
      uri: converted,
    }
  ),
}
