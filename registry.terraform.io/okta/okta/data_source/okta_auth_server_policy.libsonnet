{
  local block = self,
  new(auth_server_id, name):: (
    {}
    + block.with_auth_server_id(auth_server_id)
    + block.with_name(name)
  ),
  '#with_assigned_clients':: 'List of clients this policy is assigned to. `[ALL_CLIENTS]` is a special value when policy is assigned to all clients.',
  with_assigned_clients(value):: (
    local converted = if std.isArray(value) then value else [value];
    assert (std.isArray(converted) && std.length(std.set(converted)) == std.length(converted)) : '"assigned_clients" expected to be of type "set"';
    {
      assigned_clients: converted,
    }
  ),
  '#with_assigned_clients_mixin':: 'List of clients this policy is assigned to. `[ALL_CLIENTS]` is a special value when policy is assigned to all clients.',
  with_assigned_clients_mixin(value):: (
    local converted = if std.isArray(value) then value else [value];
    assert (std.isArray(converted) && std.length(std.set(converted)) == std.length(converted)) : '"assigned_clients" expected to be of type "set"';
    {
      assigned_clients+: converted,
    }
  ),
  '#with_auth_server_id':: 'Auth server ID',
  with_auth_server_id(value):: (
    local converted = value;
    assert std.isString(converted) : '"auth_server_id" expected to be of type "string"';
    {
      auth_server_id: converted,
    }
  ),
  '#with_description':: 'Description of authorization server policy.',
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
  '#with_name':: 'Name of the policy',
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
}
