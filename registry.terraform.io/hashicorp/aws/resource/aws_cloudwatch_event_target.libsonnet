{
  local block = self,
  new(arn, rule):: (
    {}
    + block.with_arn(arn)
    + block.with_rule(rule)
  ),
  with_arn(value):: (
    local converted = value;
    assert std.isString(converted) : '"arn" expected to be of type "string"';
    {
      arn: converted,
    }
  ),
  with_event_bus_name(value):: (
    local converted = value;
    assert std.isString(converted) : '"event_bus_name" expected to be of type "string"';
    {
      event_bus_name: converted,
    }
  ),
  with_force_destroy(value):: (
    local converted = value;
    assert std.isBoolean(converted) : '"force_destroy" expected to be of type "bool"';
    {
      force_destroy: converted,
    }
  ),
  with_id(value):: (
    local converted = value;
    assert std.isString(converted) : '"id" expected to be of type "string"';
    {
      id: converted,
    }
  ),
  with_input(value):: (
    local converted = value;
    assert std.isString(converted) : '"input" expected to be of type "string"';
    {
      input: converted,
    }
  ),
  with_input_path(value):: (
    local converted = value;
    assert std.isString(converted) : '"input_path" expected to be of type "string"';
    {
      input_path: converted,
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
  with_role_arn(value):: (
    local converted = value;
    assert std.isString(converted) : '"role_arn" expected to be of type "string"';
    {
      role_arn: converted,
    }
  ),
  with_rule(value):: (
    local converted = value;
    assert std.isString(converted) : '"rule" expected to be of type "string"';
    {
      rule: converted,
    }
  ),
  with_target_id(value):: (
    local converted = value;
    assert std.isString(converted) : '"target_id" expected to be of type "string"';
    {
      target_id: converted,
    }
  ),
  appsync_target:: {
    local block = self,
    new():: (
      {}
    ),
    with_graphql_operation(value):: (
      local converted = value;
      assert std.isString(converted) : '"graphql_operation" expected to be of type "string"';
      {
        graphql_operation: converted,
      }
    ),
  },
  batch_target:: {
    local block = self,
    new(job_definition, job_name):: (
      {}
      + block.with_job_definition(job_definition)
      + block.with_job_name(job_name)
    ),
    with_array_size(value):: (
      local converted = value;
      assert std.isNumber(converted) : '"array_size" expected to be of type "number"';
      {
        array_size: converted,
      }
    ),
    with_job_attempts(value):: (
      local converted = value;
      assert std.isNumber(converted) : '"job_attempts" expected to be of type "number"';
      {
        job_attempts: converted,
      }
    ),
    with_job_definition(value):: (
      local converted = value;
      assert std.isString(converted) : '"job_definition" expected to be of type "string"';
      {
        job_definition: converted,
      }
    ),
    with_job_name(value):: (
      local converted = value;
      assert std.isString(converted) : '"job_name" expected to be of type "string"';
      {
        job_name: converted,
      }
    ),
  },
  dead_letter_config:: {
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
  },
  ecs_target:: {
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
    ordered_placement_strategy:: {
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
    placement_constraint:: {
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
    with_ordered_placement_strategy(value):: (
      local converted = if std.isArray(value) then value else [value];
      {
        ordered_placement_strategy: value,
      }
    ),
    with_placement_constraint(value):: (
      local converted = if std.isArray(value) then value else [value];
      {
        placement_constraint: value,
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
    with_ordered_placement_strategy_mixin(value):: (
      local converted = if std.isArray(value) then value else [value];
      {
        ordered_placement_strategy+: converted,
      }
    ),
    with_placement_constraint_mixin(value):: (
      local converted = if std.isArray(value) then value else [value];
      {
        placement_constraint+: converted,
      }
    ),
  },
  http_target:: {
    local block = self,
    new():: (
      {}
    ),
    with_header_parameters(value):: (
      local converted = value;
      assert std.isObject(converted) : '"header_parameters" expected to be of type "map"';
      {
        header_parameters: converted,
      }
    ),
    with_path_parameter_values(value):: (
      local converted = if std.isArray(value) then value else [value];
      assert std.isArray(converted) : '"path_parameter_values" expected to be of type "list"';
      {
        path_parameter_values: converted,
      }
    ),
    with_path_parameter_values_mixin(value):: (
      local converted = if std.isArray(value) then value else [value];
      assert std.isArray(converted) : '"path_parameter_values" expected to be of type "list"';
      {
        path_parameter_values+: converted,
      }
    ),
    with_query_string_parameters(value):: (
      local converted = value;
      assert std.isObject(converted) : '"query_string_parameters" expected to be of type "map"';
      {
        query_string_parameters: converted,
      }
    ),
  },
  input_transformer:: {
    local block = self,
    new(input_template):: (
      {}
      + block.with_input_template(input_template)
    ),
    with_input_paths(value):: (
      local converted = value;
      assert std.isObject(converted) : '"input_paths" expected to be of type "map"';
      {
        input_paths: converted,
      }
    ),
    with_input_template(value):: (
      local converted = value;
      assert std.isString(converted) : '"input_template" expected to be of type "string"';
      {
        input_template: converted,
      }
    ),
  },
  kinesis_target:: {
    local block = self,
    new():: (
      {}
    ),
    with_partition_key_path(value):: (
      local converted = value;
      assert std.isString(converted) : '"partition_key_path" expected to be of type "string"';
      {
        partition_key_path: converted,
      }
    ),
  },
  redshift_target:: {
    local block = self,
    new(database):: (
      {}
      + block.with_database(database)
    ),
    with_database(value):: (
      local converted = value;
      assert std.isString(converted) : '"database" expected to be of type "string"';
      {
        database: converted,
      }
    ),
    with_db_user(value):: (
      local converted = value;
      assert std.isString(converted) : '"db_user" expected to be of type "string"';
      {
        db_user: converted,
      }
    ),
    with_secrets_manager_arn(value):: (
      local converted = value;
      assert std.isString(converted) : '"secrets_manager_arn" expected to be of type "string"';
      {
        secrets_manager_arn: converted,
      }
    ),
    with_sql(value):: (
      local converted = value;
      assert std.isString(converted) : '"sql" expected to be of type "string"';
      {
        sql: converted,
      }
    ),
    with_statement_name(value):: (
      local converted = value;
      assert std.isString(converted) : '"statement_name" expected to be of type "string"';
      {
        statement_name: converted,
      }
    ),
    with_with_event(value):: (
      local converted = value;
      assert std.isBoolean(converted) : '"with_event" expected to be of type "bool"';
      {
        with_event: converted,
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
  run_command_targets:: {
    local block = self,
    new(key, values):: (
      {}
      + block.with_key(key)
      + block.with_values(values)
    ),
    with_key(value):: (
      local converted = value;
      assert std.isString(converted) : '"key" expected to be of type "string"';
      {
        key: converted,
      }
    ),
    with_values(value):: (
      local converted = if std.isArray(value) then value else [value];
      assert std.isArray(converted) : '"values" expected to be of type "list"';
      {
        values: converted,
      }
    ),
    with_values_mixin(value):: (
      local converted = if std.isArray(value) then value else [value];
      assert std.isArray(converted) : '"values" expected to be of type "list"';
      {
        values+: converted,
      }
    ),
  },
  sagemaker_pipeline_target:: {
    local block = self,
    new():: (
      {}
    ),
    pipeline_parameter_list:: {
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
    with_pipeline_parameter_list(value):: (
      local converted = if std.isArray(value) then value else [value];
      {
        pipeline_parameter_list: value,
      }
    ),
    with_pipeline_parameter_list_mixin(value):: (
      local converted = if std.isArray(value) then value else [value];
      {
        pipeline_parameter_list+: converted,
      }
    ),
  },
  sqs_target:: {
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
  with_appsync_target(value):: (
    local converted = if std.isArray(value) then value else [value];
    {
      appsync_target: value,
    }
  ),
  with_batch_target(value):: (
    local converted = if std.isArray(value) then value else [value];
    {
      batch_target: value,
    }
  ),
  with_dead_letter_config(value):: (
    local converted = if std.isArray(value) then value else [value];
    {
      dead_letter_config: value,
    }
  ),
  with_ecs_target(value):: (
    local converted = if std.isArray(value) then value else [value];
    {
      ecs_target: value,
    }
  ),
  with_http_target(value):: (
    local converted = if std.isArray(value) then value else [value];
    {
      http_target: value,
    }
  ),
  with_input_transformer(value):: (
    local converted = if std.isArray(value) then value else [value];
    {
      input_transformer: value,
    }
  ),
  with_kinesis_target(value):: (
    local converted = if std.isArray(value) then value else [value];
    {
      kinesis_target: value,
    }
  ),
  with_redshift_target(value):: (
    local converted = if std.isArray(value) then value else [value];
    {
      redshift_target: value,
    }
  ),
  with_retry_policy(value):: (
    local converted = if std.isArray(value) then value else [value];
    {
      retry_policy: value,
    }
  ),
  with_run_command_targets(value):: (
    local converted = if std.isArray(value) then value else [value];
    {
      run_command_targets: value,
    }
  ),
  with_sagemaker_pipeline_target(value):: (
    local converted = if std.isArray(value) then value else [value];
    {
      sagemaker_pipeline_target: value,
    }
  ),
  with_sqs_target(value):: (
    local converted = if std.isArray(value) then value else [value];
    {
      sqs_target: value,
    }
  ),
  with_appsync_target_mixin(value):: (
    local converted = if std.isArray(value) then value else [value];
    {
      appsync_target+: converted,
    }
  ),
  with_batch_target_mixin(value):: (
    local converted = if std.isArray(value) then value else [value];
    {
      batch_target+: converted,
    }
  ),
  with_dead_letter_config_mixin(value):: (
    local converted = if std.isArray(value) then value else [value];
    {
      dead_letter_config+: converted,
    }
  ),
  with_ecs_target_mixin(value):: (
    local converted = if std.isArray(value) then value else [value];
    {
      ecs_target+: converted,
    }
  ),
  with_http_target_mixin(value):: (
    local converted = if std.isArray(value) then value else [value];
    {
      http_target+: converted,
    }
  ),
  with_input_transformer_mixin(value):: (
    local converted = if std.isArray(value) then value else [value];
    {
      input_transformer+: converted,
    }
  ),
  with_kinesis_target_mixin(value):: (
    local converted = if std.isArray(value) then value else [value];
    {
      kinesis_target+: converted,
    }
  ),
  with_redshift_target_mixin(value):: (
    local converted = if std.isArray(value) then value else [value];
    {
      redshift_target+: converted,
    }
  ),
  with_retry_policy_mixin(value):: (
    local converted = if std.isArray(value) then value else [value];
    {
      retry_policy+: converted,
    }
  ),
  with_run_command_targets_mixin(value):: (
    local converted = if std.isArray(value) then value else [value];
    {
      run_command_targets+: converted,
    }
  ),
  with_sagemaker_pipeline_target_mixin(value):: (
    local converted = if std.isArray(value) then value else [value];
    {
      sagemaker_pipeline_target+: converted,
    }
  ),
  with_sqs_target_mixin(value):: (
    local converted = if std.isArray(value) then value else [value];
    {
      sqs_target+: converted,
    }
  ),
}
