{
  local block = self,
  new(type):: (
    {}
    + block.with_type(type)
  ),
  with_arn(value):: (
    local converted = value;
    assert std.isString(converted) : '"arn" expected to be of type "string"';
    {
      arn: converted,
    }
  ),
  with_child_health_threshold(value):: (
    local converted = value;
    assert std.isNumber(converted) : '"child_health_threshold" expected to be of type "number"';
    {
      child_health_threshold: converted,
    }
  ),
  with_child_healthchecks(value):: (
    local converted = if std.isArray(value) then value else [value];
    assert (std.isArray(converted) && std.length(std.set(converted)) == std.length(converted)) : '"child_healthchecks" expected to be of type "set"';
    {
      child_healthchecks: converted,
    }
  ),
  with_child_healthchecks_mixin(value):: (
    local converted = if std.isArray(value) then value else [value];
    assert (std.isArray(converted) && std.length(std.set(converted)) == std.length(converted)) : '"child_healthchecks" expected to be of type "set"';
    {
      child_healthchecks+: converted,
    }
  ),
  with_cloudwatch_alarm_name(value):: (
    local converted = value;
    assert std.isString(converted) : '"cloudwatch_alarm_name" expected to be of type "string"';
    {
      cloudwatch_alarm_name: converted,
    }
  ),
  with_cloudwatch_alarm_region(value):: (
    local converted = value;
    assert std.isString(converted) : '"cloudwatch_alarm_region" expected to be of type "string"';
    {
      cloudwatch_alarm_region: converted,
    }
  ),
  with_disabled(value):: (
    local converted = value;
    assert std.isBoolean(converted) : '"disabled" expected to be of type "bool"';
    {
      disabled: converted,
    }
  ),
  with_enable_sni(value):: (
    local converted = value;
    assert std.isBoolean(converted) : '"enable_sni" expected to be of type "bool"';
    {
      enable_sni: converted,
    }
  ),
  with_failure_threshold(value):: (
    local converted = value;
    assert std.isNumber(converted) : '"failure_threshold" expected to be of type "number"';
    {
      failure_threshold: converted,
    }
  ),
  with_fqdn(value):: (
    local converted = value;
    assert std.isString(converted) : '"fqdn" expected to be of type "string"';
    {
      fqdn: converted,
    }
  ),
  with_id(value):: (
    local converted = value;
    assert std.isString(converted) : '"id" expected to be of type "string"';
    {
      id: converted,
    }
  ),
  with_insufficient_data_health_status(value):: (
    local converted = value;
    assert std.isString(converted) : '"insufficient_data_health_status" expected to be of type "string"';
    {
      insufficient_data_health_status: converted,
    }
  ),
  with_invert_healthcheck(value):: (
    local converted = value;
    assert std.isBoolean(converted) : '"invert_healthcheck" expected to be of type "bool"';
    {
      invert_healthcheck: converted,
    }
  ),
  with_ip_address(value):: (
    local converted = value;
    assert std.isString(converted) : '"ip_address" expected to be of type "string"';
    {
      ip_address: converted,
    }
  ),
  with_measure_latency(value):: (
    local converted = value;
    assert std.isBoolean(converted) : '"measure_latency" expected to be of type "bool"';
    {
      measure_latency: converted,
    }
  ),
  with_port(value):: (
    local converted = value;
    assert std.isNumber(converted) : '"port" expected to be of type "number"';
    {
      port: converted,
    }
  ),
  with_reference_name(value):: (
    local converted = value;
    assert std.isString(converted) : '"reference_name" expected to be of type "string"';
    {
      reference_name: converted,
    }
  ),
  with_regions(value):: (
    local converted = if std.isArray(value) then value else [value];
    assert (std.isArray(converted) && std.length(std.set(converted)) == std.length(converted)) : '"regions" expected to be of type "set"';
    {
      regions: converted,
    }
  ),
  with_regions_mixin(value):: (
    local converted = if std.isArray(value) then value else [value];
    assert (std.isArray(converted) && std.length(std.set(converted)) == std.length(converted)) : '"regions" expected to be of type "set"';
    {
      regions+: converted,
    }
  ),
  with_request_interval(value):: (
    local converted = value;
    assert std.isNumber(converted) : '"request_interval" expected to be of type "number"';
    {
      request_interval: converted,
    }
  ),
  with_resource_path(value):: (
    local converted = value;
    assert std.isString(converted) : '"resource_path" expected to be of type "string"';
    {
      resource_path: converted,
    }
  ),
  with_routing_control_arn(value):: (
    local converted = value;
    assert std.isString(converted) : '"routing_control_arn" expected to be of type "string"';
    {
      routing_control_arn: converted,
    }
  ),
  with_search_string(value):: (
    local converted = value;
    assert std.isString(converted) : '"search_string" expected to be of type "string"';
    {
      search_string: converted,
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
  with_triggers(value):: (
    local converted = value;
    assert std.isObject(converted) : '"triggers" expected to be of type "map"';
    {
      triggers: converted,
    }
  ),
  with_type(value):: (
    local converted = value;
    assert std.isString(converted) : '"type" expected to be of type "string"';
    {
      type: converted,
    }
  ),
}
