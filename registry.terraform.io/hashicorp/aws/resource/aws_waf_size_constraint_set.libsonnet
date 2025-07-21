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
  size_constraints:: {
    local block = self,
    new(comparison_operator, size, text_transformation):: (
      {}
      + block.with_comparison_operator(comparison_operator)
      + block.with_size(size)
      + block.with_text_transformation(text_transformation)
    ),
    with_comparison_operator(value):: (
      local converted = value;
      assert std.isString(converted) : '"comparison_operator" expected to be of type "string"';
      {
        comparison_operator: converted,
      }
    ),
    with_size(value):: (
      local converted = value;
      assert std.isNumber(converted) : '"size" expected to be of type "number"';
      {
        size: converted,
      }
    ),
    with_text_transformation(value):: (
      local converted = value;
      assert std.isString(converted) : '"text_transformation" expected to be of type "string"';
      {
        text_transformation: converted,
      }
    ),
    field_to_match:: {
      local block = self,
      new(type):: (
        {}
        + block.with_type(type)
      ),
      with_data(value):: (
        local converted = value;
        assert std.isString(converted) : '"data" expected to be of type "string"';
        {
          data: converted,
        }
      ),
      with_type(value):: (
        local converted = value;
        assert std.isString(converted) : '"type" expected to be of type "string"';
        {
          type: converted,
        }
      ),
    },
    with_field_to_match(value):: (
      local converted = if std.isArray(value) then value else [value];
      {
        field_to_match: value,
      }
    ),
    with_field_to_match_mixin(value):: (
      local converted = if std.isArray(value) then value else [value];
      {
        field_to_match+: converted,
      }
    ),
  },
  with_size_constraints(value):: (
    local converted = if std.isArray(value) then value else [value];
    {
      size_constraints: value,
    }
  ),
  with_size_constraints_mixin(value):: (
    local converted = if std.isArray(value) then value else [value];
    {
      size_constraints+: converted,
    }
  ),
}
