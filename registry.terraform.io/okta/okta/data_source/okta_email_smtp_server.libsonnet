{
  local block = self,
  new(id):: (
    {
      terraformObject:: "okta_email_smtp_server",
      terraformType:: "data",
    }
    + block.withId(id)
  ),
  "#withAlias":: "Human-readable name for your SMTP server.",
  withAlias(value):: (
    local converted = value;
    assert std.isString(converted) : '"alias" expected to be of type "string"';
    {
      alias: converted,
    }
  ),
  "#withEnabled":: "Whether the SMTP server requires a secure connection.",
  withEnabled(value):: (
    local converted = value;
    assert std.isBoolean(converted) : '"enabled" expected to be of type "bool"';
    {
      enabled: converted,
    }
  ),
  "#withHost":: "SMTP server host name.",
  withHost(value):: (
    local converted = value;
    assert std.isString(converted) : '"host" expected to be of type "string"';
    {
      host: converted,
    }
  ),
  "#withId":: "The ID of the SMTP server.",
  withId(value):: (
    local converted = value;
    assert std.isString(converted) : '"id" expected to be of type "string"';
    {
      id: converted,
    }
  ),
  "#withPort":: "SMTP server port number.",
  withPort(value):: (
    local converted = value;
    assert std.isNumber(converted) : '"port" expected to be of type "number"';
    {
      port: converted,
    }
  ),
  "#withUsername":: "Name of the SMTP server.",
  withUsername(value):: (
    local converted = value;
    assert std.isString(converted) : '"username" expected to be of type "string"';
    {
      username: converted,
    }
  ),
}
