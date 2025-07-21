{
  local block = self,
  new(name):: (
    {}
    + block.with_name(name)
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
  '#with_region':: 'Region where this resource will be [managed](https://docs.aws.amazon.com/general/latest/gr/rande.html#regional-endpoints). Defaults to the Region set in the [provider configuration](https://registry.terraform.io/providers/hashicorp/aws/latest/docs#aws-configuration-reference).',
  with_region(value):: (
    local converted = value;
    assert std.isString(converted) : '"region" expected to be of type "string"';
    {
      region: converted,
    }
  ),
  byte_match_tuples:: {
    local block = self,
    new(positional_constraint, text_transformation):: (
      {}
      + block.with_positional_constraint(positional_constraint)
      + block.with_text_transformation(text_transformation)
    ),
    with_positional_constraint(value):: (
      local converted = value;
      assert std.isString(converted) : '"positional_constraint" expected to be of type "string"';
      {
        positional_constraint: converted,
      }
    ),
    with_target_string(value):: (
      local converted = value;
      assert std.isString(converted) : '"target_string" expected to be of type "string"';
      {
        target_string: converted,
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
  with_byte_match_tuples(value):: (
    local converted = if std.isArray(value) then value else [value];
    {
      byte_match_tuples: value,
    }
  ),
  with_byte_match_tuples_mixin(value):: (
    local converted = if std.isArray(value) then value else [value];
    {
      byte_match_tuples+: converted,
    }
  ),
}
