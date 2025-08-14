{
  local block = self,
  new(auth_server_id):: (
    {}
    + block.withAuthServerId(auth_server_id)
  ),
  "#withAuthServerId":: "Auth server ID",
  withAuthServerId(value):: (
    local converted = value;
    assert std.isString(converted) : '"auth_server_id" expected to be of type "string"';
    {
      auth_server_id: converted,
    }
  ),
  withId(value):: (
    local converted = value;
    assert std.isString(converted) : '"id" expected to be of type "string"';
    {
      id: converted,
    }
  ),
  "#withScopes":: "Collection of authorization server scopes retrieved from Okta with the following properties.",
  withScopes(value):: (
    local converted = if std.isArray(value) then value else [value];
    assert std.isArray(converted) : '"scopes" expected to be of type "list"';
    {
      scopes: converted,
    }
  ),
  "#withScopesMixin":: "Collection of authorization server scopes retrieved from Okta with the following properties.",
  withScopesMixin(value):: (
    local converted = if std.isArray(value) then value else [value];
    assert std.isArray(converted) : '"scopes" expected to be of type "list"';
    {
      scopes+: converted,
    }
  ),
}
