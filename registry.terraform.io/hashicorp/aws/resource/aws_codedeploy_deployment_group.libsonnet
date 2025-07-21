{
  local block = self,
  new(app_name, deployment_group_name, service_role_arn):: (
    {}
    + block.with_app_name(app_name)
    + block.with_deployment_group_name(deployment_group_name)
    + block.with_service_role_arn(service_role_arn)
  ),
  with_app_name(value):: (
    local converted = value;
    assert std.isString(converted) : '"app_name" expected to be of type "string"';
    {
      app_name: converted,
    }
  ),
  with_arn(value):: (
    local converted = value;
    assert std.isString(converted) : '"arn" expected to be of type "string"';
    {
      arn: converted,
    }
  ),
  with_autoscaling_groups(value):: (
    local converted = if std.isArray(value) then value else [value];
    assert (std.isArray(converted) && std.length(std.set(converted)) == std.length(converted)) : '"autoscaling_groups" expected to be of type "set"';
    {
      autoscaling_groups: converted,
    }
  ),
  with_autoscaling_groups_mixin(value):: (
    local converted = if std.isArray(value) then value else [value];
    assert (std.isArray(converted) && std.length(std.set(converted)) == std.length(converted)) : '"autoscaling_groups" expected to be of type "set"';
    {
      autoscaling_groups+: converted,
    }
  ),
  with_compute_platform(value):: (
    local converted = value;
    assert std.isString(converted) : '"compute_platform" expected to be of type "string"';
    {
      compute_platform: converted,
    }
  ),
  with_deployment_config_name(value):: (
    local converted = value;
    assert std.isString(converted) : '"deployment_config_name" expected to be of type "string"';
    {
      deployment_config_name: converted,
    }
  ),
  with_deployment_group_id(value):: (
    local converted = value;
    assert std.isString(converted) : '"deployment_group_id" expected to be of type "string"';
    {
      deployment_group_id: converted,
    }
  ),
  with_deployment_group_name(value):: (
    local converted = value;
    assert std.isString(converted) : '"deployment_group_name" expected to be of type "string"';
    {
      deployment_group_name: converted,
    }
  ),
  with_id(value):: (
    local converted = value;
    assert std.isString(converted) : '"id" expected to be of type "string"';
    {
      id: converted,
    }
  ),
  with_outdated_instances_strategy(value):: (
    local converted = value;
    assert std.isString(converted) : '"outdated_instances_strategy" expected to be of type "string"';
    {
      outdated_instances_strategy: converted,
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
  with_termination_hook_enabled(value):: (
    local converted = value;
    assert std.isBoolean(converted) : '"termination_hook_enabled" expected to be of type "bool"';
    {
      termination_hook_enabled: converted,
    }
  ),
  alarm_configuration:: {
    local block = self,
    new():: (
      {}
    ),
    with_alarms(value):: (
      local converted = if std.isArray(value) then value else [value];
      assert (std.isArray(converted) && std.length(std.set(converted)) == std.length(converted)) : '"alarms" expected to be of type "set"';
      {
        alarms: converted,
      }
    ),
    with_alarms_mixin(value):: (
      local converted = if std.isArray(value) then value else [value];
      assert (std.isArray(converted) && std.length(std.set(converted)) == std.length(converted)) : '"alarms" expected to be of type "set"';
      {
        alarms+: converted,
      }
    ),
    with_enabled(value):: (
      local converted = value;
      assert std.isBoolean(converted) : '"enabled" expected to be of type "bool"';
      {
        enabled: converted,
      }
    ),
    with_ignore_poll_alarm_failure(value):: (
      local converted = value;
      assert std.isBoolean(converted) : '"ignore_poll_alarm_failure" expected to be of type "bool"';
      {
        ignore_poll_alarm_failure: converted,
      }
    ),
  },
  auto_rollback_configuration:: {
    local block = self,
    new():: (
      {}
    ),
    with_enabled(value):: (
      local converted = value;
      assert std.isBoolean(converted) : '"enabled" expected to be of type "bool"';
      {
        enabled: converted,
      }
    ),
    with_events(value):: (
      local converted = if std.isArray(value) then value else [value];
      assert (std.isArray(converted) && std.length(std.set(converted)) == std.length(converted)) : '"events" expected to be of type "set"';
      {
        events: converted,
      }
    ),
    with_events_mixin(value):: (
      local converted = if std.isArray(value) then value else [value];
      assert (std.isArray(converted) && std.length(std.set(converted)) == std.length(converted)) : '"events" expected to be of type "set"';
      {
        events+: converted,
      }
    ),
  },
  blue_green_deployment_config:: {
    local block = self,
    new():: (
      {}
    ),
    deployment_ready_option:: {
      local block = self,
      new():: (
        {}
      ),
      with_action_on_timeout(value):: (
        local converted = value;
        assert std.isString(converted) : '"action_on_timeout" expected to be of type "string"';
        {
          action_on_timeout: converted,
        }
      ),
      with_wait_time_in_minutes(value):: (
        local converted = value;
        assert std.isNumber(converted) : '"wait_time_in_minutes" expected to be of type "number"';
        {
          wait_time_in_minutes: converted,
        }
      ),
    },
    green_fleet_provisioning_option:: {
      local block = self,
      new():: (
        {}
      ),
      with_action(value):: (
        local converted = value;
        assert std.isString(converted) : '"action" expected to be of type "string"';
        {
          action: converted,
        }
      ),
    },
    terminate_blue_instances_on_deployment_success:: {
      local block = self,
      new():: (
        {}
      ),
      with_action(value):: (
        local converted = value;
        assert std.isString(converted) : '"action" expected to be of type "string"';
        {
          action: converted,
        }
      ),
      with_termination_wait_time_in_minutes(value):: (
        local converted = value;
        assert std.isNumber(converted) : '"termination_wait_time_in_minutes" expected to be of type "number"';
        {
          termination_wait_time_in_minutes: converted,
        }
      ),
    },
    with_deployment_ready_option(value):: (
      local converted = if std.isArray(value) then value else [value];
      {
        deployment_ready_option: value,
      }
    ),
    with_green_fleet_provisioning_option(value):: (
      local converted = if std.isArray(value) then value else [value];
      {
        green_fleet_provisioning_option: value,
      }
    ),
    with_terminate_blue_instances_on_deployment_success(value):: (
      local converted = if std.isArray(value) then value else [value];
      {
        terminate_blue_instances_on_deployment_success: value,
      }
    ),
    with_deployment_ready_option_mixin(value):: (
      local converted = if std.isArray(value) then value else [value];
      {
        deployment_ready_option+: converted,
      }
    ),
    with_green_fleet_provisioning_option_mixin(value):: (
      local converted = if std.isArray(value) then value else [value];
      {
        green_fleet_provisioning_option+: converted,
      }
    ),
    with_terminate_blue_instances_on_deployment_success_mixin(value):: (
      local converted = if std.isArray(value) then value else [value];
      {
        terminate_blue_instances_on_deployment_success+: converted,
      }
    ),
  },
  deployment_style:: {
    local block = self,
    new():: (
      {}
    ),
    with_deployment_option(value):: (
      local converted = value;
      assert std.isString(converted) : '"deployment_option" expected to be of type "string"';
      {
        deployment_option: converted,
      }
    ),
    with_deployment_type(value):: (
      local converted = value;
      assert std.isString(converted) : '"deployment_type" expected to be of type "string"';
      {
        deployment_type: converted,
      }
    ),
  },
  ec2_tag_filter:: {
    local block = self,
    new():: (
      {}
    ),
    with_key(value):: (
      local converted = value;
      assert std.isString(converted) : '"key" expected to be of type "string"';
      {
        key: converted,
      }
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
      assert std.isString(converted) : '"value" expected to be of type "string"';
      {
        value: converted,
      }
    ),
  },
  ec2_tag_set:: {
    local block = self,
    new():: (
      {}
    ),
    ec2_tag_filter:: {
      local block = self,
      new():: (
        {}
      ),
      with_key(value):: (
        local converted = value;
        assert std.isString(converted) : '"key" expected to be of type "string"';
        {
          key: converted,
        }
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
        assert std.isString(converted) : '"value" expected to be of type "string"';
        {
          value: converted,
        }
      ),
    },
    with_ec2_tag_filter(value):: (
      local converted = if std.isArray(value) then value else [value];
      {
        ec2_tag_filter: value,
      }
    ),
    with_ec2_tag_filter_mixin(value):: (
      local converted = if std.isArray(value) then value else [value];
      {
        ec2_tag_filter+: converted,
      }
    ),
  },
  ecs_service:: {
    local block = self,
    new(cluster_name, service_name):: (
      {}
      + block.with_cluster_name(cluster_name)
      + block.with_service_name(service_name)
    ),
    with_cluster_name(value):: (
      local converted = value;
      assert std.isString(converted) : '"cluster_name" expected to be of type "string"';
      {
        cluster_name: converted,
      }
    ),
    with_service_name(value):: (
      local converted = value;
      assert std.isString(converted) : '"service_name" expected to be of type "string"';
      {
        service_name: converted,
      }
    ),
  },
  load_balancer_info:: {
    local block = self,
    new():: (
      {}
    ),
    elb_info:: {
      local block = self,
      new():: (
        {}
      ),
      with_name(value):: (
        local converted = value;
        assert std.isString(converted) : '"name" expected to be of type "string"';
        {
          name: converted,
        }
      ),
    },
    target_group_info:: {
      local block = self,
      new():: (
        {}
      ),
      with_name(value):: (
        local converted = value;
        assert std.isString(converted) : '"name" expected to be of type "string"';
        {
          name: converted,
        }
      ),
    },
    target_group_pair_info:: {
      local block = self,
      new():: (
        {}
      ),
      prod_traffic_route:: {
        local block = self,
        new(listener_arns):: (
          {}
          + block.with_listener_arns(listener_arns)
        ),
        with_listener_arns(value):: (
          local converted = if std.isArray(value) then value else [value];
          assert (std.isArray(converted) && std.length(std.set(converted)) == std.length(converted)) : '"listener_arns" expected to be of type "set"';
          {
            listener_arns: converted,
          }
        ),
        with_listener_arns_mixin(value):: (
          local converted = if std.isArray(value) then value else [value];
          assert (std.isArray(converted) && std.length(std.set(converted)) == std.length(converted)) : '"listener_arns" expected to be of type "set"';
          {
            listener_arns+: converted,
          }
        ),
      },
      target_group:: {
        local block = self,
        new(name):: (
          {}
          + block.with_name(name)
        ),
        with_name(value):: (
          local converted = value;
          assert std.isString(converted) : '"name" expected to be of type "string"';
          {
            name: converted,
          }
        ),
      },
      test_traffic_route:: {
        local block = self,
        new(listener_arns):: (
          {}
          + block.with_listener_arns(listener_arns)
        ),
        with_listener_arns(value):: (
          local converted = if std.isArray(value) then value else [value];
          assert (std.isArray(converted) && std.length(std.set(converted)) == std.length(converted)) : '"listener_arns" expected to be of type "set"';
          {
            listener_arns: converted,
          }
        ),
        with_listener_arns_mixin(value):: (
          local converted = if std.isArray(value) then value else [value];
          assert (std.isArray(converted) && std.length(std.set(converted)) == std.length(converted)) : '"listener_arns" expected to be of type "set"';
          {
            listener_arns+: converted,
          }
        ),
      },
      with_prod_traffic_route(value):: (
        local converted = if std.isArray(value) then value else [value];
        {
          prod_traffic_route: value,
        }
      ),
      with_target_group(value):: (
        local converted = if std.isArray(value) then value else [value];
        {
          target_group: value,
        }
      ),
      with_test_traffic_route(value):: (
        local converted = if std.isArray(value) then value else [value];
        {
          test_traffic_route: value,
        }
      ),
      with_prod_traffic_route_mixin(value):: (
        local converted = if std.isArray(value) then value else [value];
        {
          prod_traffic_route+: converted,
        }
      ),
      with_target_group_mixin(value):: (
        local converted = if std.isArray(value) then value else [value];
        {
          target_group+: converted,
        }
      ),
      with_test_traffic_route_mixin(value):: (
        local converted = if std.isArray(value) then value else [value];
        {
          test_traffic_route+: converted,
        }
      ),
    },
    with_elb_info(value):: (
      local converted = if std.isArray(value) then value else [value];
      {
        elb_info: value,
      }
    ),
    with_target_group_info(value):: (
      local converted = if std.isArray(value) then value else [value];
      {
        target_group_info: value,
      }
    ),
    with_target_group_pair_info(value):: (
      local converted = if std.isArray(value) then value else [value];
      {
        target_group_pair_info: value,
      }
    ),
    with_elb_info_mixin(value):: (
      local converted = if std.isArray(value) then value else [value];
      {
        elb_info+: converted,
      }
    ),
    with_target_group_info_mixin(value):: (
      local converted = if std.isArray(value) then value else [value];
      {
        target_group_info+: converted,
      }
    ),
    with_target_group_pair_info_mixin(value):: (
      local converted = if std.isArray(value) then value else [value];
      {
        target_group_pair_info+: converted,
      }
    ),
  },
  on_premises_instance_tag_filter:: {
    local block = self,
    new():: (
      {}
    ),
    with_key(value):: (
      local converted = value;
      assert std.isString(converted) : '"key" expected to be of type "string"';
      {
        key: converted,
      }
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
      assert std.isString(converted) : '"value" expected to be of type "string"';
      {
        value: converted,
      }
    ),
  },
  trigger_configuration:: {
    local block = self,
    new(trigger_events, trigger_name, trigger_target_arn):: (
      {}
      + block.with_trigger_events(trigger_events)
      + block.with_trigger_name(trigger_name)
      + block.with_trigger_target_arn(trigger_target_arn)
    ),
    with_trigger_events(value):: (
      local converted = if std.isArray(value) then value else [value];
      assert (std.isArray(converted) && std.length(std.set(converted)) == std.length(converted)) : '"trigger_events" expected to be of type "set"';
      {
        trigger_events: converted,
      }
    ),
    with_trigger_events_mixin(value):: (
      local converted = if std.isArray(value) then value else [value];
      assert (std.isArray(converted) && std.length(std.set(converted)) == std.length(converted)) : '"trigger_events" expected to be of type "set"';
      {
        trigger_events+: converted,
      }
    ),
    with_trigger_name(value):: (
      local converted = value;
      assert std.isString(converted) : '"trigger_name" expected to be of type "string"';
      {
        trigger_name: converted,
      }
    ),
    with_trigger_target_arn(value):: (
      local converted = value;
      assert std.isString(converted) : '"trigger_target_arn" expected to be of type "string"';
      {
        trigger_target_arn: converted,
      }
    ),
  },
  with_alarm_configuration(value):: (
    local converted = if std.isArray(value) then value else [value];
    {
      alarm_configuration: value,
    }
  ),
  with_auto_rollback_configuration(value):: (
    local converted = if std.isArray(value) then value else [value];
    {
      auto_rollback_configuration: value,
    }
  ),
  with_blue_green_deployment_config(value):: (
    local converted = if std.isArray(value) then value else [value];
    {
      blue_green_deployment_config: value,
    }
  ),
  with_deployment_style(value):: (
    local converted = if std.isArray(value) then value else [value];
    {
      deployment_style: value,
    }
  ),
  with_ec2_tag_filter(value):: (
    local converted = if std.isArray(value) then value else [value];
    {
      ec2_tag_filter: value,
    }
  ),
  with_ec2_tag_set(value):: (
    local converted = if std.isArray(value) then value else [value];
    {
      ec2_tag_set: value,
    }
  ),
  with_ecs_service(value):: (
    local converted = if std.isArray(value) then value else [value];
    {
      ecs_service: value,
    }
  ),
  with_load_balancer_info(value):: (
    local converted = if std.isArray(value) then value else [value];
    {
      load_balancer_info: value,
    }
  ),
  with_on_premises_instance_tag_filter(value):: (
    local converted = if std.isArray(value) then value else [value];
    {
      on_premises_instance_tag_filter: value,
    }
  ),
  with_trigger_configuration(value):: (
    local converted = if std.isArray(value) then value else [value];
    {
      trigger_configuration: value,
    }
  ),
  with_alarm_configuration_mixin(value):: (
    local converted = if std.isArray(value) then value else [value];
    {
      alarm_configuration+: converted,
    }
  ),
  with_auto_rollback_configuration_mixin(value):: (
    local converted = if std.isArray(value) then value else [value];
    {
      auto_rollback_configuration+: converted,
    }
  ),
  with_blue_green_deployment_config_mixin(value):: (
    local converted = if std.isArray(value) then value else [value];
    {
      blue_green_deployment_config+: converted,
    }
  ),
  with_deployment_style_mixin(value):: (
    local converted = if std.isArray(value) then value else [value];
    {
      deployment_style+: converted,
    }
  ),
  with_ec2_tag_filter_mixin(value):: (
    local converted = if std.isArray(value) then value else [value];
    {
      ec2_tag_filter+: converted,
    }
  ),
  with_ec2_tag_set_mixin(value):: (
    local converted = if std.isArray(value) then value else [value];
    {
      ec2_tag_set+: converted,
    }
  ),
  with_ecs_service_mixin(value):: (
    local converted = if std.isArray(value) then value else [value];
    {
      ecs_service+: converted,
    }
  ),
  with_load_balancer_info_mixin(value):: (
    local converted = if std.isArray(value) then value else [value];
    {
      load_balancer_info+: converted,
    }
  ),
  with_on_premises_instance_tag_filter_mixin(value):: (
    local converted = if std.isArray(value) then value else [value];
    {
      on_premises_instance_tag_filter+: converted,
    }
  ),
  with_trigger_configuration_mixin(value):: (
    local converted = if std.isArray(value) then value else [value];
    {
      trigger_configuration+: converted,
    }
  ),
}
