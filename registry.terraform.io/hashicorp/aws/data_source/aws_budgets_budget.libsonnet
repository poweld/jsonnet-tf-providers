{
  local block = self,
  new(name):: (
    {}
    + block.with_name(name)
  ),
  with_account_id(value):: (
    local converted = value;
    assert std.isString(converted) : '"account_id" expected to be of type "string"';
    {
      account_id: converted,
    }
  ),
  with_arn(value):: (
    local converted = value;
    assert std.isString(converted) : '"arn" expected to be of type "string"';
    {
      arn: converted,
    }
  ),
  with_auto_adjust_data(value):: (
    local converted = if std.isArray(value) then value else [value];
    assert std.isArray(converted) : '"auto_adjust_data" expected to be of type "list"';
    {
      auto_adjust_data: converted,
    }
  ),
  with_auto_adjust_data_mixin(value):: (
    local converted = if std.isArray(value) then value else [value];
    assert std.isArray(converted) : '"auto_adjust_data" expected to be of type "list"';
    {
      auto_adjust_data+: converted,
    }
  ),
  with_budget_exceeded(value):: (
    local converted = value;
    assert std.isBoolean(converted) : '"budget_exceeded" expected to be of type "bool"';
    {
      budget_exceeded: converted,
    }
  ),
  with_budget_limit(value):: (
    local converted = if std.isArray(value) then value else [value];
    assert std.isArray(converted) : '"budget_limit" expected to be of type "list"';
    {
      budget_limit: converted,
    }
  ),
  with_budget_limit_mixin(value):: (
    local converted = if std.isArray(value) then value else [value];
    assert std.isArray(converted) : '"budget_limit" expected to be of type "list"';
    {
      budget_limit+: converted,
    }
  ),
  with_budget_type(value):: (
    local converted = value;
    assert std.isString(converted) : '"budget_type" expected to be of type "string"';
    {
      budget_type: converted,
    }
  ),
  with_calculated_spend(value):: (
    local converted = if std.isArray(value) then value else [value];
    assert std.isArray(converted) : '"calculated_spend" expected to be of type "list"';
    {
      calculated_spend: converted,
    }
  ),
  with_calculated_spend_mixin(value):: (
    local converted = if std.isArray(value) then value else [value];
    assert std.isArray(converted) : '"calculated_spend" expected to be of type "list"';
    {
      calculated_spend+: converted,
    }
  ),
  with_cost_filter(value):: (
    local converted = if std.isArray(value) then value else [value];
    assert (std.isArray(converted) && std.length(std.set(converted)) == std.length(converted)) : '"cost_filter" expected to be of type "set"';
    {
      cost_filter: converted,
    }
  ),
  with_cost_filter_mixin(value):: (
    local converted = if std.isArray(value) then value else [value];
    assert (std.isArray(converted) && std.length(std.set(converted)) == std.length(converted)) : '"cost_filter" expected to be of type "set"';
    {
      cost_filter+: converted,
    }
  ),
  with_cost_types(value):: (
    local converted = if std.isArray(value) then value else [value];
    assert std.isArray(converted) : '"cost_types" expected to be of type "list"';
    {
      cost_types: converted,
    }
  ),
  with_cost_types_mixin(value):: (
    local converted = if std.isArray(value) then value else [value];
    assert std.isArray(converted) : '"cost_types" expected to be of type "list"';
    {
      cost_types+: converted,
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
  with_name_prefix(value):: (
    local converted = value;
    assert std.isString(converted) : '"name_prefix" expected to be of type "string"';
    {
      name_prefix: converted,
    }
  ),
  with_notification(value):: (
    local converted = if std.isArray(value) then value else [value];
    assert (std.isArray(converted) && std.length(std.set(converted)) == std.length(converted)) : '"notification" expected to be of type "set"';
    {
      notification: converted,
    }
  ),
  with_notification_mixin(value):: (
    local converted = if std.isArray(value) then value else [value];
    assert (std.isArray(converted) && std.length(std.set(converted)) == std.length(converted)) : '"notification" expected to be of type "set"';
    {
      notification+: converted,
    }
  ),
  with_planned_limit(value):: (
    local converted = if std.isArray(value) then value else [value];
    assert (std.isArray(converted) && std.length(std.set(converted)) == std.length(converted)) : '"planned_limit" expected to be of type "set"';
    {
      planned_limit: converted,
    }
  ),
  with_planned_limit_mixin(value):: (
    local converted = if std.isArray(value) then value else [value];
    assert (std.isArray(converted) && std.length(std.set(converted)) == std.length(converted)) : '"planned_limit" expected to be of type "set"';
    {
      planned_limit+: converted,
    }
  ),
  with_tags(value):: (
    local converted = value;
    assert std.isObject(converted) : '"tags" expected to be of type "map"';
    {
      tags: converted,
    }
  ),
  with_time_period_end(value):: (
    local converted = value;
    assert std.isString(converted) : '"time_period_end" expected to be of type "string"';
    {
      time_period_end: converted,
    }
  ),
  with_time_period_start(value):: (
    local converted = value;
    assert std.isString(converted) : '"time_period_start" expected to be of type "string"';
    {
      time_period_start: converted,
    }
  ),
  with_time_unit(value):: (
    local converted = value;
    assert std.isString(converted) : '"time_unit" expected to be of type "string"';
    {
      time_unit: converted,
    }
  ),
}
