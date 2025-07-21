{
  local block = self,
  new(analyzer_name, rule_name):: (
    {}
    + block.with_analyzer_name(analyzer_name)
    + block.with_rule_name(rule_name)
  ),
  with_analyzer_name(value):: (
    local converted = value;
    assert std.isString(converted) : '"analyzer_name" expected to be of type "string"';
    {
      analyzer_name: converted,
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
  with_rule_name(value):: (
    local converted = value;
    assert std.isString(converted) : '"rule_name" expected to be of type "string"';
    {
      rule_name: converted,
    }
  ),
  filter:: {
    local block = self,
    new(criteria):: (
      {}
      + block.with_criteria(criteria)
    ),
    with_contains(value):: (
      local converted = if std.isArray(value) then value else [value];
      assert std.isArray(converted) : '"contains" expected to be of type "list"';
      {
        contains: converted,
      }
    ),
    with_contains_mixin(value):: (
      local converted = if std.isArray(value) then value else [value];
      assert std.isArray(converted) : '"contains" expected to be of type "list"';
      {
        contains+: converted,
      }
    ),
    with_criteria(value):: (
      local converted = value;
      assert std.isString(converted) : '"criteria" expected to be of type "string"';
      {
        criteria: converted,
      }
    ),
    with_eq(value):: (
      local converted = if std.isArray(value) then value else [value];
      assert std.isArray(converted) : '"eq" expected to be of type "list"';
      {
        eq: converted,
      }
    ),
    with_eq_mixin(value):: (
      local converted = if std.isArray(value) then value else [value];
      assert std.isArray(converted) : '"eq" expected to be of type "list"';
      {
        eq+: converted,
      }
    ),
    with_exists(value):: (
      local converted = value;
      assert std.isString(converted) : '"exists" expected to be of type "string"';
      {
        exists: converted,
      }
    ),
    with_neq(value):: (
      local converted = if std.isArray(value) then value else [value];
      assert std.isArray(converted) : '"neq" expected to be of type "list"';
      {
        neq: converted,
      }
    ),
    with_neq_mixin(value):: (
      local converted = if std.isArray(value) then value else [value];
      assert std.isArray(converted) : '"neq" expected to be of type "list"';
      {
        neq+: converted,
      }
    ),
  },
  with_filter(value):: (
    local converted = if std.isArray(value) then value else [value];
    {
      filter: value,
    }
  ),
  with_filter_mixin(value):: (
    local converted = if std.isArray(value) then value else [value];
    {
      filter+: converted,
    }
  ),
}
