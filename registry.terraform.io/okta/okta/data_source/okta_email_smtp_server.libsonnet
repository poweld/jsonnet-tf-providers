{
  local block = self,
  new(id):: (
    {
      terraformObject:: "okta_email_smtp_server",
      terraformType:: "data",
    }
    + block.withId(id)
  ),
  "#withId":: "The ID of the SMTP server.",
  withId(value):: (
    local converted = value;
    assert std.isString(converted) : '"id" expected to be of type "string"';
    {
      id: converted,
    }
  ),
}
