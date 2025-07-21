{
  local block = self,
  new(schedule_expression):: (
    {}
    + block.with_schedule_expression(schedule_expression)
  ),
  with_arn(value):: (
    local converted = value;
    assert std.isString(converted) : '"arn" expected to be of type "string"';
    {
      arn: converted,
    }
  ),
  with_description(value):: (
    local converted = value;
    assert std.isString(converted) : '"description" expected to be of type "string"';
    {
      description: converted,
    }
  ),
  with_end_date(value):: (
    local converted = value;
    assert std.isString(converted) : '"end_date" expected to be of type "string"';
    {
      end_date: converted,
    }
  ),
  with_group_name(value):: (
    local converted = value;
    assert std.isString(converted) : '"group_name" expected to be of type "string"';
    {
      group_name: converted,
    }
  ),
  with_id(value):: (
    local converted = value;
    assert std.isString(converted) : '"id" expected to be of type "string"';
    {
      id: converted,
    }
  ),
  with_kms_key_arn(value):: (
    local converted = value;
    assert std.isString(converted) : '"kms_key_arn" expected to be of type "string"';
    {
      kms_key_arn: converted,
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
  '#with_region':: 'Region where this resource will be [managed](https://docs.aws.amazon.com/general/latest/gr/rande.html#regional-endpoints). Defaults to the Region set in the [provider configuration](https://registry.terraform.io/providers/hashicorp/aws/latest/docs#aws-configuration-reference).',
  with_region(value):: (
    local converted = value;
    assert std.isString(converted) : '"region" expected to be of type "string"';
    {
      region: converted,
    }
  ),
  with_schedule_expression(value):: (
    local converted = value;
    assert std.isString(converted) : '"schedule_expression" expected to be of type "string"';
    {
      schedule_expression: converted,
    }
  ),
  with_schedule_expression_timezone(value):: (
    local converted = value;
    assert std.isString(converted) : '"schedule_expression_timezone" expected to be of type "string"';
    {
      schedule_expression_timezone: converted,
    }
  ),
  with_start_date(value):: (
    local converted = value;
    assert std.isString(converted) : '"start_date" expected to be of type "string"';
    {
      start_date: converted,
    }
  ),
  with_state(value):: (
    local converted = value;
    assert std.isString(converted) : '"state" expected to be of type "string"';
    {
      state: converted,
    }
  ),
  flexible_time_window:: {
    local block = self,
    new(mode):: (
      {}
      + block.with_mode(mode)
    ),
    with_maximum_window_in_minutes(value):: (
      local converted = value;
      assert std.isNumber(converted) : '"maximum_window_in_minutes" expected to be of type "number"';
      {
        maximum_window_in_minutes: converted,
      }
    ),
    with_mode(value):: (
      local converted = value;
      assert std.isString(converted) : '"mode" expected to be of type "string"';
      {
        mode: converted,
      }
    ),
  },
  target:: {
    local block = self,
    new(arn, role_arn):: (
      {}
      + block.with_arn(arn)
      + block.with_role_arn(role_arn)
    ),
    with_arn(value):: (
      local converted = value;
      assert std.isString(converted) : '"arn" expected to be of type "string"';
      {
        arn: converted,
      }
    ),
    with_input(value):: (
      local converted = value;
      assert std.isString(converted) : '"input" expected to be of type "string"';
      {
        input: converted,
      }
    ),
    with_role_arn(value):: (
      local converted = value;
      assert std.isString(converted) : '"role_arn" expected to be of type "string"';
      {
        role_arn: converted,
      }
    ),
    dead_letter_config:: {
      local block = self,
      new(arn):: (
        {}
        + block.with_arn(arn)
      ),
      with_arn(value):: (
        local converted = value;
        assert std.isString(converted) : '"arn" expected to be of type "string"';
        {
          arn: converted,
        }
      ),
    },
    ecs_parameters:: {
      local block = self,
      new(task_definition_arn):: (
        {}
        + block.with_task_definition_arn(task_definition_arn)
      ),
      with_enable_ecs_managed_tags(value):: (
        local converted = value;
        assert std.isBoolean(converted) : '"enable_ecs_managed_tags" expected to be of type "bool"';
        {
          enable_ecs_managed_tags: converted,
        }
      ),
      with_enable_execute_command(value):: (
        local converted = value;
        assert std.isBoolean(converted) : '"enable_execute_command" expected to be of type "bool"';
        {
          enable_execute_command: converted,
        }
      ),
      with_group(value):: (
        local converted = value;
        assert std.isString(converted) : '"group" expected to be of type "string"';
        {
          group: converted,
        }
      ),
      with_launch_type(value):: (
        local converted = value;
        assert std.isString(converted) : '"launch_type" expected to be of type "string"';
        {
          launch_type: converted,
        }
      ),
      with_platform_version(value):: (
        local converted = value;
        assert std.isString(converted) : '"platform_version" expected to be of type "string"';
        {
          platform_version: converted,
        }
      ),
      with_propagate_tags(value):: (
        local converted = value;
        assert std.isString(converted) : '"propagate_tags" expected to be of type "string"';
        {
          propagate_tags: converted,
        }
      ),
      with_reference_id(value):: (
        local converted = value;
        assert std.isString(converted) : '"reference_id" expected to be of type "string"';
        {
          reference_id: converted,
        }
      ),
      with_tags(value):: (
        local converted = value;
        assert std.isObject(converted) : '"tags" expected to be of type "map"';
        {
          tags: converted,
        }
      ),
      with_task_count(value):: (
        local converted = value;
        assert std.isNumber(converted) : '"task_count" expected to be of type "number"';
        {
          task_count: converted,
        }
      ),
      with_task_definition_arn(value):: (
        local converted = value;
        assert std.isString(converted) : '"task_definition_arn" expected to be of type "string"';
        {
          task_definition_arn: converted,
        }
      ),
      capacity_provider_strategy:: {
        local block = self,
        new(capacity_provider):: (
          {}
          + block.with_capacity_provider(capacity_provider)
        ),
        with_base(value):: (
          local converted = value;
          assert std.isNumber(converted) : '"base" expected to be of type "number"';
          {
            base: converted,
          }
        ),
        with_capacity_provider(value):: (
          local converted = value;
          assert std.isString(converted) : '"capacity_provider" expected to be of type "string"';
          {
            capacity_provider: converted,
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
      network_configuration:: {
        local block = self,
        new(subnets):: (
          {}
          + block.with_subnets(subnets)
        ),
        with_assign_public_ip(value):: (
          local converted = value;
          assert std.isBoolean(converted) : '"assign_public_ip" expected to be of type "bool"';
          {
            assign_public_ip: converted,
          }
        ),
        with_security_groups(value):: (
          local converted = if std.isArray(value) then value else [value];
          assert (std.isArray(converted) && std.length(std.set(converted)) == std.length(converted)) : '"security_groups" expected to be of type "set"';
          {
            security_groups: converted,
          }
        ),
        with_security_groups_mixin(value):: (
          local converted = if std.isArray(value) then value else [value];
          assert (std.isArray(converted) && std.length(std.set(converted)) == std.length(converted)) : '"security_groups" expected to be of type "set"';
          {
            security_groups+: converted,
          }
        ),
        with_subnets(value):: (
          local converted = if std.isArray(value) then value else [value];
          assert (std.isArray(converted) && std.length(std.set(converted)) == std.length(converted)) : '"subnets" expected to be of type "set"';
          {
            subnets: converted,
          }
        ),
        with_subnets_mixin(value):: (
          local converted = if std.isArray(value) then value else [value];
          assert (std.isArray(converted) && std.length(std.set(converted)) == std.length(converted)) : '"subnets" expected to be of type "set"';
          {
            subnets+: converted,
          }
        ),
      },
      placement_constraints:: {
        local block = self,
        new(type):: (
          {}
          + block.with_type(type)
        ),
        with_expression(value):: (
          local converted = value;
          assert std.isString(converted) : '"expression" expected to be of type "string"';
          {
            expression: converted,
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
      placement_strategy:: {
        local block = self,
        new(type):: (
          {}
          + block.with_type(type)
        ),
        with_field(value):: (
          local converted = value;
          assert std.isString(converted) : '"field" expected to be of type "string"';
          {
            field: converted,
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
      with_capacity_provider_strategy(value):: (
        local converted = if std.isArray(value) then value else [value];
        {
          capacity_provider_strategy: value,
        }
      ),
      with_network_configuration(value):: (
        local converted = if std.isArray(value) then value else [value];
        {
          network_configuration: value,
        }
      ),
      with_placement_constraints(value):: (
        local converted = if std.isArray(value) then value else [value];
        {
          placement_constraints: value,
        }
      ),
      with_placement_strategy(value):: (
        local converted = if std.isArray(value) then value else [value];
        {
          placement_strategy: value,
        }
      ),
      with_capacity_provider_strategy_mixin(value):: (
        local converted = if std.isArray(value) then value else [value];
        {
          capacity_provider_strategy+: converted,
        }
      ),
      with_network_configuration_mixin(value):: (
        local converted = if std.isArray(value) then value else [value];
        {
          network_configuration+: converted,
        }
      ),
      with_placement_constraints_mixin(value):: (
        local converted = if std.isArray(value) then value else [value];
        {
          placement_constraints+: converted,
        }
      ),
      with_placement_strategy_mixin(value):: (
        local converted = if std.isArray(value) then value else [value];
        {
          placement_strategy+: converted,
        }
      ),
    },
    eventbridge_parameters:: {
      local block = self,
      new(detail_type, source):: (
        {}
        + block.with_detail_type(detail_type)
        + block.with_source(source)
      ),
      with_detail_type(value):: (
        local converted = value;
        assert std.isString(converted) : '"detail_type" expected to be of type "string"';
        {
          detail_type: converted,
        }
      ),
      with_source(value):: (
        local converted = value;
        assert std.isString(converted) : '"source" expected to be of type "string"';
        {
          source: converted,
        }
      ),
    },
    kinesis_parameters:: {
      local block = self,
      new(partition_key):: (
        {}
        + block.with_partition_key(partition_key)
      ),
      with_partition_key(value):: (
        local converted = value;
        assert std.isString(converted) : '"partition_key" expected to be of type "string"';
        {
          partition_key: converted,
        }
      ),
    },
    retry_policy:: {
      local block = self,
      new():: (
        {}
      ),
      with_maximum_event_age_in_seconds(value):: (
        local converted = value;
        assert std.isNumber(converted) : '"maximum_event_age_in_seconds" expected to be of type "number"';
        {
          maximum_event_age_in_seconds: converted,
        }
      ),
      with_maximum_retry_attempts(value):: (
        local converted = value;
        assert std.isNumber(converted) : '"maximum_retry_attempts" expected to be of type "number"';
        {
          maximum_retry_attempts: converted,
        }
      ),
    },
    sagemaker_pipeline_parameters:: {
      local block = self,
      new():: (
        {}
      ),
      pipeline_parameter:: {
        local block = self,
        new(name, value):: (
          {}
          + block.with_name(name)
          + block.with_value(value)
        ),
        with_name(value):: (
          local converted = value;
          assert std.isString(converted) : '"name" expected to be of type "string"';
          {
            name: converted,
          }
        ),
        with_value(value):: (
          local converted = value;
          assert std.isString(converted) : '"value" expected to be of type "string"';
          {
            value: converted,
          }
        ),
      },
      with_pipeline_parameter(value):: (
        local converted = if std.isArray(value) then value else [value];
        {
          pipeline_parameter: value,
        }
      ),
      with_pipeline_parameter_mixin(value):: (
        local converted = if std.isArray(value) then value else [value];
        {
          pipeline_parameter+: converted,
        }
      ),
    },
    sqs_parameters:: {
      local block = self,
      new():: (
        {}
      ),
      with_message_group_id(value):: (
        local converted = value;
        assert std.isString(converted) : '"message_group_id" expected to be of type "string"';
        {
          message_group_id: converted,
        }
      ),
    },
    with_dead_letter_config(value):: (
      local converted = if std.isArray(value) then value else [value];
      {
        dead_letter_config: value,
      }
    ),
    with_ecs_parameters(value):: (
      local converted = if std.isArray(value) then value else [value];
      {
        ecs_parameters: value,
      }
    ),
    with_eventbridge_parameters(value):: (
      local converted = if std.isArray(value) then value else [value];
      {
        eventbridge_parameters: value,
      }
    ),
    with_kinesis_parameters(value):: (
      local converted = if std.isArray(value) then value else [value];
      {
        kinesis_parameters: value,
      }
    ),
    with_retry_policy(value):: (
      local converted = if std.isArray(value) then value else [value];
      {
        retry_policy: value,
      }
    ),
    with_sagemaker_pipeline_parameters(value):: (
      local converted = if std.isArray(value) then value else [value];
      {
        sagemaker_pipeline_parameters: value,
      }
    ),
    with_sqs_parameters(value):: (
      local converted = if std.isArray(value) then value else [value];
      {
        sqs_parameters: value,
      }
    ),
    with_dead_letter_config_mixin(value):: (
      local converted = if std.isArray(value) then value else [value];
      {
        dead_letter_config+: converted,
      }
    ),
    with_ecs_parameters_mixin(value):: (
      local converted = if std.isArray(value) then value else [value];
      {
        ecs_parameters+: converted,
      }
    ),
    with_eventbridge_parameters_mixin(value):: (
      local converted = if std.isArray(value) then value else [value];
      {
        eventbridge_parameters+: converted,
      }
    ),
    with_kinesis_parameters_mixin(value):: (
      local converted = if std.isArray(value) then value else [value];
      {
        kinesis_parameters+: converted,
      }
    ),
    with_retry_policy_mixin(value):: (
      local converted = if std.isArray(value) then value else [value];
      {
        retry_policy+: converted,
      }
    ),
    with_sagemaker_pipeline_parameters_mixin(value):: (
      local converted = if std.isArray(value) then value else [value];
      {
        sagemaker_pipeline_parameters+: converted,
      }
    ),
    with_sqs_parameters_mixin(value):: (
      local converted = if std.isArray(value) then value else [value];
      {
        sqs_parameters+: converted,
      }
    ),
  },
  with_flexible_time_window(value):: (
    local converted = if std.isArray(value) then value else [value];
    {
      flexible_time_window: value,
    }
  ),
  with_target(value):: (
    local converted = if std.isArray(value) then value else [value];
    {
      target: value,
    }
  ),
  with_flexible_time_window_mixin(value):: (
    local converted = if std.isArray(value) then value else [value];
    {
      flexible_time_window+: converted,
    }
  ),
  with_target_mixin(value):: (
    local converted = if std.isArray(value) then value else [value];
    {
      target+: converted,
    }
  ),
}
