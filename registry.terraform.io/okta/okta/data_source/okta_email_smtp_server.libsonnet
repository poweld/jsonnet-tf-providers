{
  local block = self,
  new(id):: (
    {}
    + block.with_id(id)
  ),
  '#with_alias':: 'Human-readable name for your SMTP server.',
  with_alias(value):: (
    local converted = value;
    assert std.isString(converted) : '"alias" expected to be of type "string"';
    {
      alias: converted,
    }
  ),
  '#with_enabled':: 'Whether the SMTP server requires a secure connection.',
  with_enabled(value):: (
    local converted = value;
    assert std.isBoolean(converted) : '"enabled" expected to be of type "bool"';
    {
      enabled: converted,
    }
  ),
  '#with_host':: 'SMTP server host name.',
  with_host(value):: (
    local converted = value;
    assert std.isString(converted) : '"host" expected to be of type "string"';
    {
      host: converted,
    }
  ),
  '#with_id':: 'The ID of the SMTP server.',
  with_id(value):: (
    local converted = value;
    assert std.isString(converted) : '"id" expected to be of type "string"';
    {
      id: converted,
    }
  ),
  '#with_port':: 'SMTP server port number.',
  with_port(value):: (
    local converted = value;
    assert std.isNumber(converted) : '"port" expected to be of type "number"';
    {
      port: converted,
    }
  ),
  '#with_username':: 'Name of the SMTP server.',
  with_username(value):: (
    local converted = value;
    assert std.isString(converted) : '"username" expected to be of type "string"';
    {
      username: converted,
    }
  ),
}
