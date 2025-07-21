{
  local block = self,
  new(status, tag_key):: (
    {}
    + block.with_status(status)
    + block.with_tag_key(tag_key)
  ),
  with_id(value):: (
    local converted = value;
    assert std.isString(converted) : '"id" expected to be of type "string"';
    {
      id: converted,
    }
  ),
  with_status(value):: (
    local converted = value;
    assert std.isString(converted) : '"status" expected to be of type "string"';
    {
      status: converted,
    }
  ),
  with_tag_key(value):: (
    local converted = value;
    assert std.isString(converted) : '"tag_key" expected to be of type "string"';
    {
      tag_key: converted,
    }
  ),
  with_type(value):: (
    local converted = value;
    assert std.isString(converted) : '"type" expected to be of type "string"';
    {
      type: converted,
    }
  ),
}
