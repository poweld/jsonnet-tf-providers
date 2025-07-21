{
  local block = self,
  new(alias, host, password, port, username):: (
    {}
    + block.with_alias(alias)
    + block.with_host(host)
    + block.with_password(password)
    + block.with_port(port)
    + block.with_username(username)
  ),
  '#with_alias':: 'Human-readable name for your SMTP server.',
  with_alias(value):: (
    local converted = value;
    assert std.isString(converted) : '"alias" expected to be of type "string"';
    {
      alias: converted,
    }
  ),
  '#with_enabled':: 'If true, routes all email traffic through your SMTP server.',
  with_enabled(value):: (
    local converted = value;
    assert std.isBoolean(converted) : '"enabled" expected to be of type "bool"';
    {
      enabled: converted,
    }
  ),
  '#with_host':: 'Hostname or IP address of your SMTP server.',
  with_host(value):: (
    local converted = value;
    assert std.isString(converted) : '"host" expected to be of type "string"';
    {
      host: converted,
    }
  ),
  with_id(value):: (
    local converted = value;
    assert std.isString(converted) : '"id" expected to be of type "string"';
    {
      id: converted,
    }
  ),
  '#with_password':: 'User name of the email domain.',
  with_password(value):: (
    local converted = value;
    assert std.isString(converted) : '"password" expected to be of type "string"';
    {
      password: converted,
    }
  ),
  '#with_port':: 'Port number of your SMTP server.',
  with_port(value):: (
    local converted = value;
    assert std.isNumber(converted) : '"port" expected to be of type "number"';
    {
      port: converted,
    }
  ),
  '#with_username':: 'Display name of the email domain.',
  with_username(value):: (
    local converted = value;
    assert std.isString(converted) : '"username" expected to be of type "string"';
    {
      username: converted,
    }
  ),
}
