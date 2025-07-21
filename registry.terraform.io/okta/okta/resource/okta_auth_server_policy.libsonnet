{
  local block = self,
  new(auth_server_id, client_whitelist, description, name, priority):: (
    {}
    + block.with_auth_server_id(auth_server_id)
    + block.with_client_whitelist(client_whitelist)
    + block.with_description(description)
    + block.with_name(name)
    + block.with_priority(priority)
  ),
  '#with_auth_server_id':: 'The ID of the Auth Server.',
  with_auth_server_id(value):: (
    local converted = value;
    assert std.isString(converted) : '"auth_server_id" expected to be of type "string"';
    {
      auth_server_id: converted,
    }
  ),
  '#with_client_whitelist':: 'The clients to whitelist the policy for. `[ALL_CLIENTS]` is a special value that can be used to whitelist all clients, otherwise it is a list of client ids.',
  with_client_whitelist(value):: (
    local converted = if std.isArray(value) then value else [value];
    assert (std.isArray(converted) && std.length(std.set(converted)) == std.length(converted)) : '"client_whitelist" expected to be of type "set"';
    {
      client_whitelist: converted,
    }
  ),
  '#with_client_whitelist_mixin':: 'The clients to whitelist the policy for. `[ALL_CLIENTS]` is a special value that can be used to whitelist all clients, otherwise it is a list of client ids.',
  with_client_whitelist_mixin(value):: (
    local converted = if std.isArray(value) then value else [value];
    assert (std.isArray(converted) && std.length(std.set(converted)) == std.length(converted)) : '"client_whitelist" expected to be of type "set"';
    {
      client_whitelist+: converted,
    }
  ),
  '#with_description':: 'The description of the Auth Server Policy.',
  with_description(value):: (
    local converted = value;
    assert std.isString(converted) : '"description" expected to be of type "string"';
    {
      description: converted,
    }
  ),
  with_id(value):: (
    local converted = value;
    assert std.isString(converted) : '"id" expected to be of type "string"';
    {
      id: converted,
    }
  ),
  '#with_name':: 'The name of the Auth Server Policy.',
  with_name(value):: (
    local converted = value;
    assert std.isString(converted) : '"name" expected to be of type "string"';
    {
      name: converted,
    }
  ),
  '#with_priority':: 'Priority of the auth server policy',
  with_priority(value):: (
    local converted = value;
    assert std.isNumber(converted) : '"priority" expected to be of type "number"';
    {
      priority: converted,
    }
  ),
  '#with_status':: 'Default to `ACTIVE`',
  with_status(value):: (
    local converted = value;
    assert std.isString(converted) : '"status" expected to be of type "string"';
    {
      status: converted,
    }
  ),
}
