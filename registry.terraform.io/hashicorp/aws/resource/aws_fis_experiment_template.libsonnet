{
  local block = self,
  new(description, role_arn):: (
    {}
    + block.with_description(description)
    + block.with_role_arn(role_arn)
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
  action:: {
    local block = self,
    new(action_id, name):: (
      {}
      + block.with_action_id(action_id)
      + block.with_name(name)
    ),
    with_action_id(value):: (
      local converted = value;
      assert std.isString(converted) : '"action_id" expected to be of type "string"';
      {
        action_id: converted,
      }
    ),
    with_description(value):: (
      local converted = value;
      assert std.isString(converted) : '"description" expected to be of type "string"';
      {
        description: converted,
      }
    ),
    with_name(value):: (
      local converted = value;
      assert std.isString(converted) : '"name" expected to be of type "string"';
      {
        name: converted,
      }
    ),
    with_start_after(value):: (
      local converted = if std.isArray(value) then value else [value];
      assert (std.isArray(converted) && std.length(std.set(converted)) == std.length(converted)) : '"start_after" expected to be of type "set"';
      {
        start_after: converted,
      }
    ),
    with_start_after_mixin(value):: (
      local converted = if std.isArray(value) then value else [value];
      assert (std.isArray(converted) && std.length(std.set(converted)) == std.length(converted)) : '"start_after" expected to be of type "set"';
      {
        start_after+: converted,
      }
    ),
    parameter:: {
      local block = self,
      new(key, value):: (
        {}
        + block.with_key(key)
        + block.with_value(value)
      ),
      with_key(value):: (
        local converted = value;
        assert std.isString(converted) : '"key" expected to be of type "string"';
        {
          key: converted,
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
    target:: {
      local block = self,
      new(key, value):: (
        {}
        + block.with_key(key)
        + block.with_value(value)
      ),
      with_key(value):: (
        local converted = value;
        assert std.isString(converted) : '"key" expected to be of type "string"';
        {
          key: converted,
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
    with_parameter(value):: (
      local converted = if std.isArray(value) then value else [value];
      {
        parameter: value,
      }
    ),
    with_target(value):: (
      local converted = if std.isArray(value) then value else [value];
      {
        target: value,
      }
    ),
    with_parameter_mixin(value):: (
      local converted = if std.isArray(value) then value else [value];
      {
        parameter+: converted,
      }
    ),
    with_target_mixin(value):: (
      local converted = if std.isArray(value) then value else [value];
      {
        target+: converted,
      }
    ),
  },
  experiment_options:: {
    local block = self,
    new():: (
      {}
    ),
    with_account_targeting(value):: (
      local converted = value;
      assert std.isString(converted) : '"account_targeting" expected to be of type "string"';
      {
        account_targeting: converted,
      }
    ),
    with_empty_target_resolution_mode(value):: (
      local converted = value;
      assert std.isString(converted) : '"empty_target_resolution_mode" expected to be of type "string"';
      {
        empty_target_resolution_mode: converted,
      }
    ),
  },
  experiment_report_configuration:: {
    local block = self,
    new():: (
      {}
    ),
    with_post_experiment_duration(value):: (
      local converted = value;
      assert std.isString(converted) : '"post_experiment_duration" expected to be of type "string"';
      {
        post_experiment_duration: converted,
      }
    ),
    with_pre_experiment_duration(value):: (
      local converted = value;
      assert std.isString(converted) : '"pre_experiment_duration" expected to be of type "string"';
      {
        pre_experiment_duration: converted,
      }
    ),
    data_sources:: {
      local block = self,
      new():: (
        {}
      ),
      cloudwatch_dashboard:: {
        local block = self,
        new():: (
          {}
        ),
        with_dashboard_arn(value):: (
          local converted = value;
          assert std.isString(converted) : '"dashboard_arn" expected to be of type "string"';
          {
            dashboard_arn: converted,
          }
        ),
      },
      with_cloudwatch_dashboard(value):: (
        local converted = if std.isArray(value) then value else [value];
        {
          cloudwatch_dashboard: value,
        }
      ),
      with_cloudwatch_dashboard_mixin(value):: (
        local converted = if std.isArray(value) then value else [value];
        {
          cloudwatch_dashboard+: converted,
        }
      ),
    },
    outputs:: {
      local block = self,
      new():: (
        {}
      ),
      s3_configuration:: {
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
        with_prefix(value):: (
          local converted = value;
          assert std.isString(converted) : '"prefix" expected to be of type "string"';
          {
            prefix: converted,
          }
        ),
      },
      with_s3_configuration(value):: (
        local converted = if std.isArray(value) then value else [value];
        {
          s3_configuration: value,
        }
      ),
      with_s3_configuration_mixin(value):: (
        local converted = if std.isArray(value) then value else [value];
        {
          s3_configuration+: converted,
        }
      ),
    },
    with_data_sources(value):: (
      local converted = if std.isArray(value) then value else [value];
      {
        data_sources: value,
      }
    ),
    with_outputs(value):: (
      local converted = if std.isArray(value) then value else [value];
      {
        outputs: value,
      }
    ),
    with_data_sources_mixin(value):: (
      local converted = if std.isArray(value) then value else [value];
      {
        data_sources+: converted,
      }
    ),
    with_outputs_mixin(value):: (
      local converted = if std.isArray(value) then value else [value];
      {
        outputs+: converted,
      }
    ),
  },
  log_configuration:: {
    local block = self,
    new(log_schema_version):: (
      {}
      + block.with_log_schema_version(log_schema_version)
    ),
    with_log_schema_version(value):: (
      local converted = value;
      assert std.isNumber(converted) : '"log_schema_version" expected to be of type "number"';
      {
        log_schema_version: converted,
      }
    ),
    cloudwatch_logs_configuration:: {
      local block = self,
      new(log_group_arn):: (
        {}
        + block.with_log_group_arn(log_group_arn)
      ),
      with_log_group_arn(value):: (
        local converted = value;
        assert std.isString(converted) : '"log_group_arn" expected to be of type "string"';
        {
          log_group_arn: converted,
        }
      ),
    },
    s3_configuration:: {
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
      with_prefix(value):: (
        local converted = value;
        assert std.isString(converted) : '"prefix" expected to be of type "string"';
        {
          prefix: converted,
        }
      ),
    },
    with_cloudwatch_logs_configuration(value):: (
      local converted = if std.isArray(value) then value else [value];
      {
        cloudwatch_logs_configuration: value,
      }
    ),
    with_s3_configuration(value):: (
      local converted = if std.isArray(value) then value else [value];
      {
        s3_configuration: value,
      }
    ),
    with_cloudwatch_logs_configuration_mixin(value):: (
      local converted = if std.isArray(value) then value else [value];
      {
        cloudwatch_logs_configuration+: converted,
      }
    ),
    with_s3_configuration_mixin(value):: (
      local converted = if std.isArray(value) then value else [value];
      {
        s3_configuration+: converted,
      }
    ),
  },
  stop_condition:: {
    local block = self,
    new(source):: (
      {}
      + block.with_source(source)
    ),
    with_source(value):: (
      local converted = value;
      assert std.isString(converted) : '"source" expected to be of type "string"';
      {
        source: converted,
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
  target:: {
    local block = self,
    new(name, resource_type, selection_mode):: (
      {}
      + block.with_name(name)
      + block.with_resource_type(resource_type)
      + block.with_selection_mode(selection_mode)
    ),
    with_name(value):: (
      local converted = value;
      assert std.isString(converted) : '"name" expected to be of type "string"';
      {
        name: converted,
      }
    ),
    with_parameters(value):: (
      local converted = value;
      assert std.isObject(converted) : '"parameters" expected to be of type "map"';
      {
        parameters: converted,
      }
    ),
    with_resource_arns(value):: (
      local converted = if std.isArray(value) then value else [value];
      assert (std.isArray(converted) && std.length(std.set(converted)) == std.length(converted)) : '"resource_arns" expected to be of type "set"';
      {
        resource_arns: converted,
      }
    ),
    with_resource_arns_mixin(value):: (
      local converted = if std.isArray(value) then value else [value];
      assert (std.isArray(converted) && std.length(std.set(converted)) == std.length(converted)) : '"resource_arns" expected to be of type "set"';
      {
        resource_arns+: converted,
      }
    ),
    with_resource_type(value):: (
      local converted = value;
      assert std.isString(converted) : '"resource_type" expected to be of type "string"';
      {
        resource_type: converted,
      }
    ),
    with_selection_mode(value):: (
      local converted = value;
      assert std.isString(converted) : '"selection_mode" expected to be of type "string"';
      {
        selection_mode: converted,
      }
    ),
    filter:: {
      local block = self,
      new(path, values):: (
        {}
        + block.with_path(path)
        + block.with_values(values)
      ),
      with_path(value):: (
        local converted = value;
        assert std.isString(converted) : '"path" expected to be of type "string"';
        {
          path: converted,
        }
      ),
      with_values(value):: (
        local converted = if std.isArray(value) then value else [value];
        assert (std.isArray(converted) && std.length(std.set(converted)) == std.length(converted)) : '"values" expected to be of type "set"';
        {
          values: converted,
        }
      ),
      with_values_mixin(value):: (
        local converted = if std.isArray(value) then value else [value];
        assert (std.isArray(converted) && std.length(std.set(converted)) == std.length(converted)) : '"values" expected to be of type "set"';
        {
          values+: converted,
        }
      ),
    },
    resource_tag:: {
      local block = self,
      new(key, value):: (
        {}
        + block.with_key(key)
        + block.with_value(value)
      ),
      with_key(value):: (
        local converted = value;
        assert std.isString(converted) : '"key" expected to be of type "string"';
        {
          key: converted,
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
    with_filter(value):: (
      local converted = if std.isArray(value) then value else [value];
      {
        filter: value,
      }
    ),
    with_resource_tag(value):: (
      local converted = if std.isArray(value) then value else [value];
      {
        resource_tag: value,
      }
    ),
    with_filter_mixin(value):: (
      local converted = if std.isArray(value) then value else [value];
      {
        filter+: converted,
      }
    ),
    with_resource_tag_mixin(value):: (
      local converted = if std.isArray(value) then value else [value];
      {
        resource_tag+: converted,
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
  with_action(value):: (
    local converted = if std.isArray(value) then value else [value];
    {
      action: value,
    }
  ),
  with_experiment_options(value):: (
    local converted = if std.isArray(value) then value else [value];
    {
      experiment_options: value,
    }
  ),
  with_experiment_report_configuration(value):: (
    local converted = if std.isArray(value) then value else [value];
    {
      experiment_report_configuration: value,
    }
  ),
  with_log_configuration(value):: (
    local converted = if std.isArray(value) then value else [value];
    {
      log_configuration: value,
    }
  ),
  with_stop_condition(value):: (
    local converted = if std.isArray(value) then value else [value];
    {
      stop_condition: value,
    }
  ),
  with_target(value):: (
    local converted = if std.isArray(value) then value else [value];
    {
      target: value,
    }
  ),
  with_timeouts(value):: (
    local converted = value;
    {
      timeouts: value,
    }
  ),
  with_action_mixin(value):: (
    local converted = if std.isArray(value) then value else [value];
    {
      action+: converted,
    }
  ),
  with_experiment_options_mixin(value):: (
    local converted = if std.isArray(value) then value else [value];
    {
      experiment_options+: converted,
    }
  ),
  with_experiment_report_configuration_mixin(value):: (
    local converted = if std.isArray(value) then value else [value];
    {
      experiment_report_configuration+: converted,
    }
  ),
  with_log_configuration_mixin(value):: (
    local converted = if std.isArray(value) then value else [value];
    {
      log_configuration+: converted,
    }
  ),
  with_stop_condition_mixin(value):: (
    local converted = if std.isArray(value) then value else [value];
    {
      stop_condition+: converted,
    }
  ),
  with_target_mixin(value):: (
    local converted = if std.isArray(value) then value else [value];
    {
      target+: converted,
    }
  ),
}
