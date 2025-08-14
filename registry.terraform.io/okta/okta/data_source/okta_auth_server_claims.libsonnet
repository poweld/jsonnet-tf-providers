{
  local block = self,
  new(auth_server_id):: (
    {
      terraformObject:: "okta_auth_server_claims",
      terraformType:: "data",
    }
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
  "#withClaims":: "Collection of authorization server claims retrieved from Okta with the following properties.",
  withClaims(value):: (
    local converted = if std.isArray(value) then value else [value];
    assert std.isArray(converted) : '"claims" expected to be of type "list"';
    {
      claims: converted,
    }
  ),
  "#withClaimsMixin":: "Collection of authorization server claims retrieved from Okta with the following properties.",
  withClaimsMixin(value):: (
    local converted = if std.isArray(value) then value else [value];
    assert std.isArray(converted) : '"claims" expected to be of type "list"';
    {
      claims+: converted,
    }
  ),
  withId(value):: (
    local converted = value;
    assert std.isString(converted) : '"id" expected to be of type "string"';
    {
      id: converted,
    }
  ),
}
