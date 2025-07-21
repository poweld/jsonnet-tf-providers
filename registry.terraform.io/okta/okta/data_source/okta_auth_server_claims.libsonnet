{
  local block = self,
  new(auth_server_id):: (
    {}
    + block.with_auth_server_id(auth_server_id)
  ),
  '#with_auth_server_id':: 'Auth server ID',
  with_auth_server_id(value):: (
    local converted = value;
    assert std.isString(converted) : '"auth_server_id" expected to be of type "string"';
    {
      auth_server_id: converted,
    }
  ),
  '#with_claims':: 'Collection of authorization server claims retrieved from Okta with the following properties.',
  with_claims(value):: (
    local converted = if std.isArray(value) then value else [value];
    assert std.isArray(converted) : '"claims" expected to be of type "list"';
    {
      claims: converted,
    }
  ),
  '#with_claims_mixin':: 'Collection of authorization server claims retrieved from Okta with the following properties.',
  with_claims_mixin(value):: (
    local converted = if std.isArray(value) then value else [value];
    assert std.isArray(converted) : '"claims" expected to be of type "list"';
    {
      claims+: converted,
    }
  ),
  with_id(value):: (
    local converted = value;
    assert std.isString(converted) : '"id" expected to be of type "string"';
    {
      id: converted,
    }
  ),
}
