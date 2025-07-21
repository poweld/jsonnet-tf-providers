{
  local block = self,
  new():: (
    {}
  ),
  '#with_auto_renew':: 'Whether to automatically renew the subscription when it expires.',
  with_auto_renew(value):: (
    local converted = value;
    assert std.isString(converted) : '"auto_renew" expected to be of type "string"';
    {
      auto_renew: converted,
    }
  ),
  with_id(value):: (
    local converted = value;
    assert std.isString(converted) : '"id" expected to be of type "string"';
    {
      id: converted,
    }
  ),
  with_skip_destroy(value):: (
    local converted = value;
    assert std.isBoolean(converted) : '"skip_destroy" expected to be of type "bool"';
    {
      skip_destroy: converted,
    }
  ),
}
