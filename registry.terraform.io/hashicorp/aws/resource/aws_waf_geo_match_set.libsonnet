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
  geo_match_constraint:: {
    local block = self,
    new(type, value):: (
      {}
      + block.with_type(type)
      + block.with_value(value)
    ),
    with_type(value):: (
      local converted = value;
      assert std.isString(converted) : '"type" expected to be of type "string"';
      {
        type: converted,
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
  with_geo_match_constraint(value):: (
    local converted = if std.isArray(value) then value else [value];
    {
      geo_match_constraint: value,
    }
  ),
  with_geo_match_constraint_mixin(value):: (
    local converted = if std.isArray(value) then value else [value];
    {
      geo_match_constraint+: converted,
    }
  ),
}
