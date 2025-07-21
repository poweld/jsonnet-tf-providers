{
  local block = self,
  new(listener_arn):: (
    {}
    + block.with_listener_arn(listener_arn)
  ),
  with_arn(value):: (
    local converted = value;
    assert std.isString(converted) : '"arn" expected to be of type "string"';
    {
      arn: converted,
    }
  ),
  with_endpoint_group_region(value):: (
    local converted = value;
    assert std.isString(converted) : '"endpoint_group_region" expected to be of type "string"';
    {
      endpoint_group_region: converted,
    }
  ),
  with_health_check_interval_seconds(value):: (
    local converted = value;
    assert std.isNumber(converted) : '"health_check_interval_seconds" expected to be of type "number"';
    {
      health_check_interval_seconds: converted,
    }
  ),
  with_health_check_path(value):: (
    local converted = value;
    assert std.isString(converted) : '"health_check_path" expected to be of type "string"';
    {
      health_check_path: converted,
    }
  ),
  with_health_check_port(value):: (
    local converted = value;
    assert std.isNumber(converted) : '"health_check_port" expected to be of type "number"';
    {
      health_check_port: converted,
    }
  ),
  with_health_check_protocol(value):: (
    local converted = value;
    assert std.isString(converted) : '"health_check_protocol" expected to be of type "string"';
    {
      health_check_protocol: converted,
    }
  ),
  with_id(value):: (
    local converted = value;
    assert std.isString(converted) : '"id" expected to be of type "string"';
    {
      id: converted,
    }
  ),
  with_listener_arn(value):: (
    local converted = value;
    assert std.isString(converted) : '"listener_arn" expected to be of type "string"';
    {
      listener_arn: converted,
    }
  ),
  with_threshold_count(value):: (
    local converted = value;
    assert std.isNumber(converted) : '"threshold_count" expected to be of type "number"';
    {
      threshold_count: converted,
    }
  ),
  with_traffic_dial_percentage(value):: (
    local converted = value;
    assert std.isNumber(converted) : '"traffic_dial_percentage" expected to be of type "number"';
    {
      traffic_dial_percentage: converted,
    }
  ),
  endpoint_configuration:: {
    local block = self,
    new():: (
      {}
    ),
    with_attachment_arn(value):: (
      local converted = value;
      assert std.isString(converted) : '"attachment_arn" expected to be of type "string"';
      {
        attachment_arn: converted,
      }
    ),
    with_client_ip_preservation_enabled(value):: (
      local converted = value;
      assert std.isBoolean(converted) : '"client_ip_preservation_enabled" expected to be of type "bool"';
      {
        client_ip_preservation_enabled: converted,
      }
    ),
    with_endpoint_id(value):: (
      local converted = value;
      assert std.isString(converted) : '"endpoint_id" expected to be of type "string"';
      {
        endpoint_id: converted,
      }
    ),
    with_weight(value):: (
      local converted = value;
      assert std.isNumber(converted) : '"weight" expected to be of type "number"';
      {
        weight: converted,
      }
    ),
  },
  port_override:: {
    local block = self,
    new(endpoint_port, listener_port):: (
      {}
      + block.with_endpoint_port(endpoint_port)
      + block.with_listener_port(listener_port)
    ),
    with_endpoint_port(value):: (
      local converted = value;
      assert std.isNumber(converted) : '"endpoint_port" expected to be of type "number"';
      {
        endpoint_port: converted,
      }
    ),
    with_listener_port(value):: (
      local converted = value;
      assert std.isNumber(converted) : '"listener_port" expected to be of type "number"';
      {
        listener_port: converted,
      }
    ),
  },
  timeouts:: {
    local block = self,
    new():: (
      {}
    ),
    with_create(value):: (
      local converted = value;
      assert std.isString(converted) : '"create" expected to be of type "string"';
      {
        create: converted,
      }
    ),
    with_delete(value):: (
      local converted = value;
      assert std.isString(converted) : '"delete" expected to be of type "string"';
      {
        delete: converted,
      }
    ),
    with_update(value):: (
      local converted = value;
      assert std.isString(converted) : '"update" expected to be of type "string"';
      {
        update: converted,
      }
    ),
  },
  with_endpoint_configuration(value):: (
    local converted = if std.isArray(value) then value else [value];
    {
      endpoint_configuration: value,
    }
  ),
  with_port_override(value):: (
    local converted = if std.isArray(value) then value else [value];
    {
      port_override: value,
    }
  ),
  with_timeouts(value):: (
    local converted = value;
    {
      timeouts: value,
    }
  ),
  with_endpoint_configuration_mixin(value):: (
    local converted = if std.isArray(value) then value else [value];
    {
      endpoint_configuration+: converted,
    }
  ),
  with_port_override_mixin(value):: (
    local converted = if std.isArray(value) then value else [value];
    {
      port_override+: converted,
    }
  ),
}
