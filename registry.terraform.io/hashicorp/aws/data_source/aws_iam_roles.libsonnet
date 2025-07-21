{
  local block = self,
  new():: (
    {}
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
  with_name_regex(value):: (
    local converted = value;
    assert std.isString(converted) : '"name_regex" expected to be of type "string"';
    {
      name_regex: converted,
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
  with_path_prefix(value):: (
    local converted = value;
    assert std.isString(converted) : '"path_prefix" expected to be of type "string"';
    {
      path_prefix: converted,
    }
  ),
}
