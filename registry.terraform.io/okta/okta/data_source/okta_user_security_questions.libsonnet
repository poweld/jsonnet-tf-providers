{
  local block = self,
  new(user_id):: (
    {}
    + block.with_user_id(user_id)
  ),
  with_id(value):: (
    local converted = value;
    assert std.isString(converted) : '"id" expected to be of type "string"';
    {
      id: converted,
    }
  ),
  with_questions(value):: (
    local converted = if std.isArray(value) then value else [value];
    assert std.isArray(converted) : '"questions" expected to be of type "list"';
    {
      questions: converted,
    }
  ),
  with_questions_mixin(value):: (
    local converted = if std.isArray(value) then value else [value];
    assert std.isArray(converted) : '"questions" expected to be of type "list"';
    {
      questions+: converted,
    }
  ),
  '#with_user_id':: 'ID of a Okta User',
  with_user_id(value):: (
    local converted = value;
    assert std.isString(converted) : '"user_id" expected to be of type "string"';
    {
      user_id: converted,
    }
  ),
}
