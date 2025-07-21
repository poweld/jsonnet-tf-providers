{
  local block = self,
  new(block_public_security_group_rules):: (
    {}
    + block.with_block_public_security_group_rules(block_public_security_group_rules)
  ),
  with_block_public_security_group_rules(value):: (
    local converted = value;
    assert std.isBoolean(converted) : '"block_public_security_group_rules" expected to be of type "bool"';
    {
      block_public_security_group_rules: converted,
    }
  ),
  with_id(value):: (
    local converted = value;
    assert std.isString(converted) : '"id" expected to be of type "string"';
    {
      id: converted,
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
  permitted_public_security_group_rule_range:: {
    local block = self,
    new(max_range, min_range):: (
      {}
      + block.with_max_range(max_range)
      + block.with_min_range(min_range)
    ),
    with_max_range(value):: (
      local converted = value;
      assert std.isNumber(converted) : '"max_range" expected to be of type "number"';
      {
        max_range: converted,
      }
    ),
    with_min_range(value):: (
      local converted = value;
      assert std.isNumber(converted) : '"min_range" expected to be of type "number"';
      {
        min_range: converted,
      }
    ),
  },
  with_permitted_public_security_group_rule_range(value):: (
    local converted = if std.isArray(value) then value else [value];
    {
      permitted_public_security_group_rule_range: value,
    }
  ),
  with_permitted_public_security_group_rule_range_mixin(value):: (
    local converted = if std.isArray(value) then value else [value];
    {
      permitted_public_security_group_rule_range+: converted,
    }
  ),
}
