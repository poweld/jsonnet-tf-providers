{
  local block = self,
  new(name, origin, scopes):: (
    {}
    + block.with_name(name)
    + block.with_origin(origin)
    + block.with_scopes(scopes)
  ),
  '#with_active':: 'Whether the Trusted Origin is active or not - can only be issued post-creation. By default, it is `true`.',
  with_active(value):: (
    local converted = value;
    assert std.isBoolean(converted) : '"active" expected to be of type "bool"';
    {
      active: converted,
    }
  ),
  with_id(value):: (
    local converted = value;
    assert std.isString(converted) : '"id" expected to be of type "string"';
    {
      id: converted,
    }
  ),
  '#with_name':: 'Unique name for this trusted origin',
  with_name(value):: (
    local converted = value;
    assert std.isString(converted) : '"name" expected to be of type "string"';
    {
      name: converted,
    }
  ),
  '#with_origin':: 'Unique origin URL for this trusted origin',
  with_origin(value):: (
    local converted = value;
    assert std.isString(converted) : '"origin" expected to be of type "string"';
    {
      origin: converted,
    }
  ),
  '#with_scopes':: 'Scopes of the Trusted Origin - can either be `CORS` and/or `REDIRECT`',
  with_scopes(value):: (
    local converted = if std.isArray(value) then value else [value];
    assert std.isArray(converted) : '"scopes" expected to be of type "list"';
    {
      scopes: converted,
    }
  ),
  '#with_scopes_mixin':: 'Scopes of the Trusted Origin - can either be `CORS` and/or `REDIRECT`',
  with_scopes_mixin(value):: (
    local converted = if std.isArray(value) then value else [value];
    assert std.isArray(converted) : '"scopes" expected to be of type "list"';
    {
      scopes+: converted,
    }
  ),
}
