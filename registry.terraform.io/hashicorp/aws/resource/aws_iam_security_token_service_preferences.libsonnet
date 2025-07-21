{
  local block = self,
  new(global_endpoint_token_version):: (
    {}
    + block.with_global_endpoint_token_version(global_endpoint_token_version)
  ),
  with_global_endpoint_token_version(value):: (
    local converted = value;
    assert std.isString(converted) : '"global_endpoint_token_version" expected to be of type "string"';
    {
      global_endpoint_token_version: converted,
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
