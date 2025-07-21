{
  local block = self,
  new():: (
    {}
  ),
  with_delegated_administrators(value):: (
    local converted = if std.isArray(value) then value else [value];
    assert (std.isArray(converted) && std.length(std.set(converted)) == std.length(converted)) : '"delegated_administrators" expected to be of type "set"';
    {
      delegated_administrators: converted,
    }
  ),
  with_delegated_administrators_mixin(value):: (
    local converted = if std.isArray(value) then value else [value];
    assert (std.isArray(converted) && std.length(std.set(converted)) == std.length(converted)) : '"delegated_administrators" expected to be of type "set"';
    {
      delegated_administrators+: converted,
    }
  ),
  with_id(value):: (
    local converted = value;
    assert std.isString(converted) : '"id" expected to be of type "string"';
    {
      id: converted,
    }
  ),
  with_service_principal(value):: (
    local converted = value;
    assert std.isString(converted) : '"service_principal" expected to be of type "string"';
    {
      service_principal: converted,
    }
  ),
}
