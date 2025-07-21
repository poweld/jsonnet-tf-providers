{
  local block = self,
  new(monitor_name):: (
    {}
    + block.with_monitor_name(monitor_name)
  ),
  with_arn(value):: (
    local converted = value;
    assert std.isString(converted) : '"arn" expected to be of type "string"';
    {
      arn: converted,
    }
  ),
  with_id(value):: (
    local converted = value;
    assert std.isString(converted) : '"id" expected to be of type "string"';
    {
      id: converted,
    }
  ),
  with_max_city_networks_to_monitor(value):: (
    local converted = value;
    assert std.isNumber(converted) : '"max_city_networks_to_monitor" expected to be of type "number"';
    {
      max_city_networks_to_monitor: converted,
    }
  ),
  with_monitor_name(value):: (
    local converted = value;
    assert std.isString(converted) : '"monitor_name" expected to be of type "string"';
    {
      monitor_name: converted,
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
  with_resources(value):: (
    local converted = if std.isArray(value) then value else [value];
    assert (std.isArray(converted) && std.length(std.set(converted)) == std.length(converted)) : '"resources" expected to be of type "set"';
    {
      resources: converted,
    }
  ),
  with_resources_mixin(value):: (
    local converted = if std.isArray(value) then value else [value];
    assert (std.isArray(converted) && std.length(std.set(converted)) == std.length(converted)) : '"resources" expected to be of type "set"';
    {
      resources+: converted,
    }
  ),
  with_status(value):: (
    local converted = value;
    assert std.isString(converted) : '"status" expected to be of type "string"';
    {
      status: converted,
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
  with_traffic_percentage_to_monitor(value):: (
    local converted = value;
    assert std.isNumber(converted) : '"traffic_percentage_to_monitor" expected to be of type "number"';
    {
      traffic_percentage_to_monitor: converted,
    }
  ),
  health_events_config:: {
    local block = self,
    new():: (
      {}
    ),
    with_availability_score_threshold(value):: (
      local converted = value;
      assert std.isNumber(converted) : '"availability_score_threshold" expected to be of type "number"';
      {
        availability_score_threshold: converted,
      }
    ),
    with_performance_score_threshold(value):: (
      local converted = value;
      assert std.isNumber(converted) : '"performance_score_threshold" expected to be of type "number"';
      {
        performance_score_threshold: converted,
      }
    ),
  },
  internet_measurements_log_delivery:: {
    local block = self,
    new():: (
      {}
    ),
    s3_config:: {
      local block = self,
      new(bucket_name):: (
        {}
        + block.with_bucket_name(bucket_name)
      ),
      with_bucket_name(value):: (
        local converted = value;
        assert std.isString(converted) : '"bucket_name" expected to be of type "string"';
        {
          bucket_name: converted,
        }
      ),
      with_bucket_prefix(value):: (
        local converted = value;
        assert std.isString(converted) : '"bucket_prefix" expected to be of type "string"';
        {
          bucket_prefix: converted,
        }
      ),
      with_log_delivery_status(value):: (
        local converted = value;
        assert std.isString(converted) : '"log_delivery_status" expected to be of type "string"';
        {
          log_delivery_status: converted,
        }
      ),
    },
    with_s3_config(value):: (
      local converted = if std.isArray(value) then value else [value];
      {
        s3_config: value,
      }
    ),
    with_s3_config_mixin(value):: (
      local converted = if std.isArray(value) then value else [value];
      {
        s3_config+: converted,
      }
    ),
  },
  with_health_events_config(value):: (
    local converted = if std.isArray(value) then value else [value];
    {
      health_events_config: value,
    }
  ),
  with_internet_measurements_log_delivery(value):: (
    local converted = if std.isArray(value) then value else [value];
    {
      internet_measurements_log_delivery: value,
    }
  ),
  with_health_events_config_mixin(value):: (
    local converted = if std.isArray(value) then value else [value];
    {
      health_events_config+: converted,
    }
  ),
  with_internet_measurements_log_delivery_mixin(value):: (
    local converted = if std.isArray(value) then value else [value];
    {
      internet_measurements_log_delivery+: converted,
    }
  ),
}
