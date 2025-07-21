{
  local block = self,
  new(auth_server_id, trusted):: (
    {}
    + block.with_auth_server_id(auth_server_id)
    + block.with_trusted(trusted)
  ),
  '#with_auth_server_id':: 'Authorization server ID',
  with_auth_server_id(value):: (
    local converted = value;
    assert std.isString(converted) : '"auth_server_id" expected to be of type "string"';
    {
      auth_server_id: converted,
    }
  ),
  '#with_id':: 'Resource id',
  with_id(value):: (
    local converted = value;
    assert std.isString(converted) : '"id" expected to be of type "string"';
    {
      id: converted,
    }
  ),
  '#with_trusted':: 'A list of the authorization server IDs user want to trust',
  with_trusted(value):: (
    local converted = if std.isArray(value) then value else [value];
    assert (std.isArray(converted) && std.length(std.set(converted)) == std.length(converted)) : '"trusted" expected to be of type "set"';
    {
      trusted: converted,
    }
  ),
  '#with_trusted_mixin':: 'A list of the authorization server IDs user want to trust',
  with_trusted_mixin(value):: (
    local converted = if std.isArray(value) then value else [value];
    assert (std.isArray(converted) && std.length(std.set(converted)) == std.length(converted)) : '"trusted" expected to be of type "set"';
    {
      trusted+: converted,
    }
  ),
}
