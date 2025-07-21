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
  regex_match_tuple:: {
    local block = self,
    new(regex_pattern_set_id, text_transformation):: (
      {}
      + block.with_regex_pattern_set_id(regex_pattern_set_id)
      + block.with_text_transformation(text_transformation)
    ),
    with_regex_pattern_set_id(value):: (
      local converted = value;
      assert std.isString(converted) : '"regex_pattern_set_id" expected to be of type "string"';
      {
        regex_pattern_set_id: converted,
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
  with_regex_match_tuple(value):: (
    local converted = if std.isArray(value) then value else [value];
    {
      regex_match_tuple: value,
    }
  ),
  with_regex_match_tuple_mixin(value):: (
    local converted = if std.isArray(value) then value else [value];
    {
      regex_match_tuple+: converted,
    }
  ),
}
