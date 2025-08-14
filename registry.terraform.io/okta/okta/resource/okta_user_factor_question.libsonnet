{
  local block = self,
  new(answer, key, user_id):: (
    {
      terraformObject:: "okta_user_factor_question",
    }
    + block.withAnswer(answer)
    + block.withKey(key)
    + block.withUserId(user_id)
  ),
  "#withAnswer":: "Security question answer. Note here that answer won't be set during the resource import.",
  withAnswer(value):: (
    local converted = value;
    assert std.isString(converted) : '"answer" expected to be of type "string"';
    {
      answer: converted,
    }
  ),
  withId(value):: (
    local converted = value;
    assert std.isString(converted) : '"id" expected to be of type "string"';
    {
      id: converted,
    }
  ),
  "#withKey":: "Security question unique key. ",
  withKey(value):: (
    local converted = value;
    assert std.isString(converted) : '"key" expected to be of type "string"';
    {
      key: converted,
    }
  ),
  "#withStatus":: "The status of the security question factor.",
  withStatus(value):: (
    local converted = value;
    assert std.isString(converted) : '"status" expected to be of type "string"';
    {
      status: converted,
    }
  ),
  "#withText":: "Display text for security question.",
  withText(value):: (
    local converted = value;
    assert std.isString(converted) : '"text" expected to be of type "string"';
    {
      text: converted,
    }
  ),
  "#withUserId":: "ID of the user. Resource will be recreated when `user_id` changes.",
  withUserId(value):: (
    local converted = value;
    assert std.isString(converted) : '"user_id" expected to be of type "string"';
    {
      user_id: converted,
    }
  ),
}
