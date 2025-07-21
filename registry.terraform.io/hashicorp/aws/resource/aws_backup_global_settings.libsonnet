{
  local block = self,
  new(global_settings):: (
    {}
    + block.with_global_settings(global_settings)
  ),
  with_global_settings(value):: (
    local converted = value;
    assert std.isObject(converted) : '"global_settings" expected to be of type "map"';
    {
      global_settings: converted,
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
