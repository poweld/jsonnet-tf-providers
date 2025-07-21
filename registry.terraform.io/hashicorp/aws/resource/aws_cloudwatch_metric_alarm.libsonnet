{
  local block = self,
  new(alarm_name, comparison_operator, evaluation_periods):: (
    {}
    + block.with_alarm_name(alarm_name)
    + block.with_comparison_operator(comparison_operator)
    + block.with_evaluation_periods(evaluation_periods)
  ),
  with_actions_enabled(value):: (
    local converted = value;
    assert std.isBoolean(converted) : '"actions_enabled" expected to be of type "bool"';
    {
      actions_enabled: converted,
    }
  ),
  with_alarm_actions(value):: (
    local converted = if std.isArray(value) then value else [value];
    assert (std.isArray(converted) && std.length(std.set(converted)) == std.length(converted)) : '"alarm_actions" expected to be of type "set"';
    {
      alarm_actions: converted,
    }
  ),
  with_alarm_actions_mixin(value):: (
    local converted = if std.isArray(value) then value else [value];
    assert (std.isArray(converted) && std.length(std.set(converted)) == std.length(converted)) : '"alarm_actions" expected to be of type "set"';
    {
      alarm_actions+: converted,
    }
  ),
  with_alarm_description(value):: (
    local converted = value;
    assert std.isString(converted) : '"alarm_description" expected to be of type "string"';
    {
      alarm_description: converted,
    }
  ),
  with_alarm_name(value):: (
    local converted = value;
    assert std.isString(converted) : '"alarm_name" expected to be of type "string"';
    {
      alarm_name: converted,
    }
  ),
  with_arn(value):: (
    local converted = value;
    assert std.isString(converted) : '"arn" expected to be of type "string"';
    {
      arn: converted,
    }
  ),
  with_comparison_operator(value):: (
    local converted = value;
    assert std.isString(converted) : '"comparison_operator" expected to be of type "string"';
    {
      comparison_operator: converted,
    }
  ),
  with_datapoints_to_alarm(value):: (
    local converted = value;
    assert std.isNumber(converted) : '"datapoints_to_alarm" expected to be of type "number"';
    {
      datapoints_to_alarm: converted,
    }
  ),
  with_dimensions(value):: (
    local converted = value;
    assert std.isObject(converted) : '"dimensions" expected to be of type "map"';
    {
      dimensions: converted,
    }
  ),
  with_evaluate_low_sample_count_percentiles(value):: (
    local converted = value;
    assert std.isString(converted) : '"evaluate_low_sample_count_percentiles" expected to be of type "string"';
    {
      evaluate_low_sample_count_percentiles: converted,
    }
  ),
  with_evaluation_periods(value):: (
    local converted = value;
    assert std.isNumber(converted) : '"evaluation_periods" expected to be of type "number"';
    {
      evaluation_periods: converted,
    }
  ),
  with_extended_statistic(value):: (
    local converted = value;
    assert std.isString(converted) : '"extended_statistic" expected to be of type "string"';
    {
      extended_statistic: converted,
    }
  ),
  with_id(value):: (
    local converted = value;
    assert std.isString(converted) : '"id" expected to be of type "string"';
    {
      id: converted,
    }
  ),
  with_insufficient_data_actions(value):: (
    local converted = if std.isArray(value) then value else [value];
    assert (std.isArray(converted) && std.length(std.set(converted)) == std.length(converted)) : '"insufficient_data_actions" expected to be of type "set"';
    {
      insufficient_data_actions: converted,
    }
  ),
  with_insufficient_data_actions_mixin(value):: (
    local converted = if std.isArray(value) then value else [value];
    assert (std.isArray(converted) && std.length(std.set(converted)) == std.length(converted)) : '"insufficient_data_actions" expected to be of type "set"';
    {
      insufficient_data_actions+: converted,
    }
  ),
  with_metric_name(value):: (
    local converted = value;
    assert std.isString(converted) : '"metric_name" expected to be of type "string"';
    {
      metric_name: converted,
    }
  ),
  with_namespace(value):: (
    local converted = value;
    assert std.isString(converted) : '"namespace" expected to be of type "string"';
    {
      namespace: converted,
    }
  ),
  with_ok_actions(value):: (
    local converted = if std.isArray(value) then value else [value];
    assert (std.isArray(converted) && std.length(std.set(converted)) == std.length(converted)) : '"ok_actions" expected to be of type "set"';
    {
      ok_actions: converted,
    }
  ),
  with_ok_actions_mixin(value):: (
    local converted = if std.isArray(value) then value else [value];
    assert (std.isArray(converted) && std.length(std.set(converted)) == std.length(converted)) : '"ok_actions" expected to be of type "set"';
    {
      ok_actions+: converted,
    }
  ),
  with_period(value):: (
    local converted = value;
    assert std.isNumber(converted) : '"period" expected to be of type "number"';
    {
      period: converted,
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
  with_statistic(value):: (
    local converted = value;
    assert std.isString(converted) : '"statistic" expected to be of type "string"';
    {
      statistic: converted,
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
  with_threshold(value):: (
    local converted = value;
    assert std.isNumber(converted) : '"threshold" expected to be of type "number"';
    {
      threshold: converted,
    }
  ),
  with_threshold_metric_id(value):: (
    local converted = value;
    assert std.isString(converted) : '"threshold_metric_id" expected to be of type "string"';
    {
      threshold_metric_id: converted,
    }
  ),
  with_treat_missing_data(value):: (
    local converted = value;
    assert std.isString(converted) : '"treat_missing_data" expected to be of type "string"';
    {
      treat_missing_data: converted,
    }
  ),
  with_unit(value):: (
    local converted = value;
    assert std.isString(converted) : '"unit" expected to be of type "string"';
    {
      unit: converted,
    }
  ),
  metric_query:: {
    local block = self,
    new(id):: (
      {}
      + block.with_id(id)
    ),
    with_account_id(value):: (
      local converted = value;
      assert std.isString(converted) : '"account_id" expected to be of type "string"';
      {
        account_id: converted,
      }
    ),
    with_expression(value):: (
      local converted = value;
      assert std.isString(converted) : '"expression" expected to be of type "string"';
      {
        expression: converted,
      }
    ),
    with_id(value):: (
      local converted = value;
      assert std.isString(converted) : '"id" expected to be of type "string"';
      {
        id: converted,
      }
    ),
    with_label(value):: (
      local converted = value;
      assert std.isString(converted) : '"label" expected to be of type "string"';
      {
        label: converted,
      }
    ),
    with_period(value):: (
      local converted = value;
      assert std.isNumber(converted) : '"period" expected to be of type "number"';
      {
        period: converted,
      }
    ),
    with_return_data(value):: (
      local converted = value;
      assert std.isBoolean(converted) : '"return_data" expected to be of type "bool"';
      {
        return_data: converted,
      }
    ),
    metric:: {
      local block = self,
      new(metric_name, period, stat):: (
        {}
        + block.with_metric_name(metric_name)
        + block.with_period(period)
        + block.with_stat(stat)
      ),
      with_dimensions(value):: (
        local converted = value;
        assert std.isObject(converted) : '"dimensions" expected to be of type "map"';
        {
          dimensions: converted,
        }
      ),
      with_metric_name(value):: (
        local converted = value;
        assert std.isString(converted) : '"metric_name" expected to be of type "string"';
        {
          metric_name: converted,
        }
      ),
      with_namespace(value):: (
        local converted = value;
        assert std.isString(converted) : '"namespace" expected to be of type "string"';
        {
          namespace: converted,
        }
      ),
      with_period(value):: (
        local converted = value;
        assert std.isNumber(converted) : '"period" expected to be of type "number"';
        {
          period: converted,
        }
      ),
      with_stat(value):: (
        local converted = value;
        assert std.isString(converted) : '"stat" expected to be of type "string"';
        {
          stat: converted,
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
    with_metric(value):: (
      local converted = if std.isArray(value) then value else [value];
      {
        metric: value,
      }
    ),
    with_metric_mixin(value):: (
      local converted = if std.isArray(value) then value else [value];
      {
        metric+: converted,
      }
    ),
  },
  with_metric_query(value):: (
    local converted = if std.isArray(value) then value else [value];
    {
      metric_query: value,
    }
  ),
  with_metric_query_mixin(value):: (
    local converted = if std.isArray(value) then value else [value];
    {
      metric_query+: converted,
    }
  ),
}
