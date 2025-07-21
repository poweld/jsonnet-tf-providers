{
  local block = self,
  new(method_path, rest_api_id, stage_name):: (
    {}
    + block.with_method_path(method_path)
    + block.with_rest_api_id(rest_api_id)
    + block.with_stage_name(stage_name)
  ),
  with_id(value):: (
    local converted = value;
    assert std.isString(converted) : '"id" expected to be of type "string"';
    {
      id: converted,
    }
  ),
  with_method_path(value):: (
    local converted = value;
    assert std.isString(converted) : '"method_path" expected to be of type "string"';
    {
      method_path: converted,
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
  with_rest_api_id(value):: (
    local converted = value;
    assert std.isString(converted) : '"rest_api_id" expected to be of type "string"';
    {
      rest_api_id: converted,
    }
  ),
  with_stage_name(value):: (
    local converted = value;
    assert std.isString(converted) : '"stage_name" expected to be of type "string"';
    {
      stage_name: converted,
    }
  ),
  settings:: {
    local block = self,
    new():: (
      {}
    ),
    with_cache_data_encrypted(value):: (
      local converted = value;
      assert std.isBoolean(converted) : '"cache_data_encrypted" expected to be of type "bool"';
      {
        cache_data_encrypted: converted,
      }
    ),
    with_cache_ttl_in_seconds(value):: (
      local converted = value;
      assert std.isNumber(converted) : '"cache_ttl_in_seconds" expected to be of type "number"';
      {
        cache_ttl_in_seconds: converted,
      }
    ),
    with_caching_enabled(value):: (
      local converted = value;
      assert std.isBoolean(converted) : '"caching_enabled" expected to be of type "bool"';
      {
        caching_enabled: converted,
      }
    ),
    with_data_trace_enabled(value):: (
      local converted = value;
      assert std.isBoolean(converted) : '"data_trace_enabled" expected to be of type "bool"';
      {
        data_trace_enabled: converted,
      }
    ),
    with_logging_level(value):: (
      local converted = value;
      assert std.isString(converted) : '"logging_level" expected to be of type "string"';
      {
        logging_level: converted,
      }
    ),
    with_metrics_enabled(value):: (
      local converted = value;
      assert std.isBoolean(converted) : '"metrics_enabled" expected to be of type "bool"';
      {
        metrics_enabled: converted,
      }
    ),
    with_require_authorization_for_cache_control(value):: (
      local converted = value;
      assert std.isBoolean(converted) : '"require_authorization_for_cache_control" expected to be of type "bool"';
      {
        require_authorization_for_cache_control: converted,
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
    with_unauthorized_cache_control_header_strategy(value):: (
      local converted = value;
      assert std.isString(converted) : '"unauthorized_cache_control_header_strategy" expected to be of type "string"';
      {
        unauthorized_cache_control_header_strategy: converted,
      }
    ),
  },
  with_settings(value):: (
    local converted = if std.isArray(value) then value else [value];
    {
      settings: value,
    }
  ),
  with_settings_mixin(value):: (
    local converted = if std.isArray(value) then value else [value];
    {
      settings+: converted,
    }
  ),
}
