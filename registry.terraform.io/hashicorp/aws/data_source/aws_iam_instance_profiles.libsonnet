{
  local block = self,
  new(role_name):: (
    {}
    + block.with_role_name(role_name)
  ),
  with_arns(value):: (
    local converted = if std.isArray(value) then value else [value];
    assert (std.isArray(converted) && std.length(std.set(converted)) == std.length(converted)) : '"arns" expected to be of type "set"';
    {
      arns: converted,
    }
  ),
  with_arns_mixin(value):: (
    local converted = if std.isArray(value) then value else [value];
    assert (std.isArray(converted) && std.length(std.set(converted)) == std.length(converted)) : '"arns" expected to be of type "set"';
    {
      arns+: converted,
    }
  ),
  with_id(value):: (
    local converted = value;
    assert std.isString(converted) : '"id" expected to be of type "string"';
    {
      id: converted,
    }
  ),
  with_names(value):: (
    local converted = if std.isArray(value) then value else [value];
    assert (std.isArray(converted) && std.length(std.set(converted)) == std.length(converted)) : '"names" expected to be of type "set"';
    {
      names: converted,
    }
  ),
  with_names_mixin(value):: (
    local converted = if std.isArray(value) then value else [value];
    assert (std.isArray(converted) && std.length(std.set(converted)) == std.length(converted)) : '"names" expected to be of type "set"';
    {
      names+: converted,
    }
  ),
  with_paths(value):: (
    local converted = if std.isArray(value) then value else [value];
    assert (std.isArray(converted) && std.length(std.set(converted)) == std.length(converted)) : '"paths" expected to be of type "set"';
    {
      paths: converted,
    }
  ),
  with_paths_mixin(value):: (
    local converted = if std.isArray(value) then value else [value];
    assert (std.isArray(converted) && std.length(std.set(converted)) == std.length(converted)) : '"paths" expected to be of type "set"';
    {
      paths+: converted,
    }
  ),
  with_role_name(value):: (
    local converted = value;
    assert std.isString(converted) : '"role_name" expected to be of type "string"';
    {
      role_name: converted,
    }
  ),
}
