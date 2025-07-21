{
  local block = self,
  new(api_id, name):: (
    {}
    + block.with_api_id(api_id)
    + block.with_name(name)
  ),
  with_api_id(value):: (
    local converted = value;
    assert std.isString(converted) : '"api_id" expected to be of type "string"';
    {
      api_id: converted,
    }
  ),
  with_arn(value):: (
    local converted = value;
    assert std.isString(converted) : '"arn" expected to be of type "string"';
    {
      arn: converted,
    }
  ),
  with_auto_deploy(value):: (
    local converted = value;
    assert std.isBoolean(converted) : '"auto_deploy" expected to be of type "bool"';
    {
      auto_deploy: converted,
    }
  ),
  with_client_certificate_id(value):: (
    local converted = value;
    assert std.isString(converted) : '"client_certificate_id" expected to be of type "string"';
    {
      client_certificate_id: converted,
    }
  ),
  with_deployment_id(value):: (
    local converted = value;
    assert std.isString(converted) : '"deployment_id" expected to be of type "string"';
    {
      deployment_id: converted,
    }
  ),
  with_description(value):: (
    local converted = value;
    assert std.isString(converted) : '"description" expected to be of type "string"';
    {
      description: converted,
    }
  ),
  with_execution_arn(value):: (
    local converted = value;
    assert std.isString(converted) : '"execution_arn" expected to be of type "string"';
    {
      execution_arn: converted,
    }
  ),
  with_id(value):: (
    local converted = value;
    assert std.isString(converted) : '"id" expected to be of type "string"';
    {
      id: converted,
    }
  ),
  with_invoke_url(value):: (
    local converted = value;
    assert std.isString(converted) : '"invoke_url" expected to be of type "string"';
    {
      invoke_url: converted,
    }
  ),
  with_name(value):: (
    local converted = value;
    assert std.isString(converted) : '"name" expected to be of type "string"';
    {
      name: converted,
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
  with_stage_variables(value):: (
    local converted = value;
    assert std.isObject(converted) : '"stage_variables" expected to be of type "map"';
    {
      stage_variables: converted,
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
  access_log_settings:: {
    local block = self,
    new(destination_arn, format):: (
      {}
      + block.with_destination_arn(destination_arn)
      + block.with_format(format)
    ),
    with_destination_arn(value):: (
      local converted = value;
      assert std.isString(converted) : '"destination_arn" expected to be of type "string"';
      {
        destination_arn: converted,
      }
    ),
    with_format(value):: (
      local converted = value;
      assert std.isString(converted) : '"format" expected to be of type "string"';
      {
        format: converted,
      }
    ),
  },
  default_route_settings:: {
    local block = self,
    new():: (
      {}
    ),
    with_data_trace_enabled(value):: (
      local converted = value;
      assert std.isBoolean(converted) : '"data_trace_enabled" expected to be of type "bool"';
      {
        data_trace_enabled: converted,
      }
    ),
    with_detailed_metrics_enabled(value):: (
      local converted = value;
      assert std.isBoolean(converted) : '"detailed_metrics_enabled" expected to be of type "bool"';
      {
        detailed_metrics_enabled: converted,
      }
    ),
    with_logging_level(value):: (
      local converted = value;
      assert std.isString(converted) : '"logging_level" expected to be of type "string"';
      {
        logging_level: converted,
      }
    ),
    with_throttling_burst_limit(value):: (
      local converted = value;
      assert std.isNumber(converted) : '"throttling_burst_limit" expected to be of type "number"';
      {
        throttling_burst_limit: converted,
      }
    ),
    with_throttling_rate_limit(value):: (
      local converted = value;
      assert std.isNumber(converted) : '"throttling_rate_limit" expected to be of type "number"';
      {
        throttling_rate_limit: converted,
      }
    ),
  },
  route_settings:: {
    local block = self,
    new(route_key):: (
      {}
      + block.with_route_key(route_key)
    ),
    with_data_trace_enabled(value):: (
      local converted = value;
      assert std.isBoolean(converted) : '"data_trace_enabled" expected to be of type "bool"';
      {
        data_trace_enabled: converted,
      }
    ),
    with_detailed_metrics_enabled(value):: (
      local converted = value;
      assert std.isBoolean(converted) : '"detailed_metrics_enabled" expected to be of type "bool"';
      {
        detailed_metrics_enabled: converted,
      }
    ),
    with_logging_level(value):: (
      local converted = value;
      assert std.isString(converted) : '"logging_level" expected to be of type "string"';
      {
        logging_level: converted,
      }
    ),
    with_route_key(value):: (
      local converted = value;
      assert std.isString(converted) : '"route_key" expected to be of type "string"';
      {
        route_key: converted,
      }
    ),
    with_throttling_burst_limit(value):: (
      local converted = value;
      assert std.isNumber(converted) : '"throttling_burst_limit" expected to be of type "number"';
      {
        throttling_burst_limit: converted,
      }
    ),
    with_throttling_rate_limit(value):: (
      local converted = value;
      assert std.isNumber(converted) : '"throttling_rate_limit" expected to be of type "number"';
      {
        throttling_rate_limit: converted,
      }
    ),
  },
  with_access_log_settings(value):: (
    local converted = if std.isArray(value) then value else [value];
    {
      access_log_settings: value,
    }
  ),
  with_default_route_settings(value):: (
    local converted = if std.isArray(value) then value else [value];
    {
      default_route_settings: value,
    }
  ),
  with_route_settings(value):: (
    local converted = if std.isArray(value) then value else [value];
    {
      route_settings: value,
    }
  ),
  with_access_log_settings_mixin(value):: (
    local converted = if std.isArray(value) then value else [value];
    {
      access_log_settings+: converted,
    }
  ),
  with_default_route_settings_mixin(value):: (
    local converted = if std.isArray(value) then value else [value];
    {
      default_route_settings+: converted,
    }
  ),
  with_route_settings_mixin(value):: (
    local converted = if std.isArray(value) then value else [value];
    {
      route_settings+: converted,
    }
  ),
}
