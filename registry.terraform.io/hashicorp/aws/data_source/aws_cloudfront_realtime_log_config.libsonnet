{
  local block = self,
  new(name):: (
    {}
    + block.with_name(name)
  ),
  with_arn(value):: (
    local converted = value;
    assert std.isString(converted) : '"arn" expected to be of type "string"';
    {
      arn: converted,
    }
  ),
  with_endpoint(value):: (
    local converted = if std.isArray(value) then value else [value];
    assert std.isArray(converted) : '"endpoint" expected to be of type "list"';
    {
      endpoint: converted,
    }
  ),
  with_endpoint_mixin(value):: (
    local converted = if std.isArray(value) then value else [value];
    assert std.isArray(converted) : '"endpoint" expected to be of type "list"';
    {
      endpoint+: converted,
    }
  ),
  with_fields(value):: (
    local converted = if std.isArray(value) then value else [value];
    assert (std.isArray(converted) && std.length(std.set(converted)) == std.length(converted)) : '"fields" expected to be of type "set"';
    {
      fields: converted,
    }
  ),
  with_fields_mixin(value):: (
    local converted = if std.isArray(value) then value else [value];
    assert (std.isArray(converted) && std.length(std.set(converted)) == std.length(converted)) : '"fields" expected to be of type "set"';
    {
      fields+: converted,
    }
  ),
  with_id(value):: (
    local converted = value;
    assert std.isString(converted) : '"id" expected to be of type "string"';
    {
      id: converted,
    }
  ),
  with_name(value):: (
    local converted = value;
    assert std.isString(converted) : '"name" expected to be of type "string"';
    {
      name: converted,
    }
  ),
  with_sampling_rate(value):: (
    local converted = value;
    assert std.isNumber(converted) : '"sampling_rate" expected to be of type "number"';
    {
      sampling_rate: converted,
    }
  ),
}
