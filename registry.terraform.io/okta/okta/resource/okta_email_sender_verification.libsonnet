{
  local block = self,
  new(sender_id):: (
    {}
    + block.with_sender_id(sender_id)
  ),
  with_id(value):: (
    local converted = value;
    assert std.isString(converted) : '"id" expected to be of type "string"';
    {
      id: converted,
    }
  ),
  '#with_sender_id':: 'Email sender ID',
  with_sender_id(value):: (
    local converted = value;
    assert std.isString(converted) : '"sender_id" expected to be of type "string"';
    {
      sender_id: converted,
    }
  ),
}
