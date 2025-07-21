{
  local block = self,
  new(answer, key, user_id):: (
    {}
    + block.with_answer(answer)
    + block.with_key(key)
    + block.with_user_id(user_id)
  ),
  '#with_answer':: "Security question answer. Note here that answer won't be set during the resource import.",
  with_answer(value):: (
    local converted = value;
    assert std.isString(converted) : '"answer" expected to be of type "string"';
    {
      answer: converted,
    }
  ),
  with_id(value):: (
    local converted = value;
    assert std.isString(converted) : '"id" expected to be of type "string"';
    {
      id: converted,
    }
  ),
  '#with_key':: 'Security question unique key. ',
  with_key(value):: (
    local converted = value;
    assert std.isString(converted) : '"key" expected to be of type "string"';
    {
      key: converted,
    }
  ),
  '#with_status':: 'The status of the security question factor.',
  with_status(value):: (
    local converted = value;
    assert std.isString(converted) : '"status" expected to be of type "string"';
    {
      status: converted,
    }
  ),
  '#with_text':: 'Display text for security question.',
  with_text(value):: (
    local converted = value;
    assert std.isString(converted) : '"text" expected to be of type "string"';
    {
      text: converted,
    }
  ),
  '#with_user_id':: 'ID of the user. Resource will be recreated when `user_id` changes.',
  with_user_id(value):: (
    local converted = value;
    assert std.isString(converted) : '"user_id" expected to be of type "string"';
    {
      user_id: converted,
    }
  ),
}
