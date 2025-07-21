{
  local block = self,
  new(endpoint_config_name):: (
    {}
    + block.with_endpoint_config_name(endpoint_config_name)
  ),
  with_arn(value):: (
    local converted = value;
    assert std.isString(converted) : '"arn" expected to be of type "string"';
    {
      arn: converted,
    }
  ),
  with_endpoint_config_name(value):: (
    local converted = value;
    assert std.isString(converted) : '"endpoint_config_name" expected to be of type "string"';
    {
      endpoint_config_name: converted,
    }
  ),
  with_id(value):: (
    local converted = value;
    assert std.isString(converted) : '"id" expected to be of type "string"';
    {
      id: converted,
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
  deployment_config:: {
    local block = self,
    new():: (
      {}
    ),
    auto_rollback_configuration:: {
      local block = self,
      new():: (
        {}
      ),
      alarms:: {
        local block = self,
        new(alarm_name):: (
          {}
          + block.with_alarm_name(alarm_name)
        ),
        with_alarm_name(value):: (
          local converted = value;
          assert std.isString(converted) : '"alarm_name" expected to be of type "string"';
          {
            alarm_name: converted,
          }
        ),
      },
      with_alarms(value):: (
        local converted = if std.isArray(value) then value else [value];
        {
          alarms: value,
        }
      ),
      with_alarms_mixin(value):: (
        local converted = if std.isArray(value) then value else [value];
        {
          alarms+: converted,
        }
      ),
    },
    blue_green_update_policy:: {
      local block = self,
      new():: (
        {}
      ),
      with_maximum_execution_timeout_in_seconds(value):: (
        local converted = value;
        assert std.isNumber(converted) : '"maximum_execution_timeout_in_seconds" expected to be of type "number"';
        {
          maximum_execution_timeout_in_seconds: converted,
        }
      ),
      with_termination_wait_in_seconds(value):: (
        local converted = value;
        assert std.isNumber(converted) : '"termination_wait_in_seconds" expected to be of type "number"';
        {
          termination_wait_in_seconds: converted,
        }
      ),
      traffic_routing_configuration:: {
        local block = self,
        new(type, wait_interval_in_seconds):: (
          {}
          + block.with_type(type)
          + block.with_wait_interval_in_seconds(wait_interval_in_seconds)
        ),
        with_type(value):: (
          local converted = value;
          assert std.isString(converted) : '"type" expected to be of type "string"';
          {
            type: converted,
          }
        ),
        with_wait_interval_in_seconds(value):: (
          local converted = value;
          assert std.isNumber(converted) : '"wait_interval_in_seconds" expected to be of type "number"';
          {
            wait_interval_in_seconds: converted,
          }
        ),
        canary_size:: {
          local block = self,
          new(type, value):: (
            {}
            + block.with_type(type)
            + block.with_value(value)
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
        linear_step_size:: {
          local block = self,
          new(type, value):: (
            {}
            + block.with_type(type)
            + block.with_value(value)
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
        with_canary_size(value):: (
          local converted = if std.isArray(value) then value else [value];
          {
            canary_size: value,
          }
        ),
        with_linear_step_size(value):: (
          local converted = if std.isArray(value) then value else [value];
          {
            linear_step_size: value,
          }
        ),
        with_canary_size_mixin(value):: (
          local converted = if std.isArray(value) then value else [value];
          {
            canary_size+: converted,
          }
        ),
        with_linear_step_size_mixin(value):: (
          local converted = if std.isArray(value) then value else [value];
          {
            linear_step_size+: converted,
          }
        ),
      },
      with_traffic_routing_configuration(value):: (
        local converted = if std.isArray(value) then value else [value];
        {
          traffic_routing_configuration: value,
        }
      ),
      with_traffic_routing_configuration_mixin(value):: (
        local converted = if std.isArray(value) then value else [value];
        {
          traffic_routing_configuration+: converted,
        }
      ),
    },
    rolling_update_policy:: {
      local block = self,
      new(wait_interval_in_seconds):: (
        {}
        + block.with_wait_interval_in_seconds(wait_interval_in_seconds)
      ),
      with_maximum_execution_timeout_in_seconds(value):: (
        local converted = value;
        assert std.isNumber(converted) : '"maximum_execution_timeout_in_seconds" expected to be of type "number"';
        {
          maximum_execution_timeout_in_seconds: converted,
        }
      ),
      with_wait_interval_in_seconds(value):: (
        local converted = value;
        assert std.isNumber(converted) : '"wait_interval_in_seconds" expected to be of type "number"';
        {
          wait_interval_in_seconds: converted,
        }
      ),
      maximum_batch_size:: {
        local block = self,
        new(type, value):: (
          {}
          + block.with_type(type)
          + block.with_value(value)
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
      rollback_maximum_batch_size:: {
        local block = self,
        new(type, value):: (
          {}
          + block.with_type(type)
          + block.with_value(value)
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
      with_maximum_batch_size(value):: (
        local converted = if std.isArray(value) then value else [value];
        {
          maximum_batch_size: value,
        }
      ),
      with_rollback_maximum_batch_size(value):: (
        local converted = if std.isArray(value) then value else [value];
        {
          rollback_maximum_batch_size: value,
        }
      ),
      with_maximum_batch_size_mixin(value):: (
        local converted = if std.isArray(value) then value else [value];
        {
          maximum_batch_size+: converted,
        }
      ),
      with_rollback_maximum_batch_size_mixin(value):: (
        local converted = if std.isArray(value) then value else [value];
        {
          rollback_maximum_batch_size+: converted,
        }
      ),
    },
    with_auto_rollback_configuration(value):: (
      local converted = if std.isArray(value) then value else [value];
      {
        auto_rollback_configuration: value,
      }
    ),
    with_blue_green_update_policy(value):: (
      local converted = if std.isArray(value) then value else [value];
      {
        blue_green_update_policy: value,
      }
    ),
    with_rolling_update_policy(value):: (
      local converted = if std.isArray(value) then value else [value];
      {
        rolling_update_policy: value,
      }
    ),
    with_auto_rollback_configuration_mixin(value):: (
      local converted = if std.isArray(value) then value else [value];
      {
        auto_rollback_configuration+: converted,
      }
    ),
    with_blue_green_update_policy_mixin(value):: (
      local converted = if std.isArray(value) then value else [value];
      {
        blue_green_update_policy+: converted,
      }
    ),
    with_rolling_update_policy_mixin(value):: (
      local converted = if std.isArray(value) then value else [value];
      {
        rolling_update_policy+: converted,
      }
    ),
  },
  with_deployment_config(value):: (
    local converted = if std.isArray(value) then value else [value];
    {
      deployment_config: value,
    }
  ),
  with_deployment_config_mixin(value):: (
    local converted = if std.isArray(value) then value else [value];
    {
      deployment_config+: converted,
    }
  ),
}
