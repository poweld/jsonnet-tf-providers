{
  local block = self,
  new(authorize, login):: (
    {}
    + block.with_authorize(authorize)
    + block.with_login(login)
  ),
  '#with_authorize':: 'Called during authentication. Valid values: `ENFORCE` _(Enforce limit and log per client (recommended))_, `DISABLE` _(Do nothing (not recommended))_, `PREVIEW` _(Log per client)_.',
  with_authorize(value):: (
    local converted = value;
    assert std.isString(converted) : '"authorize" expected to be of type "string"';
    {
      authorize: converted,
    }
  ),
  '#with_communications_enabled':: 'Enable or disable rate limiting communications. By default, it is `true`.',
  with_communications_enabled(value):: (
    local converted = value;
    assert std.isBoolean(converted) : '"communications_enabled" expected to be of type "bool"';
    {
      communications_enabled: converted,
    }
  ),
  with_id(value):: (
    local converted = value;
    assert std.isString(converted) : '"id" expected to be of type "string"';
    {
      id: converted,
    }
  ),
  '#with_login':: 'Called when accessing the Okta hosted login page. Valid values: `ENFORCE` _(Enforce limit and log per client (recommended))_, `DISABLE` _(Do nothing (not recommended))_, `PREVIEW` _(Log per client)_.',
  with_login(value):: (
    local converted = value;
    assert std.isString(converted) : '"login" expected to be of type "string"';
    {
      login: converted,
    }
  ),
}
