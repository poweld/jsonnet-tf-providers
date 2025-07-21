{
  local block = self,
  new():: (
    {}
  ),
  with_arn(value):: (
    local converted = value;
    assert std.isString(converted) : '"arn" expected to be of type "string"';
    {
      arn: converted,
    }
  ),
  with_id(value):: (
    local converted = value;
    assert std.isString(converted) : '"id" expected to be of type "string"';
    {
      id: converted,
    }
  ),
  with_name_servers(value):: (
    local converted = if std.isArray(value) then value else [value];
    assert std.isArray(converted) : '"name_servers" expected to be of type "list"';
    {
      name_servers: converted,
    }
  ),
  with_name_servers_mixin(value):: (
    local converted = if std.isArray(value) then value else [value];
    assert std.isArray(converted) : '"name_servers" expected to be of type "list"';
    {
      name_servers+: converted,
    }
  ),
  with_reference_name(value):: (
    local converted = value;
    assert std.isString(converted) : '"reference_name" expected to be of type "string"';
    {
      reference_name: converted,
    }
  ),
}
