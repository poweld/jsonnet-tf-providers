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
  with_health_check(value):: (
    local converted = if std.isArray(value) then value else [value];
    assert std.isArray(converted) : '"health_check" expected to be of type "list"';
    {
      health_check: converted,
    }
  ),
  with_health_check_mixin(value):: (
    local converted = if std.isArray(value) then value else [value];
    assert std.isArray(converted) : '"health_check" expected to be of type "list"';
    {
      health_check+: converted,
    }
  ),
  with_id(value):: (
    local converted = value;
    assert std.isString(converted) : '"id" expected to be of type "string"';
    {
      id: converted,
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
  with_stickiness(value):: (
    local converted = if std.isArray(value) then value else [value];
    assert std.isArray(converted) : '"stickiness" expected to be of type "list"';
    {
      stickiness: converted,
    }
  ),
  with_stickiness_mixin(value):: (
    local converted = if std.isArray(value) then value else [value];
    assert std.isArray(converted) : '"stickiness" expected to be of type "list"';
    {
      stickiness+: converted,
    }
  ),
  with_tags(value):: (
    local converted = value;
    assert std.isObject(converted) : '"tags" expected to be of type "map"';
    {
      tags: converted,
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
  timeouts:: {
    local block = self,
    new():: (
      {}
    ),
    with_read(value):: (
      local converted = value;
      assert std.isString(converted) : '"read" expected to be of type "string"';
      {
        read: converted,
      }
    ),
  },
  with_timeouts(value):: (
    local converted = value;
    {
      timeouts: value,
    }
  ),
}
