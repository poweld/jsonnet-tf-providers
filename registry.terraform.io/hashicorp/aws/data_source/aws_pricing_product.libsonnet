{
  local block = self,
  new(service_code):: (
    {}
    + block.with_service_code(service_code)
  ),
  with_id(value):: (
    local converted = value;
    assert std.isString(converted) : '"id" expected to be of type "string"';
    {
      id: converted,
    }
  ),
  with_result(value):: (
    local converted = value;
    assert std.isString(converted) : '"result" expected to be of type "string"';
    {
      result: converted,
    }
  ),
  with_service_code(value):: (
    local converted = value;
    assert std.isString(converted) : '"service_code" expected to be of type "string"';
    {
      service_code: converted,
    }
  ),
  filters:: {
    local block = self,
    new(field, value):: (
      {}
      + block.with_field(field)
      + block.with_value(value)
    ),
    with_field(value):: (
      local converted = value;
      assert std.isString(converted) : '"field" expected to be of type "string"';
      {
        field: converted,
      }
    ),
    with_value(value):: (
      local converted = value;
      assert std.isString(converted) : '"value" expected to be of type "string"';
      {
        value: converted,
      }
    ),
  },
  with_filters(value):: (
    local converted = if std.isArray(value) then value else [value];
    {
      filters: value,
    }
  ),
  with_filters_mixin(value):: (
    local converted = if std.isArray(value) then value else [value];
    {
      filters+: converted,
    }
  ),
}
