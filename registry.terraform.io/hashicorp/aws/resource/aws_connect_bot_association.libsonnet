{
  local block = self,
  new(instance_id):: (
    {}
    + block.with_instance_id(instance_id)
  ),
  with_id(value):: (
    local converted = value;
    assert std.isString(converted) : '"id" expected to be of type "string"';
    {
      id: converted,
    }
  ),
  with_instance_id(value):: (
    local converted = value;
    assert std.isString(converted) : '"instance_id" expected to be of type "string"';
    {
      instance_id: converted,
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
  lex_bot:: {
    local block = self,
    new(name):: (
      {}
      + block.with_name(name)
    ),
    with_lex_region(value):: (
      local converted = value;
      assert std.isString(converted) : '"lex_region" expected to be of type "string"';
      {
        lex_region: converted,
      }
    ),
    with_name(value):: (
      local converted = value;
      assert std.isString(converted) : '"name" expected to be of type "string"';
      {
        name: converted,
      }
    ),
  },
  with_lex_bot(value):: (
    local converted = if std.isArray(value) then value else [value];
    {
      lex_bot: value,
    }
  ),
  with_lex_bot_mixin(value):: (
    local converted = if std.isArray(value) then value else [value];
    {
      lex_bot+: converted,
    }
  ),
}
