{
  local block = self,
  new(auth_server_id, name):: (
    {
      jsonnetTfMetadata:: {
        terraformObject:: "okta_auth_server_policy",
        terraformType:: "data",
        terraformPrefix:: "data",
        terraformName:: name,
        terraformAttributes:: ["assigned_clients", "auth_server_id", "description", "id", "name", "priority"],
      },
    }
    + block.withAuthServerId(auth_server_id)
    + block.withName(name)
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
  "#withName":: "Name of the policy",
  withName(value):: (
    local converted = value;
    assert std.isString(converted) : '"name" expected to be of type "string"';
    {
      name: converted,
    }
  ),
}
