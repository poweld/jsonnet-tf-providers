{
  local block = self,
  new():: (
    {}
  ),
  with_behaviors(value):: (
    local converted = if std.isArray(value) then value else [value];
    assert std.isArray(converted) : '"behaviors" expected to be of type "list"';
    {
      behaviors: converted,
    }
  ),
  with_behaviors_mixin(value):: (
    local converted = if std.isArray(value) then value else [value];
    assert std.isArray(converted) : '"behaviors" expected to be of type "list"';
    {
      behaviors+: converted,
    }
  ),
  with_id(value):: (
    local converted = value;
    assert std.isString(converted) : '"id" expected to be of type "string"';
    {
      id: converted,
    }
  ),
  '#with_q':: 'Searches the name property of behaviors for matching value',
  with_q(value):: (
    local converted = value;
    assert std.isString(converted) : '"q" expected to be of type "string"';
    {
      q: converted,
    }
  ),
}
