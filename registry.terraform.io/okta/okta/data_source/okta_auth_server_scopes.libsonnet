{
  local block = self,
  new(auth_server_id):: (
    {
      terraformObject:: "okta_auth_server_scopes",
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
  withId(value):: (
    local converted = value;
    assert std.isString(converted) : '"id" expected to be of type "string"';
    {
      id: converted,
    }
  ),
}
