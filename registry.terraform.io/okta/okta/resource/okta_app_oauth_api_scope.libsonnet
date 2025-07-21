{
  local block = self,
  new(app_id, issuer, scopes):: (
    {}
    + block.with_app_id(app_id)
    + block.with_issuer(issuer)
    + block.with_scopes(scopes)
  ),
  '#with_app_id':: 'ID of the application.',
  with_app_id(value):: (
    local converted = value;
    assert std.isString(converted) : '"app_id" expected to be of type "string"';
    {
      app_id: converted,
    }
  ),
  with_id(value):: (
    local converted = value;
    assert std.isString(converted) : '"id" expected to be of type "string"';
    {
      id: converted,
    }
  ),
  '#with_issuer':: 'The issuer of your Org Authorization Server, your Org URL.',
  with_issuer(value):: (
    local converted = value;
    assert std.isString(converted) : '"issuer" expected to be of type "string"';
    {
      issuer: converted,
    }
  ),
  '#with_scopes':: 'Scopes of the application for which consent is granted.',
  with_scopes(value):: (
    local converted = if std.isArray(value) then value else [value];
    assert (std.isArray(converted) && std.length(std.set(converted)) == std.length(converted)) : '"scopes" expected to be of type "set"';
    {
      scopes: converted,
    }
  ),
  '#with_scopes_mixin':: 'Scopes of the application for which consent is granted.',
  with_scopes_mixin(value):: (
    local converted = if std.isArray(value) then value else [value];
    assert (std.isArray(converted) && std.length(std.set(converted)) == std.length(converted)) : '"scopes" expected to be of type "set"';
    {
      scopes+: converted,
    }
  ),
}
