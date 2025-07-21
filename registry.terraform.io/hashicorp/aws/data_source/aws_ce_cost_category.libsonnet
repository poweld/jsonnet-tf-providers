{
  local block = self,
  new(cost_category_arn):: (
    {}
    + block.with_cost_category_arn(cost_category_arn)
  ),
  with_cost_category_arn(value):: (
    local converted = value;
    assert std.isString(converted) : '"cost_category_arn" expected to be of type "string"';
    {
      cost_category_arn: converted,
    }
  ),
  with_default_value(value):: (
    local converted = value;
    assert std.isString(converted) : '"default_value" expected to be of type "string"';
    {
      default_value: converted,
    }
  ),
  with_effective_end(value):: (
    local converted = value;
    assert std.isString(converted) : '"effective_end" expected to be of type "string"';
    {
      effective_end: converted,
    }
  ),
  with_effective_start(value):: (
    local converted = value;
    assert std.isString(converted) : '"effective_start" expected to be of type "string"';
    {
      effective_start: converted,
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
  with_rule(value):: (
    local converted = if std.isArray(value) then value else [value];
    assert (std.isArray(converted) && std.length(std.set(converted)) == std.length(converted)) : '"rule" expected to be of type "set"';
    {
      rule: converted,
    }
  ),
  with_rule_mixin(value):: (
    local converted = if std.isArray(value) then value else [value];
    assert (std.isArray(converted) && std.length(std.set(converted)) == std.length(converted)) : '"rule" expected to be of type "set"';
    {
      rule+: converted,
    }
  ),
  with_rule_version(value):: (
    local converted = value;
    assert std.isString(converted) : '"rule_version" expected to be of type "string"';
    {
      rule_version: converted,
    }
  ),
  with_split_charge_rule(value):: (
    local converted = if std.isArray(value) then value else [value];
    assert (std.isArray(converted) && std.length(std.set(converted)) == std.length(converted)) : '"split_charge_rule" expected to be of type "set"';
    {
      split_charge_rule: converted,
    }
  ),
  with_split_charge_rule_mixin(value):: (
    local converted = if std.isArray(value) then value else [value];
    assert (std.isArray(converted) && std.length(std.set(converted)) == std.length(converted)) : '"split_charge_rule" expected to be of type "set"';
    {
      split_charge_rule+: converted,
    }
  ),
  with_tags(value):: (
    local converted = value;
    assert std.isObject(converted) : '"tags" expected to be of type "map"';
    {
      tags: converted,
    }
  ),
}
