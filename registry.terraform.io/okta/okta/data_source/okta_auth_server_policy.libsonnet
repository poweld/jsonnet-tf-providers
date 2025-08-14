{
  local block = self,
  new(auth_server_id, name):: (
    {}
    + block.withAuthServerId(auth_server_id)
    + block.withName(name)
  ),
  "#withAssignedClients":: "List of clients this policy is assigned to. `[ALL_CLIENTS]` is a special value when policy is assigned to all clients.",
  withAssignedClients(value):: (
    local converted = if std.isArray(value) then value else [value];
    assert (std.isArray(converted) && std.length(std.set(converted)) == std.length(converted)) : '"assigned_clients" expected to be of type "set"';
    {
      assigned_clients: converted,
    }
  ),
  "#withAssignedClientsMixin":: "List of clients this policy is assigned to. `[ALL_CLIENTS]` is a special value when policy is assigned to all clients.",
  withAssignedClientsMixin(value):: (
    local converted = if std.isArray(value) then value else [value];
    assert (std.isArray(converted) && std.length(std.set(converted)) == std.length(converted)) : '"assigned_clients" expected to be of type "set"';
    {
      assigned_clients+: converted,
    }
  ),
  "#withAuthServerId":: "Auth server ID",
  withAuthServerId(value):: (
    local converted = value;
    assert std.isString(converted) : '"auth_server_id" expected to be of type "string"';
    {
      auth_server_id: converted,
    }
  ),
  "#withDescription":: "Description of authorization server policy.",
  withDescription(value):: (
    local converted = value;
    assert std.isString(converted) : '"description" expected to be of type "string"';
    {
      description: converted,
    }
  ),
  withId(value):: (
    local converted = value;
    assert std.isString(converted) : '"id" expected to be of type "string"';
    {
      id: converted,
    }
  ),
  "#withName":: "Name of the policy",
  withName(value):: (
    local converted = value;
    assert std.isString(converted) : '"name" expected to be of type "string"';
    {
      name: converted,
    }
  ),
  "#withPriority":: "Priority of the auth server policy",
  withPriority(value):: (
    local converted = value;
    assert std.isNumber(converted) : '"priority" expected to be of type "number"';
    {
      priority: converted,
    }
  ),
}
