{
  local block = self,
  new():: (
    {}
  ),
  with_arn(value):: (
    local converted = value;
    assert std.isString(converted) : '"arn" expected to be of type "string"';
    {
      arn: converted,
    }
  ),
  with_arn_suffix(value):: (
    local converted = value;
    assert std.isString(converted) : '"arn_suffix" expected to be of type "string"';
    {
      arn_suffix: converted,
    }
  ),
  with_connection_termination(value):: (
    local converted = value;
    assert std.isBoolean(converted) : '"connection_termination" expected to be of type "bool"';
    {
      connection_termination: converted,
    }
  ),
  with_deregistration_delay(value):: (
    local converted = value;
    assert std.isString(converted) : '"deregistration_delay" expected to be of type "string"';
    {
      deregistration_delay: converted,
    }
  ),
  with_id(value):: (
    local converted = value;
    assert std.isString(converted) : '"id" expected to be of type "string"';
    {
      id: converted,
    }
  ),
  with_ip_address_type(value):: (
    local converted = value;
    assert std.isString(converted) : '"ip_address_type" expected to be of type "string"';
    {
      ip_address_type: converted,
    }
  ),
  with_lambda_multi_value_headers_enabled(value):: (
    local converted = value;
    assert std.isBoolean(converted) : '"lambda_multi_value_headers_enabled" expected to be of type "bool"';
    {
      lambda_multi_value_headers_enabled: converted,
    }
  ),
  with_load_balancer_arns(value):: (
    local converted = if std.isArray(value) then value else [value];
    assert (std.isArray(converted) && std.length(std.set(converted)) == std.length(converted)) : '"load_balancer_arns" expected to be of type "set"';
    {
      load_balancer_arns: converted,
    }
  ),
  with_load_balancer_arns_mixin(value):: (
    local converted = if std.isArray(value) then value else [value];
    assert (std.isArray(converted) && std.length(std.set(converted)) == std.length(converted)) : '"load_balancer_arns" expected to be of type "set"';
    {
      load_balancer_arns+: converted,
    }
  ),
  with_load_balancing_algorithm_type(value):: (
    local converted = value;
    assert std.isString(converted) : '"load_balancing_algorithm_type" expected to be of type "string"';
    {
      load_balancing_algorithm_type: converted,
    }
  ),
  with_load_balancing_anomaly_mitigation(value):: (
    local converted = value;
    assert std.isString(converted) : '"load_balancing_anomaly_mitigation" expected to be of type "string"';
    {
      load_balancing_anomaly_mitigation: converted,
    }
  ),
  with_load_balancing_cross_zone_enabled(value):: (
    local converted = value;
    assert std.isString(converted) : '"load_balancing_cross_zone_enabled" expected to be of type "string"';
    {
      load_balancing_cross_zone_enabled: converted,
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
  with_port(value):: (
    local converted = value;
    assert std.isNumber(converted) : '"port" expected to be of type "number"';
    {
      port: converted,
    }
  ),
  with_preserve_client_ip(value):: (
    local converted = value;
    assert std.isString(converted) : '"preserve_client_ip" expected to be of type "string"';
    {
      preserve_client_ip: converted,
    }
  ),
  with_protocol(value):: (
    local converted = value;
    assert std.isString(converted) : '"protocol" expected to be of type "string"';
    {
      protocol: converted,
    }
  ),
  with_protocol_version(value):: (
    local converted = value;
    assert std.isString(converted) : '"protocol_version" expected to be of type "string"';
    {
      protocol_version: converted,
    }
  ),
  with_proxy_protocol_v2(value):: (
    local converted = value;
    assert std.isBoolean(converted) : '"proxy_protocol_v2" expected to be of type "bool"';
    {
      proxy_protocol_v2: converted,
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
  with_slow_start(value):: (
    local converted = value;
    assert std.isNumber(converted) : '"slow_start" expected to be of type "number"';
    {
      slow_start: converted,
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
  with_target_type(value):: (
    local converted = value;
    assert std.isString(converted) : '"target_type" expected to be of type "string"';
    {
      target_type: converted,
    }
  ),
  with_vpc_id(value):: (
    local converted = value;
    assert std.isString(converted) : '"vpc_id" expected to be of type "string"';
    {
      vpc_id: converted,
    }
  ),
  health_check:: {
    local block = self,
    new():: (
      {}
    ),
    with_enabled(value):: (
      local converted = value;
      assert std.isBoolean(converted) : '"enabled" expected to be of type "bool"';
      {
        enabled: converted,
      }
    ),
    with_healthy_threshold(value):: (
      local converted = value;
      assert std.isNumber(converted) : '"healthy_threshold" expected to be of type "number"';
      {
        healthy_threshold: converted,
      }
    ),
    with_interval(value):: (
      local converted = value;
      assert std.isNumber(converted) : '"interval" expected to be of type "number"';
      {
        interval: converted,
      }
    ),
    with_matcher(value):: (
      local converted = value;
      assert std.isString(converted) : '"matcher" expected to be of type "string"';
      {
        matcher: converted,
      }
    ),
    with_path(value):: (
      local converted = value;
      assert std.isString(converted) : '"path" expected to be of type "string"';
      {
        path: converted,
      }
    ),
    with_port(value):: (
      local converted = value;
      assert std.isString(converted) : '"port" expected to be of type "string"';
      {
        port: converted,
      }
    ),
    with_protocol(value):: (
      local converted = value;
      assert std.isString(converted) : '"protocol" expected to be of type "string"';
      {
        protocol: converted,
      }
    ),
    with_timeout(value):: (
      local converted = value;
      assert std.isNumber(converted) : '"timeout" expected to be of type "number"';
      {
        timeout: converted,
      }
    ),
    with_unhealthy_threshold(value):: (
      local converted = value;
      assert std.isNumber(converted) : '"unhealthy_threshold" expected to be of type "number"';
      {
        unhealthy_threshold: converted,
      }
    ),
  },
  stickiness:: {
    local block = self,
    new(type):: (
      {}
      + block.with_type(type)
    ),
    with_cookie_duration(value):: (
      local converted = value;
      assert std.isNumber(converted) : '"cookie_duration" expected to be of type "number"';
      {
        cookie_duration: converted,
      }
    ),
    with_cookie_name(value):: (
      local converted = value;
      assert std.isString(converted) : '"cookie_name" expected to be of type "string"';
      {
        cookie_name: converted,
      }
    ),
    with_enabled(value):: (
      local converted = value;
      assert std.isBoolean(converted) : '"enabled" expected to be of type "bool"';
      {
        enabled: converted,
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
  target_failover:: {
    local block = self,
    new(on_deregistration, on_unhealthy):: (
      {}
      + block.with_on_deregistration(on_deregistration)
      + block.with_on_unhealthy(on_unhealthy)
    ),
    with_on_deregistration(value):: (
      local converted = value;
      assert std.isString(converted) : '"on_deregistration" expected to be of type "string"';
      {
        on_deregistration: converted,
      }
    ),
    with_on_unhealthy(value):: (
      local converted = value;
      assert std.isString(converted) : '"on_unhealthy" expected to be of type "string"';
      {
        on_unhealthy: converted,
      }
    ),
  },
  target_group_health:: {
    local block = self,
    new():: (
      {}
    ),
    dns_failover:: {
      local block = self,
      new():: (
        {}
      ),
      with_minimum_healthy_targets_count(value):: (
        local converted = value;
        assert std.isString(converted) : '"minimum_healthy_targets_count" expected to be of type "string"';
        {
          minimum_healthy_targets_count: converted,
        }
      ),
      with_minimum_healthy_targets_percentage(value):: (
        local converted = value;
        assert std.isString(converted) : '"minimum_healthy_targets_percentage" expected to be of type "string"';
        {
          minimum_healthy_targets_percentage: converted,
        }
      ),
    },
    unhealthy_state_routing:: {
      local block = self,
      new():: (
        {}
      ),
      with_minimum_healthy_targets_count(value):: (
        local converted = value;
        assert std.isNumber(converted) : '"minimum_healthy_targets_count" expected to be of type "number"';
        {
          minimum_healthy_targets_count: converted,
        }
      ),
      with_minimum_healthy_targets_percentage(value):: (
        local converted = value;
        assert std.isString(converted) : '"minimum_healthy_targets_percentage" expected to be of type "string"';
        {
          minimum_healthy_targets_percentage: converted,
        }
      ),
    },
    with_dns_failover(value):: (
      local converted = if std.isArray(value) then value else [value];
      {
        dns_failover: value,
      }
    ),
    with_unhealthy_state_routing(value):: (
      local converted = if std.isArray(value) then value else [value];
      {
        unhealthy_state_routing: value,
      }
    ),
    with_dns_failover_mixin(value):: (
      local converted = if std.isArray(value) then value else [value];
      {
        dns_failover+: converted,
      }
    ),
    with_unhealthy_state_routing_mixin(value):: (
      local converted = if std.isArray(value) then value else [value];
      {
        unhealthy_state_routing+: converted,
      }
    ),
  },
  target_health_state:: {
    local block = self,
    new(enable_unhealthy_connection_termination):: (
      {}
      + block.with_enable_unhealthy_connection_termination(enable_unhealthy_connection_termination)
    ),
    with_enable_unhealthy_connection_termination(value):: (
      local converted = value;
      assert std.isBoolean(converted) : '"enable_unhealthy_connection_termination" expected to be of type "bool"';
      {
        enable_unhealthy_connection_termination: converted,
      }
    ),
    with_unhealthy_draining_interval(value):: (
      local converted = value;
      assert std.isNumber(converted) : '"unhealthy_draining_interval" expected to be of type "number"';
      {
        unhealthy_draining_interval: converted,
      }
    ),
  },
  with_health_check(value):: (
    local converted = if std.isArray(value) then value else [value];
    {
      health_check: value,
    }
  ),
  with_stickiness(value):: (
    local converted = if std.isArray(value) then value else [value];
    {
      stickiness: value,
    }
  ),
  with_target_failover(value):: (
    local converted = if std.isArray(value) then value else [value];
    {
      target_failover: value,
    }
  ),
  with_target_group_health(value):: (
    local converted = if std.isArray(value) then value else [value];
    {
      target_group_health: value,
    }
  ),
  with_target_health_state(value):: (
    local converted = if std.isArray(value) then value else [value];
    {
      target_health_state: value,
    }
  ),
  with_health_check_mixin(value):: (
    local converted = if std.isArray(value) then value else [value];
    {
      health_check+: converted,
    }
  ),
  with_stickiness_mixin(value):: (
    local converted = if std.isArray(value) then value else [value];
    {
      stickiness+: converted,
    }
  ),
  with_target_failover_mixin(value):: (
    local converted = if std.isArray(value) then value else [value];
    {
      target_failover+: converted,
    }
  ),
  with_target_group_health_mixin(value):: (
    local converted = if std.isArray(value) then value else [value];
    {
      target_group_health+: converted,
    }
  ),
  with_target_health_state_mixin(value):: (
    local converted = if std.isArray(value) then value else [value];
    {
      target_health_state+: converted,
    }
  ),
}
