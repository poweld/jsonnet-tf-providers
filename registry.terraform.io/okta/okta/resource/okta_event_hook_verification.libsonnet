{
  local block = self,
  new(event_hook_id):: (
    {}
    + block.with_event_hook_id(event_hook_id)
  ),
  '#with_event_hook_id':: 'Event hook ID',
  with_event_hook_id(value):: (
    local converted = value;
    assert std.isString(converted) : '"event_hook_id" expected to be of type "string"';
    {
      event_hook_id: converted,
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
