{
  local block = self,
  new(deployment_config_name):: (
    {}
    + block.with_deployment_config_name(deployment_config_name)
  ),
  with_arn(value):: (
    local converted = value;
    assert std.isString(converted) : '"arn" expected to be of type "string"';
    {
      arn: converted,
    }
  ),
  with_compute_platform(value):: (
    local converted = value;
    assert std.isString(converted) : '"compute_platform" expected to be of type "string"';
    {
      compute_platform: converted,
    }
  ),
  with_deployment_config_id(value):: (
    local converted = value;
    assert std.isString(converted) : '"deployment_config_id" expected to be of type "string"';
    {
      deployment_config_id: converted,
    }
  ),
  with_deployment_config_name(value):: (
    local converted = value;
    assert std.isString(converted) : '"deployment_config_name" expected to be of type "string"';
    {
      deployment_config_name: converted,
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
  minimum_healthy_hosts:: {
    local block = self,
    new():: (
      {}
    ),
    with_type(value):: (
      local converted = value;
      assert std.isString(converted) : '"type" expected to be of type "string"';
      {
        type: converted,
      }
    ),
    with_value(value):: (
      local converted = value;
      assert std.isNumber(converted) : '"value" expected to be of type "number"';
      {
        value: converted,
      }
    ),
  },
  traffic_routing_config:: {
    local block = self,
    new():: (
      {}
    ),
    with_type(value):: (
      local converted = value;
      assert std.isString(converted) : '"type" expected to be of type "string"';
      {
        type: converted,
      }
    ),
    time_based_canary:: {
      local block = self,
      new():: (
        {}
      ),
      with_interval(value):: (
        local converted = value;
        assert std.isNumber(converted) : '"interval" expected to be of type "number"';
        {
          interval: converted,
        }
      ),
      with_percentage(value):: (
        local converted = value;
        assert std.isNumber(converted) : '"percentage" expected to be of type "number"';
        {
          percentage: converted,
        }
      ),
    },
    time_based_linear:: {
      local block = self,
      new():: (
        {}
      ),
      with_interval(value):: (
        local converted = value;
        assert std.isNumber(converted) : '"interval" expected to be of type "number"';
        {
          interval: converted,
        }
      ),
      with_percentage(value):: (
        local converted = value;
        assert std.isNumber(converted) : '"percentage" expected to be of type "number"';
        {
          percentage: converted,
        }
      ),
    },
    with_time_based_canary(value):: (
      local converted = if std.isArray(value) then value else [value];
      {
        time_based_canary: value,
      }
    ),
    with_time_based_linear(value):: (
      local converted = if std.isArray(value) then value else [value];
      {
        time_based_linear: value,
      }
    ),
    with_time_based_canary_mixin(value):: (
      local converted = if std.isArray(value) then value else [value];
      {
        time_based_canary+: converted,
      }
    ),
    with_time_based_linear_mixin(value):: (
      local converted = if std.isArray(value) then value else [value];
      {
        time_based_linear+: converted,
      }
    ),
  },
  zonal_config:: {
    local block = self,
    new():: (
      {}
    ),
    with_first_zone_monitor_duration_in_seconds(value):: (
      local converted = value;
      assert std.isNumber(converted) : '"first_zone_monitor_duration_in_seconds" expected to be of type "number"';
      {
        first_zone_monitor_duration_in_seconds: converted,
      }
    ),
    with_monitor_duration_in_seconds(value):: (
      local converted = value;
      assert std.isNumber(converted) : '"monitor_duration_in_seconds" expected to be of type "number"';
      {
        monitor_duration_in_seconds: converted,
      }
    ),
    minimum_healthy_hosts_per_zone:: {
      local block = self,
      new():: (
        {}
      ),
      with_type(value):: (
        local converted = value;
        assert std.isString(converted) : '"type" expected to be of type "string"';
        {
          type: converted,
        }
      ),
      with_value(value):: (
        local converted = value;
        assert std.isNumber(converted) : '"value" expected to be of type "number"';
        {
          value: converted,
        }
      ),
    },
    with_minimum_healthy_hosts_per_zone(value):: (
      local converted = if std.isArray(value) then value else [value];
      {
        minimum_healthy_hosts_per_zone: value,
      }
    ),
    with_minimum_healthy_hosts_per_zone_mixin(value):: (
      local converted = if std.isArray(value) then value else [value];
      {
        minimum_healthy_hosts_per_zone+: converted,
      }
    ),
  },
  with_minimum_healthy_hosts(value):: (
    local converted = if std.isArray(value) then value else [value];
    {
      minimum_healthy_hosts: value,
    }
  ),
  with_traffic_routing_config(value):: (
    local converted = if std.isArray(value) then value else [value];
    {
      traffic_routing_config: value,
    }
  ),
  with_zonal_config(value):: (
    local converted = if std.isArray(value) then value else [value];
    {
      zonal_config: value,
    }
  ),
  with_minimum_healthy_hosts_mixin(value):: (
    local converted = if std.isArray(value) then value else [value];
    {
      minimum_healthy_hosts+: converted,
    }
  ),
  with_traffic_routing_config_mixin(value):: (
    local converted = if std.isArray(value) then value else [value];
    {
      traffic_routing_config+: converted,
    }
  ),
  with_zonal_config_mixin(value):: (
    local converted = if std.isArray(value) then value else [value];
    {
      zonal_config+: converted,
    }
  ),
}
