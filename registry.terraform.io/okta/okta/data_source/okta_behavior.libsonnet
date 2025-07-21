{
  local block = self,
  new():: (
    {}
  ),
  '#with_id':: 'Behavior ID.',
  with_id(value):: (
    local converted = value;
    assert std.isString(converted) : '"id" expected to be of type "string"';
    {
      id: converted,
    }
  ),
  '#with_name':: 'Behavior name.',
  with_name(value):: (
    local converted = value;
    assert std.isString(converted) : '"name" expected to be of type "string"';
    {
      name: converted,
    }
  ),
  '#with_settings':: 'Map of behavior settings.',
  with_settings(value):: (
    local converted = value;
    assert std.isObject(converted) : '"settings" expected to be of type "map"';
    {
      settings: converted,
    }
  ),
  '#with_status':: 'Behavior status.',
  with_status(value):: (
    local converted = value;
    assert std.isString(converted) : '"status" expected to be of type "string"';
    {
      status: converted,
    }
  ),
  '#with_type':: 'Behavior type.',
  with_type(value):: (
    local converted = value;
    assert std.isString(converted) : '"type" expected to be of type "string"';
    {
      type: converted,
    }
  ),
}
