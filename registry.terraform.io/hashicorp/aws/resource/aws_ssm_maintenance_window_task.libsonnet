{
  local block = self,
  new(task_arn, task_type, window_id):: (
    {}
    + block.with_task_arn(task_arn)
    + block.with_task_type(task_type)
    + block.with_window_id(window_id)
  ),
  with_arn(value):: (
    local converted = value;
    assert std.isString(converted) : '"arn" expected to be of type "string"';
    {
      arn: converted,
    }
  ),
  with_cutoff_behavior(value):: (
    local converted = value;
    assert std.isString(converted) : '"cutoff_behavior" expected to be of type "string"';
    {
      cutoff_behavior: converted,
    }
  ),
  with_description(value):: (
    local converted = value;
    assert std.isString(converted) : '"description" expected to be of type "string"';
    {
      description: converted,
    }
  ),
  with_id(value):: (
    local converted = value;
    assert std.isString(converted) : '"id" expected to be of type "string"';
    {
      id: converted,
    }
  ),
  with_max_concurrency(value):: (
    local converted = value;
    assert std.isString(converted) : '"max_concurrency" expected to be of type "string"';
    {
      max_concurrency: converted,
    }
  ),
  with_max_errors(value):: (
    local converted = value;
    assert std.isString(converted) : '"max_errors" expected to be of type "string"';
    {
      max_errors: converted,
    }
  ),
  with_name(value):: (
    local converted = value;
    assert std.isString(converted) : '"name" expected to be of type "string"';
    {
      name: converted,
    }
  ),
  with_priority(value):: (
    local converted = value;
    assert std.isNumber(converted) : '"priority" expected to be of type "number"';
    {
      priority: converted,
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
  with_service_role_arn(value):: (
    local converted = value;
    assert std.isString(converted) : '"service_role_arn" expected to be of type "string"';
    {
      service_role_arn: converted,
    }
  ),
  with_task_arn(value):: (
    local converted = value;
    assert std.isString(converted) : '"task_arn" expected to be of type "string"';
    {
      task_arn: converted,
    }
  ),
  with_task_type(value):: (
    local converted = value;
    assert std.isString(converted) : '"task_type" expected to be of type "string"';
    {
      task_type: converted,
    }
  ),
  with_window_id(value):: (
    local converted = value;
    assert std.isString(converted) : '"window_id" expected to be of type "string"';
    {
      window_id: converted,
    }
  ),
  with_window_task_id(value):: (
    local converted = value;
    assert std.isString(converted) : '"window_task_id" expected to be of type "string"';
    {
      window_task_id: converted,
    }
  ),
  targets:: {
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
  task_invocation_parameters:: {
    local block = self,
    new():: (
      {}
    ),
    automation_parameters:: {
      local block = self,
      new():: (
        {}
      ),
      with_document_version(value):: (
        local converted = value;
        assert std.isString(converted) : '"document_version" expected to be of type "string"';
        {
          document_version: converted,
        }
      ),
      parameter:: {
        local block = self,
        new(name, values):: (
          {}
          + block.with_name(name)
          + block.with_values(values)
        ),
        with_name(value):: (
          local converted = value;
          assert std.isString(converted) : '"name" expected to be of type "string"';
          {
            name: converted,
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
      with_parameter(value):: (
        local converted = if std.isArray(value) then value else [value];
        {
          parameter: value,
        }
      ),
      with_parameter_mixin(value):: (
        local converted = if std.isArray(value) then value else [value];
        {
          parameter+: converted,
        }
      ),
    },
    lambda_parameters:: {
      local block = self,
      new():: (
        {}
      ),
      with_client_context(value):: (
        local converted = value;
        assert std.isString(converted) : '"client_context" expected to be of type "string"';
        {
          client_context: converted,
        }
      ),
      with_payload(value):: (
        local converted = value;
        assert std.isString(converted) : '"payload" expected to be of type "string"';
        {
          payload: converted,
        }
      ),
      with_qualifier(value):: (
        local converted = value;
        assert std.isString(converted) : '"qualifier" expected to be of type "string"';
        {
          qualifier: converted,
        }
      ),
    },
    run_command_parameters:: {
      local block = self,
      new():: (
        {}
      ),
      with_comment(value):: (
        local converted = value;
        assert std.isString(converted) : '"comment" expected to be of type "string"';
        {
          comment: converted,
        }
      ),
      with_document_hash(value):: (
        local converted = value;
        assert std.isString(converted) : '"document_hash" expected to be of type "string"';
        {
          document_hash: converted,
        }
      ),
      with_document_hash_type(value):: (
        local converted = value;
        assert std.isString(converted) : '"document_hash_type" expected to be of type "string"';
        {
          document_hash_type: converted,
        }
      ),
      with_document_version(value):: (
        local converted = value;
        assert std.isString(converted) : '"document_version" expected to be of type "string"';
        {
          document_version: converted,
        }
      ),
      with_output_s3_bucket(value):: (
        local converted = value;
        assert std.isString(converted) : '"output_s3_bucket" expected to be of type "string"';
        {
          output_s3_bucket: converted,
        }
      ),
      with_output_s3_key_prefix(value):: (
        local converted = value;
        assert std.isString(converted) : '"output_s3_key_prefix" expected to be of type "string"';
        {
          output_s3_key_prefix: converted,
        }
      ),
      with_service_role_arn(value):: (
        local converted = value;
        assert std.isString(converted) : '"service_role_arn" expected to be of type "string"';
        {
          service_role_arn: converted,
        }
      ),
      with_timeout_seconds(value):: (
        local converted = value;
        assert std.isNumber(converted) : '"timeout_seconds" expected to be of type "number"';
        {
          timeout_seconds: converted,
        }
      ),
      cloudwatch_config:: {
        local block = self,
        new():: (
          {}
        ),
        with_cloudwatch_log_group_name(value):: (
          local converted = value;
          assert std.isString(converted) : '"cloudwatch_log_group_name" expected to be of type "string"';
          {
            cloudwatch_log_group_name: converted,
          }
        ),
        with_cloudwatch_output_enabled(value):: (
          local converted = value;
          assert std.isBoolean(converted) : '"cloudwatch_output_enabled" expected to be of type "bool"';
          {
            cloudwatch_output_enabled: converted,
          }
        ),
      },
      notification_config:: {
        local block = self,
        new():: (
          {}
        ),
        with_notification_arn(value):: (
          local converted = value;
          assert std.isString(converted) : '"notification_arn" expected to be of type "string"';
          {
            notification_arn: converted,
          }
        ),
        with_notification_events(value):: (
          local converted = if std.isArray(value) then value else [value];
          assert std.isArray(converted) : '"notification_events" expected to be of type "list"';
          {
            notification_events: converted,
          }
        ),
        with_notification_events_mixin(value):: (
          local converted = if std.isArray(value) then value else [value];
          assert std.isArray(converted) : '"notification_events" expected to be of type "list"';
          {
            notification_events+: converted,
          }
        ),
        with_notification_type(value):: (
          local converted = value;
          assert std.isString(converted) : '"notification_type" expected to be of type "string"';
          {
            notification_type: converted,
          }
        ),
      },
      parameter:: {
        local block = self,
        new(name, values):: (
          {}
          + block.with_name(name)
          + block.with_values(values)
        ),
        with_name(value):: (
          local converted = value;
          assert std.isString(converted) : '"name" expected to be of type "string"';
          {
            name: converted,
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
      with_cloudwatch_config(value):: (
        local converted = if std.isArray(value) then value else [value];
        {
          cloudwatch_config: value,
        }
      ),
      with_notification_config(value):: (
        local converted = if std.isArray(value) then value else [value];
        {
          notification_config: value,
        }
      ),
      with_parameter(value):: (
        local converted = if std.isArray(value) then value else [value];
        {
          parameter: value,
        }
      ),
      with_cloudwatch_config_mixin(value):: (
        local converted = if std.isArray(value) then value else [value];
        {
          cloudwatch_config+: converted,
        }
      ),
      with_notification_config_mixin(value):: (
        local converted = if std.isArray(value) then value else [value];
        {
          notification_config+: converted,
        }
      ),
      with_parameter_mixin(value):: (
        local converted = if std.isArray(value) then value else [value];
        {
          parameter+: converted,
        }
      ),
    },
    step_functions_parameters:: {
      local block = self,
      new():: (
        {}
      ),
      with_input(value):: (
        local converted = value;
        assert std.isString(converted) : '"input" expected to be of type "string"';
        {
          input: converted,
        }
      ),
      with_name(value):: (
        local converted = value;
        assert std.isString(converted) : '"name" expected to be of type "string"';
        {
          name: converted,
        }
      ),
    },
    with_automation_parameters(value):: (
      local converted = if std.isArray(value) then value else [value];
      {
        automation_parameters: value,
      }
    ),
    with_lambda_parameters(value):: (
      local converted = if std.isArray(value) then value else [value];
      {
        lambda_parameters: value,
      }
    ),
    with_run_command_parameters(value):: (
      local converted = if std.isArray(value) then value else [value];
      {
        run_command_parameters: value,
      }
    ),
    with_step_functions_parameters(value):: (
      local converted = if std.isArray(value) then value else [value];
      {
        step_functions_parameters: value,
      }
    ),
    with_automation_parameters_mixin(value):: (
      local converted = if std.isArray(value) then value else [value];
      {
        automation_parameters+: converted,
      }
    ),
    with_lambda_parameters_mixin(value):: (
      local converted = if std.isArray(value) then value else [value];
      {
        lambda_parameters+: converted,
      }
    ),
    with_run_command_parameters_mixin(value):: (
      local converted = if std.isArray(value) then value else [value];
      {
        run_command_parameters+: converted,
      }
    ),
    with_step_functions_parameters_mixin(value):: (
      local converted = if std.isArray(value) then value else [value];
      {
        step_functions_parameters+: converted,
      }
    ),
  },
  with_targets(value):: (
    local converted = if std.isArray(value) then value else [value];
    {
      targets: value,
    }
  ),
  with_task_invocation_parameters(value):: (
    local converted = if std.isArray(value) then value else [value];
    {
      task_invocation_parameters: value,
    }
  ),
  with_targets_mixin(value):: (
    local converted = if std.isArray(value) then value else [value];
    {
      targets+: converted,
    }
  ),
  with_task_invocation_parameters_mixin(value):: (
    local converted = if std.isArray(value) then value else [value];
    {
      task_invocation_parameters+: converted,
    }
  ),
}
