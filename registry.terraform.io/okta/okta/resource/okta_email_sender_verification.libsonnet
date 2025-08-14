{
  local block = self,
  new(sender_id):: (
    {
      terraformObject:: "okta_email_sender_verification",
      terraformType:: "resource",
    }
    + block.withSenderId(sender_id)
  ),
  withId(value):: (
    local converted = value;
    assert std.isString(converted) : '"id" expected to be of type "string"';
    {
      id: converted,
    }
  ),
  "#withSenderId":: "Email sender ID",
  withSenderId(value):: (
    local converted = value;
    assert std.isString(converted) : '"sender_id" expected to be of type "string"';
    {
      sender_id: converted,
    }
  ),
}
