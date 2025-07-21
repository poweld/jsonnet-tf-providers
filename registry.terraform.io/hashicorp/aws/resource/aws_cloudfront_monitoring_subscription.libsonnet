{
  local block = self,
  new(distribution_id):: (
    {}
    + block.with_distribution_id(distribution_id)
  ),
  with_distribution_id(value):: (
    local converted = value;
    assert std.isString(converted) : '"distribution_id" expected to be of type "string"';
    {
      distribution_id: converted,
    }
  ),
  with_id(value):: (
    local converted = value;
    assert std.isString(converted) : '"id" expected to be of type "string"';
    {
      id: converted,
    }
  ),
  monitoring_subscription:: {
    local block = self,
    new():: (
      {}
    ),
    realtime_metrics_subscription_config:: {
      local block = self,
      new(realtime_metrics_subscription_status):: (
        {}
        + block.with_realtime_metrics_subscription_status(realtime_metrics_subscription_status)
      ),
      with_realtime_metrics_subscription_status(value):: (
        local converted = value;
        assert std.isString(converted) : '"realtime_metrics_subscription_status" expected to be of type "string"';
        {
          realtime_metrics_subscription_status: converted,
        }
      ),
    },
    with_realtime_metrics_subscription_config(value):: (
      local converted = if std.isArray(value) then value else [value];
      {
        realtime_metrics_subscription_config: value,
      }
    ),
    with_realtime_metrics_subscription_config_mixin(value):: (
      local converted = if std.isArray(value) then value else [value];
      {
        realtime_metrics_subscription_config+: converted,
      }
    ),
  },
  with_monitoring_subscription(value):: (
    local converted = if std.isArray(value) then value else [value];
    {
      monitoring_subscription: value,
    }
  ),
  with_monitoring_subscription_mixin(value):: (
    local converted = if std.isArray(value) then value else [value];
    {
      monitoring_subscription+: converted,
    }
  ),
}
