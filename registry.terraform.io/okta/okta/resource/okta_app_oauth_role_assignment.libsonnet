{
  local block = self,
  new(client_id, type):: (
    {}
    + block.with_client_id(client_id)
    + block.with_type(type)
  ),
  '#with_client_id':: 'Client ID for the role to be assigned to',
  with_client_id(value):: (
    local converted = value;
    assert std.isString(converted) : '"client_id" expected to be of type "string"';
    {
      client_id: converted,
    }
  ),
  '#with_id':: 'Role Assignment ID',
  with_id(value):: (
    local converted = value;
    assert std.isString(converted) : '"id" expected to be of type "string"';
    {
      id: converted,
    }
  ),
  '#with_label':: 'Label of the role assignment',
  with_label(value):: (
    local converted = value;
    assert std.isString(converted) : '"label" expected to be of type "string"';
    {
      label: converted,
    }
  ),
  '#with_resource_set':: 'Resource set for the custom role to assign, must be the ID of the created resource set.',
  with_resource_set(value):: (
    local converted = value;
    assert std.isString(converted) : '"resource_set" expected to be of type "string"';
    {
      resource_set: converted,
    }
  ),
  '#with_role':: 'Custom Role ID',
  with_role(value):: (
    local converted = value;
    assert std.isString(converted) : '"role" expected to be of type "string"';
    {
      role: converted,
    }
  ),
  '#with_status':: 'Status of the role assignment',
  with_status(value):: (
    local converted = value;
    assert std.isString(converted) : '"status" expected to be of type "string"';
    {
      status: converted,
    }
  ),
  '#with_type':: 'Role type to assign. This can be one of the standard Okta roles, such as `HELP_DESK_ADMIN`, or `CUSTOM`. Using custom requires the `resource_set` and `role` attributes to be set.',
  with_type(value):: (
    local converted = value;
    assert std.isString(converted) : '"type" expected to be of type "string"';
    {
      type: converted,
    }
  ),
}
