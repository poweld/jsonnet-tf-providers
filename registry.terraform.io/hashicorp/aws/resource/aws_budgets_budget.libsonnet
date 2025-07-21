{
  local block = self,
  new(budget_type, time_unit):: (
    {}
    + block.with_budget_type(budget_type)
    + block.with_time_unit(time_unit)
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
  with_budget_type(value):: (
    local converted = value;
    assert std.isString(converted) : '"budget_type" expected to be of type "string"';
    {
      budget_type: converted,
    }
  ),
  with_id(value):: (
    local converted = value;
    assert std.isString(converted) : '"id" expected to be of type "string"';
    {
      id: converted,
    }
  ),
  with_limit_amount(value):: (
    local converted = value;
    assert std.isString(converted) : '"limit_amount" expected to be of type "string"';
    {
      limit_amount: converted,
    }
  ),
  with_limit_unit(value):: (
    local converted = value;
    assert std.isString(converted) : '"limit_unit" expected to be of type "string"';
    {
      limit_unit: converted,
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
  with_tags(value):: (
    local converted = value;
    assert std.isObject(converted) : '"tags" expected to be of type "map"';
    {
      tags: converted,
    }
  ),
  with_tags_all(value):: (
    local converted = value;
    assert std.isObject(converted) : '"tags_all" expected to be of type "map"';
    {
      tags_all: converted,
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
  auto_adjust_data:: {
    local block = self,
    new(auto_adjust_type):: (
      {}
      + block.with_auto_adjust_type(auto_adjust_type)
    ),
    with_auto_adjust_type(value):: (
      local converted = value;
      assert std.isString(converted) : '"auto_adjust_type" expected to be of type "string"';
      {
        auto_adjust_type: converted,
      }
    ),
    with_last_auto_adjust_time(value):: (
      local converted = value;
      assert std.isString(converted) : '"last_auto_adjust_time" expected to be of type "string"';
      {
        last_auto_adjust_time: converted,
      }
    ),
    historical_options:: {
      local block = self,
      new(budget_adjustment_period):: (
        {}
        + block.with_budget_adjustment_period(budget_adjustment_period)
      ),
      with_budget_adjustment_period(value):: (
        local converted = value;
        assert std.isNumber(converted) : '"budget_adjustment_period" expected to be of type "number"';
        {
          budget_adjustment_period: converted,
        }
      ),
      with_lookback_available_periods(value):: (
        local converted = value;
        assert std.isNumber(converted) : '"lookback_available_periods" expected to be of type "number"';
        {
          lookback_available_periods: converted,
        }
      ),
    },
    with_historical_options(value):: (
      local converted = if std.isArray(value) then value else [value];
      {
        historical_options: value,
      }
    ),
    with_historical_options_mixin(value):: (
      local converted = if std.isArray(value) then value else [value];
      {
        historical_options+: converted,
      }
    ),
  },
  cost_filter:: {
    local block = self,
    new(name, values):: (
      {}
      + block.with_name(name)
      + block.with_values(values)
    ),
    with_name(value):: (
      local converted = value;
      assert std.isString(converted) : '"name" expected to be of type "string"';
      {
        name: converted,
      }
    ),
    with_values(value):: (
      local converted = if std.isArray(value) then value else [value];
      assert std.isArray(converted) : '"values" expected to be of type "list"';
      {
        values: converted,
      }
    ),
    with_values_mixin(value):: (
      local converted = if std.isArray(value) then value else [value];
      assert std.isArray(converted) : '"values" expected to be of type "list"';
      {
        values+: converted,
      }
    ),
  },
  cost_types:: {
    local block = self,
    new():: (
      {}
    ),
    with_include_credit(value):: (
      local converted = value;
      assert std.isBoolean(converted) : '"include_credit" expected to be of type "bool"';
      {
        include_credit: converted,
      }
    ),
    with_include_discount(value):: (
      local converted = value;
      assert std.isBoolean(converted) : '"include_discount" expected to be of type "bool"';
      {
        include_discount: converted,
      }
    ),
    with_include_other_subscription(value):: (
      local converted = value;
      assert std.isBoolean(converted) : '"include_other_subscription" expected to be of type "bool"';
      {
        include_other_subscription: converted,
      }
    ),
    with_include_recurring(value):: (
      local converted = value;
      assert std.isBoolean(converted) : '"include_recurring" expected to be of type "bool"';
      {
        include_recurring: converted,
      }
    ),
    with_include_refund(value):: (
      local converted = value;
      assert std.isBoolean(converted) : '"include_refund" expected to be of type "bool"';
      {
        include_refund: converted,
      }
    ),
    with_include_subscription(value):: (
      local converted = value;
      assert std.isBoolean(converted) : '"include_subscription" expected to be of type "bool"';
      {
        include_subscription: converted,
      }
    ),
    with_include_support(value):: (
      local converted = value;
      assert std.isBoolean(converted) : '"include_support" expected to be of type "bool"';
      {
        include_support: converted,
      }
    ),
    with_include_tax(value):: (
      local converted = value;
      assert std.isBoolean(converted) : '"include_tax" expected to be of type "bool"';
      {
        include_tax: converted,
      }
    ),
    with_include_upfront(value):: (
      local converted = value;
      assert std.isBoolean(converted) : '"include_upfront" expected to be of type "bool"';
      {
        include_upfront: converted,
      }
    ),
    with_use_amortized(value):: (
      local converted = value;
      assert std.isBoolean(converted) : '"use_amortized" expected to be of type "bool"';
      {
        use_amortized: converted,
      }
    ),
    with_use_blended(value):: (
      local converted = value;
      assert std.isBoolean(converted) : '"use_blended" expected to be of type "bool"';
      {
        use_blended: converted,
      }
    ),
  },
  notification:: {
    local block = self,
    new(comparison_operator, notification_type, threshold, threshold_type):: (
      {}
      + block.with_comparison_operator(comparison_operator)
      + block.with_notification_type(notification_type)
      + block.with_threshold(threshold)
      + block.with_threshold_type(threshold_type)
    ),
    with_comparison_operator(value):: (
      local converted = value;
      assert std.isString(converted) : '"comparison_operator" expected to be of type "string"';
      {
        comparison_operator: converted,
      }
    ),
    with_notification_type(value):: (
      local converted = value;
      assert std.isString(converted) : '"notification_type" expected to be of type "string"';
      {
        notification_type: converted,
      }
    ),
    with_subscriber_email_addresses(value):: (
      local converted = if std.isArray(value) then value else [value];
      assert (std.isArray(converted) && std.length(std.set(converted)) == std.length(converted)) : '"subscriber_email_addresses" expected to be of type "set"';
      {
        subscriber_email_addresses: converted,
      }
    ),
    with_subscriber_email_addresses_mixin(value):: (
      local converted = if std.isArray(value) then value else [value];
      assert (std.isArray(converted) && std.length(std.set(converted)) == std.length(converted)) : '"subscriber_email_addresses" expected to be of type "set"';
      {
        subscriber_email_addresses+: converted,
      }
    ),
    with_subscriber_sns_topic_arns(value):: (
      local converted = if std.isArray(value) then value else [value];
      assert (std.isArray(converted) && std.length(std.set(converted)) == std.length(converted)) : '"subscriber_sns_topic_arns" expected to be of type "set"';
      {
        subscriber_sns_topic_arns: converted,
      }
    ),
    with_subscriber_sns_topic_arns_mixin(value):: (
      local converted = if std.isArray(value) then value else [value];
      assert (std.isArray(converted) && std.length(std.set(converted)) == std.length(converted)) : '"subscriber_sns_topic_arns" expected to be of type "set"';
      {
        subscriber_sns_topic_arns+: converted,
      }
    ),
    with_threshold(value):: (
      local converted = value;
      assert std.isNumber(converted) : '"threshold" expected to be of type "number"';
      {
        threshold: converted,
      }
    ),
    with_threshold_type(value):: (
      local converted = value;
      assert std.isString(converted) : '"threshold_type" expected to be of type "string"';
      {
        threshold_type: converted,
      }
    ),
  },
  planned_limit:: {
    local block = self,
    new(amount, start_time, unit):: (
      {}
      + block.with_amount(amount)
      + block.with_start_time(start_time)
      + block.with_unit(unit)
    ),
    with_amount(value):: (
      local converted = value;
      assert std.isString(converted) : '"amount" expected to be of type "string"';
      {
        amount: converted,
      }
    ),
    with_start_time(value):: (
      local converted = value;
      assert std.isString(converted) : '"start_time" expected to be of type "string"';
      {
        start_time: converted,
      }
    ),
    with_unit(value):: (
      local converted = value;
      assert std.isString(converted) : '"unit" expected to be of type "string"';
      {
        unit: converted,
      }
    ),
  },
  with_auto_adjust_data(value):: (
    local converted = if std.isArray(value) then value else [value];
    {
      auto_adjust_data: value,
    }
  ),
  with_cost_filter(value):: (
    local converted = if std.isArray(value) then value else [value];
    {
      cost_filter: value,
    }
  ),
  with_cost_types(value):: (
    local converted = if std.isArray(value) then value else [value];
    {
      cost_types: value,
    }
  ),
  with_notification(value):: (
    local converted = if std.isArray(value) then value else [value];
    {
      notification: value,
    }
  ),
  with_planned_limit(value):: (
    local converted = if std.isArray(value) then value else [value];
    {
      planned_limit: value,
    }
  ),
  with_auto_adjust_data_mixin(value):: (
    local converted = if std.isArray(value) then value else [value];
    {
      auto_adjust_data+: converted,
    }
  ),
  with_cost_filter_mixin(value):: (
    local converted = if std.isArray(value) then value else [value];
    {
      cost_filter+: converted,
    }
  ),
  with_cost_types_mixin(value):: (
    local converted = if std.isArray(value) then value else [value];
    {
      cost_types+: converted,
    }
  ),
  with_notification_mixin(value):: (
    local converted = if std.isArray(value) then value else [value];
    {
      notification+: converted,
    }
  ),
  with_planned_limit_mixin(value):: (
    local converted = if std.isArray(value) then value else [value];
    {
      planned_limit+: converted,
    }
  ),
}
