{
  local block = self,
  new(user_id):: (
    {
      terraformObject:: "okta_user_security_questions",
    }
    + block.withUserId(user_id)
  ),
  withId(value):: (
    local converted = value;
    assert std.isString(converted) : '"id" expected to be of type "string"';
    {
      id: converted,
    }
  ),
  withQuestions(value):: (
    local converted = if std.isArray(value) then value else [value];
    assert std.isArray(converted) : '"questions" expected to be of type "list"';
    {
      questions: converted,
    }
  ),
  withQuestionsMixin(value):: (
    local converted = if std.isArray(value) then value else [value];
    assert std.isArray(converted) : '"questions" expected to be of type "list"';
    {
      questions+: converted,
    }
  ),
  "#withUserId":: "ID of a Okta User",
  withUserId(value):: (
    local converted = value;
    assert std.isString(converted) : '"user_id" expected to be of type "string"';
    {
      user_id: converted,
    }
  ),
}
