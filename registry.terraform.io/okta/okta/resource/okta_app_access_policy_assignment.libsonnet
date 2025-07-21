{
  local block = self,
  new(app_id, policy_id):: (
    {}
    + block.with_app_id(app_id)
    + block.with_policy_id(policy_id)
  ),
  '#with_app_id':: 'The application ID; this value is immutable and can not be updated.',
  with_app_id(value):: (
    local converted = value;
    assert std.isString(converted) : '"app_id" expected to be of type "string"';
    {
      app_id: converted,
    }
  ),
  '#with_id':: 'The ID of the resource. This ID is simply the application ID.',
  with_id(value):: (
    local converted = value;
    assert std.isString(converted) : '"id" expected to be of type "string"';
    {
      id: converted,
    }
  ),
  '#with_policy_id':: 'The access policy ID.',
  with_policy_id(value):: (
    local converted = value;
    assert std.isString(converted) : '"policy_id" expected to be of type "string"';
    {
      policy_id: converted,
    }
  ),
}
