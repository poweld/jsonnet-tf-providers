{
  local block = self,
  new(name):: (
    {}
    + block.with_name(name)
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
  with_scaling_plan_version(value):: (
    local converted = value;
    assert std.isNumber(converted) : '"scaling_plan_version" expected to be of type "number"';
    {
      scaling_plan_version: converted,
    }
  ),
  application_source:: {
    local block = self,
    new():: (
      {}
    ),
    with_cloudformation_stack_arn(value):: (
      local converted = value;
      assert std.isString(converted) : '"cloudformation_stack_arn" expected to be of type "string"';
      {
        cloudformation_stack_arn: converted,
      }
    ),
    tag_filter:: {
      local block = self,
      new(key):: (
        {}
        + block.with_key(key)
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
    with_tag_filter(value):: (
      local converted = if std.isArray(value) then value else [value];
      {
        tag_filter: value,
      }
    ),
    with_tag_filter_mixin(value):: (
      local converted = if std.isArray(value) then value else [value];
      {
        tag_filter+: converted,
      }
    ),
  },
  scaling_instruction:: {
    local block = self,
    new(max_capacity, min_capacity, resource_id, scalable_dimension, service_namespace):: (
      {}
      + block.with_max_capacity(max_capacity)
      + block.with_min_capacity(min_capacity)
      + block.with_resource_id(resource_id)
      + block.with_scalable_dimension(scalable_dimension)
      + block.with_service_namespace(service_namespace)
    ),
    with_disable_dynamic_scaling(value):: (
      local converted = value;
      assert std.isBoolean(converted) : '"disable_dynamic_scaling" expected to be of type "bool"';
      {
        disable_dynamic_scaling: converted,
      }
    ),
    with_max_capacity(value):: (
      local converted = value;
      assert std.isNumber(converted) : '"max_capacity" expected to be of type "number"';
      {
        max_capacity: converted,
      }
    ),
    with_min_capacity(value):: (
      local converted = value;
      assert std.isNumber(converted) : '"min_capacity" expected to be of type "number"';
      {
        min_capacity: converted,
      }
    ),
    with_predictive_scaling_max_capacity_behavior(value):: (
      local converted = value;
      assert std.isString(converted) : '"predictive_scaling_max_capacity_behavior" expected to be of type "string"';
      {
        predictive_scaling_max_capacity_behavior: converted,
      }
    ),
    with_predictive_scaling_max_capacity_buffer(value):: (
      local converted = value;
      assert std.isNumber(converted) : '"predictive_scaling_max_capacity_buffer" expected to be of type "number"';
      {
        predictive_scaling_max_capacity_buffer: converted,
      }
    ),
    with_predictive_scaling_mode(value):: (
      local converted = value;
      assert std.isString(converted) : '"predictive_scaling_mode" expected to be of type "string"';
      {
        predictive_scaling_mode: converted,
      }
    ),
    with_resource_id(value):: (
      local converted = value;
      assert std.isString(converted) : '"resource_id" expected to be of type "string"';
      {
        resource_id: converted,
      }
    ),
    with_scalable_dimension(value):: (
      local converted = value;
      assert std.isString(converted) : '"scalable_dimension" expected to be of type "string"';
      {
        scalable_dimension: converted,
      }
    ),
    with_scaling_policy_update_behavior(value):: (
      local converted = value;
      assert std.isString(converted) : '"scaling_policy_update_behavior" expected to be of type "string"';
      {
        scaling_policy_update_behavior: converted,
      }
    ),
    with_scheduled_action_buffer_time(value):: (
      local converted = value;
      assert std.isNumber(converted) : '"scheduled_action_buffer_time" expected to be of type "number"';
      {
        scheduled_action_buffer_time: converted,
      }
    ),
    with_service_namespace(value):: (
      local converted = value;
      assert std.isString(converted) : '"service_namespace" expected to be of type "string"';
      {
        service_namespace: converted,
      }
    ),
    customized_load_metric_specification:: {
      local block = self,
      new(metric_name, namespace, statistic):: (
        {}
        + block.with_metric_name(metric_name)
        + block.with_namespace(namespace)
        + block.with_statistic(statistic)
      ),
      with_dimensions(value):: (
        local converted = value;
        assert std.isObject(converted) : '"dimensions" expected to be of type "map"';
        {
          dimensions: converted,
        }
      ),
      with_metric_name(value):: (
        local converted = value;
        assert std.isString(converted) : '"metric_name" expected to be of type "string"';
        {
          metric_name: converted,
        }
      ),
      with_namespace(value):: (
        local converted = value;
        assert std.isString(converted) : '"namespace" expected to be of type "string"';
        {
          namespace: converted,
        }
      ),
      with_statistic(value):: (
        local converted = value;
        assert std.isString(converted) : '"statistic" expected to be of type "string"';
        {
          statistic: converted,
        }
      ),
      with_unit(value):: (
        local converted = value;
        assert std.isString(converted) : '"unit" expected to be of type "string"';
        {
          unit: converted,
        }
      ),
    },
    predefined_load_metric_specification:: {
      local block = self,
      new(predefined_load_metric_type):: (
        {}
        + block.with_predefined_load_metric_type(predefined_load_metric_type)
      ),
      with_predefined_load_metric_type(value):: (
        local converted = value;
        assert std.isString(converted) : '"predefined_load_metric_type" expected to be of type "string"';
        {
          predefined_load_metric_type: converted,
        }
      ),
      with_resource_label(value):: (
        local converted = value;
        assert std.isString(converted) : '"resource_label" expected to be of type "string"';
        {
          resource_label: converted,
        }
      ),
    },
    target_tracking_configuration:: {
      local block = self,
      new(target_value):: (
        {}
        + block.with_target_value(target_value)
      ),
      with_disable_scale_in(value):: (
        local converted = value;
        assert std.isBoolean(converted) : '"disable_scale_in" expected to be of type "bool"';
        {
          disable_scale_in: converted,
        }
      ),
      with_estimated_instance_warmup(value):: (
        local converted = value;
        assert std.isNumber(converted) : '"estimated_instance_warmup" expected to be of type "number"';
        {
          estimated_instance_warmup: converted,
        }
      ),
      with_scale_in_cooldown(value):: (
        local converted = value;
        assert std.isNumber(converted) : '"scale_in_cooldown" expected to be of type "number"';
        {
          scale_in_cooldown: converted,
        }
      ),
      with_scale_out_cooldown(value):: (
        local converted = value;
        assert std.isNumber(converted) : '"scale_out_cooldown" expected to be of type "number"';
        {
          scale_out_cooldown: converted,
        }
      ),
      with_target_value(value):: (
        local converted = value;
        assert std.isNumber(converted) : '"target_value" expected to be of type "number"';
        {
          target_value: converted,
        }
      ),
      customized_scaling_metric_specification:: {
        local block = self,
        new(metric_name, namespace, statistic):: (
          {}
          + block.with_metric_name(metric_name)
          + block.with_namespace(namespace)
          + block.with_statistic(statistic)
        ),
        with_dimensions(value):: (
          local converted = value;
          assert std.isObject(converted) : '"dimensions" expected to be of type "map"';
          {
            dimensions: converted,
          }
        ),
        with_metric_name(value):: (
          local converted = value;
          assert std.isString(converted) : '"metric_name" expected to be of type "string"';
          {
            metric_name: converted,
          }
        ),
        with_namespace(value):: (
          local converted = value;
          assert std.isString(converted) : '"namespace" expected to be of type "string"';
          {
            namespace: converted,
          }
        ),
        with_statistic(value):: (
          local converted = value;
          assert std.isString(converted) : '"statistic" expected to be of type "string"';
          {
            statistic: converted,
          }
        ),
        with_unit(value):: (
          local converted = value;
          assert std.isString(converted) : '"unit" expected to be of type "string"';
          {
            unit: converted,
          }
        ),
      },
      predefined_scaling_metric_specification:: {
        local block = self,
        new(predefined_scaling_metric_type):: (
          {}
          + block.with_predefined_scaling_metric_type(predefined_scaling_metric_type)
        ),
        with_predefined_scaling_metric_type(value):: (
          local converted = value;
          assert std.isString(converted) : '"predefined_scaling_metric_type" expected to be of type "string"';
          {
            predefined_scaling_metric_type: converted,
          }
        ),
        with_resource_label(value):: (
          local converted = value;
          assert std.isString(converted) : '"resource_label" expected to be of type "string"';
          {
            resource_label: converted,
          }
        ),
      },
      with_customized_scaling_metric_specification(value):: (
        local converted = if std.isArray(value) then value else [value];
        {
          customized_scaling_metric_specification: value,
        }
      ),
      with_predefined_scaling_metric_specification(value):: (
        local converted = if std.isArray(value) then value else [value];
        {
          predefined_scaling_metric_specification: value,
        }
      ),
      with_customized_scaling_metric_specification_mixin(value):: (
        local converted = if std.isArray(value) then value else [value];
        {
          customized_scaling_metric_specification+: converted,
        }
      ),
      with_predefined_scaling_metric_specification_mixin(value):: (
        local converted = if std.isArray(value) then value else [value];
        {
          predefined_scaling_metric_specification+: converted,
        }
      ),
    },
    with_customized_load_metric_specification(value):: (
      local converted = if std.isArray(value) then value else [value];
      {
        customized_load_metric_specification: value,
      }
    ),
    with_predefined_load_metric_specification(value):: (
      local converted = if std.isArray(value) then value else [value];
      {
        predefined_load_metric_specification: value,
      }
    ),
    with_target_tracking_configuration(value):: (
      local converted = if std.isArray(value) then value else [value];
      {
        target_tracking_configuration: value,
      }
    ),
    with_customized_load_metric_specification_mixin(value):: (
      local converted = if std.isArray(value) then value else [value];
      {
        customized_load_metric_specification+: converted,
      }
    ),
    with_predefined_load_metric_specification_mixin(value):: (
      local converted = if std.isArray(value) then value else [value];
      {
        predefined_load_metric_specification+: converted,
      }
    ),
    with_target_tracking_configuration_mixin(value):: (
      local converted = if std.isArray(value) then value else [value];
      {
        target_tracking_configuration+: converted,
      }
    ),
  },
  with_application_source(value):: (
    local converted = if std.isArray(value) then value else [value];
    {
      application_source: value,
    }
  ),
  with_scaling_instruction(value):: (
    local converted = if std.isArray(value) then value else [value];
    {
      scaling_instruction: value,
    }
  ),
  with_application_source_mixin(value):: (
    local converted = if std.isArray(value) then value else [value];
    {
      application_source+: converted,
    }
  ),
  with_scaling_instruction_mixin(value):: (
    local converted = if std.isArray(value) then value else [value];
    {
      scaling_instruction+: converted,
    }
  ),
}
