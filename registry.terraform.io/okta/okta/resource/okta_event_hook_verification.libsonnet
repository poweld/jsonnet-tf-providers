{
  local block = self,
  new(event_hook_id):: (
    {
      terraformObject:: "okta_event_hook_verification",
      terraformType:: "resource",
    }
    + block.withEventHookId(event_hook_id)
  ),
  "#withEventHookId":: "Event hook ID",
  withEventHookId(value):: (
    local converted = value;
    assert std.isString(converted) : '"event_hook_id" expected to be of type "string"';
    {
      event_hook_id: converted,
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
