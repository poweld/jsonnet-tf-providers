{
  local block = self,
  new(max_size, min_size):: (
    {}
    + block.with_max_size(max_size)
    + block.with_min_size(min_size)
  ),
  with_arn(value):: (
    local converted = value;
    assert std.isString(converted) : '"arn" expected to be of type "string"';
    {
      arn: converted,
    }
  ),
  with_availability_zones(value):: (
    local converted = if std.isArray(value) then value else [value];
    assert (std.isArray(converted) && std.length(std.set(converted)) == std.length(converted)) : '"availability_zones" expected to be of type "set"';
    {
      availability_zones: converted,
    }
  ),
  with_availability_zones_mixin(value):: (
    local converted = if std.isArray(value) then value else [value];
    assert (std.isArray(converted) && std.length(std.set(converted)) == std.length(converted)) : '"availability_zones" expected to be of type "set"';
    {
      availability_zones+: converted,
    }
  ),
  with_capacity_rebalance(value):: (
    local converted = value;
    assert std.isBoolean(converted) : '"capacity_rebalance" expected to be of type "bool"';
    {
      capacity_rebalance: converted,
    }
  ),
  with_context(value):: (
    local converted = value;
    assert std.isString(converted) : '"context" expected to be of type "string"';
    {
      context: converted,
    }
  ),
  with_default_cooldown(value):: (
    local converted = value;
    assert std.isNumber(converted) : '"default_cooldown" expected to be of type "number"';
    {
      default_cooldown: converted,
    }
  ),
  with_default_instance_warmup(value):: (
    local converted = value;
    assert std.isNumber(converted) : '"default_instance_warmup" expected to be of type "number"';
    {
      default_instance_warmup: converted,
    }
  ),
  with_desired_capacity(value):: (
    local converted = value;
    assert std.isNumber(converted) : '"desired_capacity" expected to be of type "number"';
    {
      desired_capacity: converted,
    }
  ),
  with_desired_capacity_type(value):: (
    local converted = value;
    assert std.isString(converted) : '"desired_capacity_type" expected to be of type "string"';
    {
      desired_capacity_type: converted,
    }
  ),
  with_enabled_metrics(value):: (
    local converted = if std.isArray(value) then value else [value];
    assert (std.isArray(converted) && std.length(std.set(converted)) == std.length(converted)) : '"enabled_metrics" expected to be of type "set"';
    {
      enabled_metrics: converted,
    }
  ),
  with_enabled_metrics_mixin(value):: (
    local converted = if std.isArray(value) then value else [value];
    assert (std.isArray(converted) && std.length(std.set(converted)) == std.length(converted)) : '"enabled_metrics" expected to be of type "set"';
    {
      enabled_metrics+: converted,
    }
  ),
  with_force_delete(value):: (
    local converted = value;
    assert std.isBoolean(converted) : '"force_delete" expected to be of type "bool"';
    {
      force_delete: converted,
    }
  ),
  with_force_delete_warm_pool(value):: (
    local converted = value;
    assert std.isBoolean(converted) : '"force_delete_warm_pool" expected to be of type "bool"';
    {
      force_delete_warm_pool: converted,
    }
  ),
  with_health_check_grace_period(value):: (
    local converted = value;
    assert std.isNumber(converted) : '"health_check_grace_period" expected to be of type "number"';
    {
      health_check_grace_period: converted,
    }
  ),
  with_health_check_type(value):: (
    local converted = value;
    assert std.isString(converted) : '"health_check_type" expected to be of type "string"';
    {
      health_check_type: converted,
    }
  ),
  with_id(value):: (
    local converted = value;
    assert std.isString(converted) : '"id" expected to be of type "string"';
    {
      id: converted,
    }
  ),
  with_ignore_failed_scaling_activities(value):: (
    local converted = value;
    assert std.isBoolean(converted) : '"ignore_failed_scaling_activities" expected to be of type "bool"';
    {
      ignore_failed_scaling_activities: converted,
    }
  ),
  with_launch_configuration(value):: (
    local converted = value;
    assert std.isString(converted) : '"launch_configuration" expected to be of type "string"';
    {
      launch_configuration: converted,
    }
  ),
  with_load_balancers(value):: (
    local converted = if std.isArray(value) then value else [value];
    assert (std.isArray(converted) && std.length(std.set(converted)) == std.length(converted)) : '"load_balancers" expected to be of type "set"';
    {
      load_balancers: converted,
    }
  ),
  with_load_balancers_mixin(value):: (
    local converted = if std.isArray(value) then value else [value];
    assert (std.isArray(converted) && std.length(std.set(converted)) == std.length(converted)) : '"load_balancers" expected to be of type "set"';
    {
      load_balancers+: converted,
    }
  ),
  with_max_instance_lifetime(value):: (
    local converted = value;
    assert std.isNumber(converted) : '"max_instance_lifetime" expected to be of type "number"';
    {
      max_instance_lifetime: converted,
    }
  ),
  with_max_size(value):: (
    local converted = value;
    assert std.isNumber(converted) : '"max_size" expected to be of type "number"';
    {
      max_size: converted,
    }
  ),
  with_metrics_granularity(value):: (
    local converted = value;
    assert std.isString(converted) : '"metrics_granularity" expected to be of type "string"';
    {
      metrics_granularity: converted,
    }
  ),
  with_min_elb_capacity(value):: (
    local converted = value;
    assert std.isNumber(converted) : '"min_elb_capacity" expected to be of type "number"';
    {
      min_elb_capacity: converted,
    }
  ),
  with_min_size(value):: (
    local converted = value;
    assert std.isNumber(converted) : '"min_size" expected to be of type "number"';
    {
      min_size: converted,
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
  with_placement_group(value):: (
    local converted = value;
    assert std.isString(converted) : '"placement_group" expected to be of type "string"';
    {
      placement_group: converted,
    }
  ),
  with_predicted_capacity(value):: (
    local converted = value;
    assert std.isNumber(converted) : '"predicted_capacity" expected to be of type "number"';
    {
      predicted_capacity: converted,
    }
  ),
  with_protect_from_scale_in(value):: (
    local converted = value;
    assert std.isBoolean(converted) : '"protect_from_scale_in" expected to be of type "bool"';
    {
      protect_from_scale_in: converted,
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
  with_service_linked_role_arn(value):: (
    local converted = value;
    assert std.isString(converted) : '"service_linked_role_arn" expected to be of type "string"';
    {
      service_linked_role_arn: converted,
    }
  ),
  with_suspended_processes(value):: (
    local converted = if std.isArray(value) then value else [value];
    assert (std.isArray(converted) && std.length(std.set(converted)) == std.length(converted)) : '"suspended_processes" expected to be of type "set"';
    {
      suspended_processes: converted,
    }
  ),
  with_suspended_processes_mixin(value):: (
    local converted = if std.isArray(value) then value else [value];
    assert (std.isArray(converted) && std.length(std.set(converted)) == std.length(converted)) : '"suspended_processes" expected to be of type "set"';
    {
      suspended_processes+: converted,
    }
  ),
  with_target_group_arns(value):: (
    local converted = if std.isArray(value) then value else [value];
    assert (std.isArray(converted) && std.length(std.set(converted)) == std.length(converted)) : '"target_group_arns" expected to be of type "set"';
    {
      target_group_arns: converted,
    }
  ),
  with_target_group_arns_mixin(value):: (
    local converted = if std.isArray(value) then value else [value];
    assert (std.isArray(converted) && std.length(std.set(converted)) == std.length(converted)) : '"target_group_arns" expected to be of type "set"';
    {
      target_group_arns+: converted,
    }
  ),
  with_termination_policies(value):: (
    local converted = if std.isArray(value) then value else [value];
    assert std.isArray(converted) : '"termination_policies" expected to be of type "list"';
    {
      termination_policies: converted,
    }
  ),
  with_termination_policies_mixin(value):: (
    local converted = if std.isArray(value) then value else [value];
    assert std.isArray(converted) : '"termination_policies" expected to be of type "list"';
    {
      termination_policies+: converted,
    }
  ),
  with_vpc_zone_identifier(value):: (
    local converted = if std.isArray(value) then value else [value];
    assert (std.isArray(converted) && std.length(std.set(converted)) == std.length(converted)) : '"vpc_zone_identifier" expected to be of type "set"';
    {
      vpc_zone_identifier: converted,
    }
  ),
  with_vpc_zone_identifier_mixin(value):: (
    local converted = if std.isArray(value) then value else [value];
    assert (std.isArray(converted) && std.length(std.set(converted)) == std.length(converted)) : '"vpc_zone_identifier" expected to be of type "set"';
    {
      vpc_zone_identifier+: converted,
    }
  ),
  with_wait_for_capacity_timeout(value):: (
    local converted = value;
    assert std.isString(converted) : '"wait_for_capacity_timeout" expected to be of type "string"';
    {
      wait_for_capacity_timeout: converted,
    }
  ),
  with_wait_for_elb_capacity(value):: (
    local converted = value;
    assert std.isNumber(converted) : '"wait_for_elb_capacity" expected to be of type "number"';
    {
      wait_for_elb_capacity: converted,
    }
  ),
  with_warm_pool_size(value):: (
    local converted = value;
    assert std.isNumber(converted) : '"warm_pool_size" expected to be of type "number"';
    {
      warm_pool_size: converted,
    }
  ),
  availability_zone_distribution:: {
    local block = self,
    new():: (
      {}
    ),
    with_capacity_distribution_strategy(value):: (
      local converted = value;
      assert std.isString(converted) : '"capacity_distribution_strategy" expected to be of type "string"';
      {
        capacity_distribution_strategy: converted,
      }
    ),
  },
  capacity_reservation_specification:: {
    local block = self,
    new():: (
      {}
    ),
    with_capacity_reservation_preference(value):: (
      local converted = value;
      assert std.isString(converted) : '"capacity_reservation_preference" expected to be of type "string"';
      {
        capacity_reservation_preference: converted,
      }
    ),
    capacity_reservation_target:: {
      local block = self,
      new():: (
        {}
      ),
      with_capacity_reservation_ids(value):: (
        local converted = if std.isArray(value) then value else [value];
        assert std.isArray(converted) : '"capacity_reservation_ids" expected to be of type "list"';
        {
          capacity_reservation_ids: converted,
        }
      ),
      with_capacity_reservation_ids_mixin(value):: (
        local converted = if std.isArray(value) then value else [value];
        assert std.isArray(converted) : '"capacity_reservation_ids" expected to be of type "list"';
        {
          capacity_reservation_ids+: converted,
        }
      ),
      with_capacity_reservation_resource_group_arns(value):: (
        local converted = if std.isArray(value) then value else [value];
        assert std.isArray(converted) : '"capacity_reservation_resource_group_arns" expected to be of type "list"';
        {
          capacity_reservation_resource_group_arns: converted,
        }
      ),
      with_capacity_reservation_resource_group_arns_mixin(value):: (
        local converted = if std.isArray(value) then value else [value];
        assert std.isArray(converted) : '"capacity_reservation_resource_group_arns" expected to be of type "list"';
        {
          capacity_reservation_resource_group_arns+: converted,
        }
      ),
    },
    with_capacity_reservation_target(value):: (
      local converted = if std.isArray(value) then value else [value];
      {
        capacity_reservation_target: value,
      }
    ),
    with_capacity_reservation_target_mixin(value):: (
      local converted = if std.isArray(value) then value else [value];
      {
        capacity_reservation_target+: converted,
      }
    ),
  },
  initial_lifecycle_hook:: {
    local block = self,
    new(lifecycle_transition, name):: (
      {}
      + block.with_lifecycle_transition(lifecycle_transition)
      + block.with_name(name)
    ),
    with_default_result(value):: (
      local converted = value;
      assert std.isString(converted) : '"default_result" expected to be of type "string"';
      {
        default_result: converted,
      }
    ),
    with_heartbeat_timeout(value):: (
      local converted = value;
      assert std.isNumber(converted) : '"heartbeat_timeout" expected to be of type "number"';
      {
        heartbeat_timeout: converted,
      }
    ),
    with_lifecycle_transition(value):: (
      local converted = value;
      assert std.isString(converted) : '"lifecycle_transition" expected to be of type "string"';
      {
        lifecycle_transition: converted,
      }
    ),
    with_name(value):: (
      local converted = value;
      assert std.isString(converted) : '"name" expected to be of type "string"';
      {
        name: converted,
      }
    ),
    with_notification_metadata(value):: (
      local converted = value;
      assert std.isString(converted) : '"notification_metadata" expected to be of type "string"';
      {
        notification_metadata: converted,
      }
    ),
    with_notification_target_arn(value):: (
      local converted = value;
      assert std.isString(converted) : '"notification_target_arn" expected to be of type "string"';
      {
        notification_target_arn: converted,
      }
    ),
    with_role_arn(value):: (
      local converted = value;
      assert std.isString(converted) : '"role_arn" expected to be of type "string"';
      {
        role_arn: converted,
      }
    ),
  },
  instance_maintenance_policy:: {
    local block = self,
    new(max_healthy_percentage, min_healthy_percentage):: (
      {}
      + block.with_max_healthy_percentage(max_healthy_percentage)
      + block.with_min_healthy_percentage(min_healthy_percentage)
    ),
    with_max_healthy_percentage(value):: (
      local converted = value;
      assert std.isNumber(converted) : '"max_healthy_percentage" expected to be of type "number"';
      {
        max_healthy_percentage: converted,
      }
    ),
    with_min_healthy_percentage(value):: (
      local converted = value;
      assert std.isNumber(converted) : '"min_healthy_percentage" expected to be of type "number"';
      {
        min_healthy_percentage: converted,
      }
    ),
  },
  instance_refresh:: {
    local block = self,
    new(strategy):: (
      {}
      + block.with_strategy(strategy)
    ),
    with_strategy(value):: (
      local converted = value;
      assert std.isString(converted) : '"strategy" expected to be of type "string"';
      {
        strategy: converted,
      }
    ),
    with_triggers(value):: (
      local converted = if std.isArray(value) then value else [value];
      assert (std.isArray(converted) && std.length(std.set(converted)) == std.length(converted)) : '"triggers" expected to be of type "set"';
      {
        triggers: converted,
      }
    ),
    with_triggers_mixin(value):: (
      local converted = if std.isArray(value) then value else [value];
      assert (std.isArray(converted) && std.length(std.set(converted)) == std.length(converted)) : '"triggers" expected to be of type "set"';
      {
        triggers+: converted,
      }
    ),
    preferences:: {
      local block = self,
      new():: (
        {}
      ),
      with_auto_rollback(value):: (
        local converted = value;
        assert std.isBoolean(converted) : '"auto_rollback" expected to be of type "bool"';
        {
          auto_rollback: converted,
        }
      ),
      with_checkpoint_delay(value):: (
        local converted = value;
        assert std.isString(converted) : '"checkpoint_delay" expected to be of type "string"';
        {
          checkpoint_delay: converted,
        }
      ),
      with_checkpoint_percentages(value):: (
        local converted = if std.isArray(value) then value else [value];
        assert std.isArray(converted) : '"checkpoint_percentages" expected to be of type "list"';
        {
          checkpoint_percentages: converted,
        }
      ),
      with_checkpoint_percentages_mixin(value):: (
        local converted = if std.isArray(value) then value else [value];
        assert std.isArray(converted) : '"checkpoint_percentages" expected to be of type "list"';
        {
          checkpoint_percentages+: converted,
        }
      ),
      with_instance_warmup(value):: (
        local converted = value;
        assert std.isString(converted) : '"instance_warmup" expected to be of type "string"';
        {
          instance_warmup: converted,
        }
      ),
      with_max_healthy_percentage(value):: (
        local converted = value;
        assert std.isNumber(converted) : '"max_healthy_percentage" expected to be of type "number"';
        {
          max_healthy_percentage: converted,
        }
      ),
      with_min_healthy_percentage(value):: (
        local converted = value;
        assert std.isNumber(converted) : '"min_healthy_percentage" expected to be of type "number"';
        {
          min_healthy_percentage: converted,
        }
      ),
      with_scale_in_protected_instances(value):: (
        local converted = value;
        assert std.isString(converted) : '"scale_in_protected_instances" expected to be of type "string"';
        {
          scale_in_protected_instances: converted,
        }
      ),
      with_skip_matching(value):: (
        local converted = value;
        assert std.isBoolean(converted) : '"skip_matching" expected to be of type "bool"';
        {
          skip_matching: converted,
        }
      ),
      with_standby_instances(value):: (
        local converted = value;
        assert std.isString(converted) : '"standby_instances" expected to be of type "string"';
        {
          standby_instances: converted,
        }
      ),
      alarm_specification:: {
        local block = self,
        new():: (
          {}
        ),
        with_alarms(value):: (
          local converted = if std.isArray(value) then value else [value];
          assert std.isArray(converted) : '"alarms" expected to be of type "list"';
          {
            alarms: converted,
          }
        ),
        with_alarms_mixin(value):: (
          local converted = if std.isArray(value) then value else [value];
          assert std.isArray(converted) : '"alarms" expected to be of type "list"';
          {
            alarms+: converted,
          }
        ),
      },
      with_alarm_specification(value):: (
        local converted = if std.isArray(value) then value else [value];
        {
          alarm_specification: value,
        }
      ),
      with_alarm_specification_mixin(value):: (
        local converted = if std.isArray(value) then value else [value];
        {
          alarm_specification+: converted,
        }
      ),
    },
    with_preferences(value):: (
      local converted = if std.isArray(value) then value else [value];
      {
        preferences: value,
      }
    ),
    with_preferences_mixin(value):: (
      local converted = if std.isArray(value) then value else [value];
      {
        preferences+: converted,
      }
    ),
  },
  launch_template:: {
    local block = self,
    new():: (
      {}
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
    with_version(value):: (
      local converted = value;
      assert std.isString(converted) : '"version" expected to be of type "string"';
      {
        version: converted,
      }
    ),
  },
  mixed_instances_policy:: {
    local block = self,
    new():: (
      {}
    ),
    instances_distribution:: {
      local block = self,
      new():: (
        {}
      ),
      with_on_demand_allocation_strategy(value):: (
        local converted = value;
        assert std.isString(converted) : '"on_demand_allocation_strategy" expected to be of type "string"';
        {
          on_demand_allocation_strategy: converted,
        }
      ),
      with_on_demand_base_capacity(value):: (
        local converted = value;
        assert std.isNumber(converted) : '"on_demand_base_capacity" expected to be of type "number"';
        {
          on_demand_base_capacity: converted,
        }
      ),
      with_on_demand_percentage_above_base_capacity(value):: (
        local converted = value;
        assert std.isNumber(converted) : '"on_demand_percentage_above_base_capacity" expected to be of type "number"';
        {
          on_demand_percentage_above_base_capacity: converted,
        }
      ),
      with_spot_allocation_strategy(value):: (
        local converted = value;
        assert std.isString(converted) : '"spot_allocation_strategy" expected to be of type "string"';
        {
          spot_allocation_strategy: converted,
        }
      ),
      with_spot_instance_pools(value):: (
        local converted = value;
        assert std.isNumber(converted) : '"spot_instance_pools" expected to be of type "number"';
        {
          spot_instance_pools: converted,
        }
      ),
      with_spot_max_price(value):: (
        local converted = value;
        assert std.isString(converted) : '"spot_max_price" expected to be of type "string"';
        {
          spot_max_price: converted,
        }
      ),
    },
    launch_template:: {
      local block = self,
      new():: (
        {}
      ),
      launch_template_specification:: {
        local block = self,
        new():: (
          {}
        ),
        with_launch_template_id(value):: (
          local converted = value;
          assert std.isString(converted) : '"launch_template_id" expected to be of type "string"';
          {
            launch_template_id: converted,
          }
        ),
        with_launch_template_name(value):: (
          local converted = value;
          assert std.isString(converted) : '"launch_template_name" expected to be of type "string"';
          {
            launch_template_name: converted,
          }
        ),
        with_version(value):: (
          local converted = value;
          assert std.isString(converted) : '"version" expected to be of type "string"';
          {
            version: converted,
          }
        ),
      },
      override:: {
        local block = self,
        new():: (
          {}
        ),
        with_instance_type(value):: (
          local converted = value;
          assert std.isString(converted) : '"instance_type" expected to be of type "string"';
          {
            instance_type: converted,
          }
        ),
        with_weighted_capacity(value):: (
          local converted = value;
          assert std.isString(converted) : '"weighted_capacity" expected to be of type "string"';
          {
            weighted_capacity: converted,
          }
        ),
        instance_requirements:: {
          local block = self,
          new():: (
            {}
          ),
          with_accelerator_manufacturers(value):: (
            local converted = if std.isArray(value) then value else [value];
            assert (std.isArray(converted) && std.length(std.set(converted)) == std.length(converted)) : '"accelerator_manufacturers" expected to be of type "set"';
            {
              accelerator_manufacturers: converted,
            }
          ),
          with_accelerator_manufacturers_mixin(value):: (
            local converted = if std.isArray(value) then value else [value];
            assert (std.isArray(converted) && std.length(std.set(converted)) == std.length(converted)) : '"accelerator_manufacturers" expected to be of type "set"';
            {
              accelerator_manufacturers+: converted,
            }
          ),
          with_accelerator_names(value):: (
            local converted = if std.isArray(value) then value else [value];
            assert (std.isArray(converted) && std.length(std.set(converted)) == std.length(converted)) : '"accelerator_names" expected to be of type "set"';
            {
              accelerator_names: converted,
            }
          ),
          with_accelerator_names_mixin(value):: (
            local converted = if std.isArray(value) then value else [value];
            assert (std.isArray(converted) && std.length(std.set(converted)) == std.length(converted)) : '"accelerator_names" expected to be of type "set"';
            {
              accelerator_names+: converted,
            }
          ),
          with_accelerator_types(value):: (
            local converted = if std.isArray(value) then value else [value];
            assert (std.isArray(converted) && std.length(std.set(converted)) == std.length(converted)) : '"accelerator_types" expected to be of type "set"';
            {
              accelerator_types: converted,
            }
          ),
          with_accelerator_types_mixin(value):: (
            local converted = if std.isArray(value) then value else [value];
            assert (std.isArray(converted) && std.length(std.set(converted)) == std.length(converted)) : '"accelerator_types" expected to be of type "set"';
            {
              accelerator_types+: converted,
            }
          ),
          with_allowed_instance_types(value):: (
            local converted = if std.isArray(value) then value else [value];
            assert (std.isArray(converted) && std.length(std.set(converted)) == std.length(converted)) : '"allowed_instance_types" expected to be of type "set"';
            {
              allowed_instance_types: converted,
            }
          ),
          with_allowed_instance_types_mixin(value):: (
            local converted = if std.isArray(value) then value else [value];
            assert (std.isArray(converted) && std.length(std.set(converted)) == std.length(converted)) : '"allowed_instance_types" expected to be of type "set"';
            {
              allowed_instance_types+: converted,
            }
          ),
          with_bare_metal(value):: (
            local converted = value;
            assert std.isString(converted) : '"bare_metal" expected to be of type "string"';
            {
              bare_metal: converted,
            }
          ),
          with_burstable_performance(value):: (
            local converted = value;
            assert std.isString(converted) : '"burstable_performance" expected to be of type "string"';
            {
              burstable_performance: converted,
            }
          ),
          with_cpu_manufacturers(value):: (
            local converted = if std.isArray(value) then value else [value];
            assert (std.isArray(converted) && std.length(std.set(converted)) == std.length(converted)) : '"cpu_manufacturers" expected to be of type "set"';
            {
              cpu_manufacturers: converted,
            }
          ),
          with_cpu_manufacturers_mixin(value):: (
            local converted = if std.isArray(value) then value else [value];
            assert (std.isArray(converted) && std.length(std.set(converted)) == std.length(converted)) : '"cpu_manufacturers" expected to be of type "set"';
            {
              cpu_manufacturers+: converted,
            }
          ),
          with_excluded_instance_types(value):: (
            local converted = if std.isArray(value) then value else [value];
            assert (std.isArray(converted) && std.length(std.set(converted)) == std.length(converted)) : '"excluded_instance_types" expected to be of type "set"';
            {
              excluded_instance_types: converted,
            }
          ),
          with_excluded_instance_types_mixin(value):: (
            local converted = if std.isArray(value) then value else [value];
            assert (std.isArray(converted) && std.length(std.set(converted)) == std.length(converted)) : '"excluded_instance_types" expected to be of type "set"';
            {
              excluded_instance_types+: converted,
            }
          ),
          with_instance_generations(value):: (
            local converted = if std.isArray(value) then value else [value];
            assert (std.isArray(converted) && std.length(std.set(converted)) == std.length(converted)) : '"instance_generations" expected to be of type "set"';
            {
              instance_generations: converted,
            }
          ),
          with_instance_generations_mixin(value):: (
            local converted = if std.isArray(value) then value else [value];
            assert (std.isArray(converted) && std.length(std.set(converted)) == std.length(converted)) : '"instance_generations" expected to be of type "set"';
            {
              instance_generations+: converted,
            }
          ),
          with_local_storage(value):: (
            local converted = value;
            assert std.isString(converted) : '"local_storage" expected to be of type "string"';
            {
              local_storage: converted,
            }
          ),
          with_local_storage_types(value):: (
            local converted = if std.isArray(value) then value else [value];
            assert (std.isArray(converted) && std.length(std.set(converted)) == std.length(converted)) : '"local_storage_types" expected to be of type "set"';
            {
              local_storage_types: converted,
            }
          ),
          with_local_storage_types_mixin(value):: (
            local converted = if std.isArray(value) then value else [value];
            assert (std.isArray(converted) && std.length(std.set(converted)) == std.length(converted)) : '"local_storage_types" expected to be of type "set"';
            {
              local_storage_types+: converted,
            }
          ),
          with_max_spot_price_as_percentage_of_optimal_on_demand_price(value):: (
            local converted = value;
            assert std.isNumber(converted) : '"max_spot_price_as_percentage_of_optimal_on_demand_price" expected to be of type "number"';
            {
              max_spot_price_as_percentage_of_optimal_on_demand_price: converted,
            }
          ),
          with_on_demand_max_price_percentage_over_lowest_price(value):: (
            local converted = value;
            assert std.isNumber(converted) : '"on_demand_max_price_percentage_over_lowest_price" expected to be of type "number"';
            {
              on_demand_max_price_percentage_over_lowest_price: converted,
            }
          ),
          with_require_hibernate_support(value):: (
            local converted = value;
            assert std.isBoolean(converted) : '"require_hibernate_support" expected to be of type "bool"';
            {
              require_hibernate_support: converted,
            }
          ),
          with_spot_max_price_percentage_over_lowest_price(value):: (
            local converted = value;
            assert std.isNumber(converted) : '"spot_max_price_percentage_over_lowest_price" expected to be of type "number"';
            {
              spot_max_price_percentage_over_lowest_price: converted,
            }
          ),
          accelerator_count:: {
            local block = self,
            new():: (
              {}
            ),
            with_max(value):: (
              local converted = value;
              assert std.isNumber(converted) : '"max" expected to be of type "number"';
              {
                max: converted,
              }
            ),
            with_min(value):: (
              local converted = value;
              assert std.isNumber(converted) : '"min" expected to be of type "number"';
              {
                min: converted,
              }
            ),
          },
          accelerator_total_memory_mib:: {
            local block = self,
            new():: (
              {}
            ),
            with_max(value):: (
              local converted = value;
              assert std.isNumber(converted) : '"max" expected to be of type "number"';
              {
                max: converted,
              }
            ),
            with_min(value):: (
              local converted = value;
              assert std.isNumber(converted) : '"min" expected to be of type "number"';
              {
                min: converted,
              }
            ),
          },
          baseline_ebs_bandwidth_mbps:: {
            local block = self,
            new():: (
              {}
            ),
            with_max(value):: (
              local converted = value;
              assert std.isNumber(converted) : '"max" expected to be of type "number"';
              {
                max: converted,
              }
            ),
            with_min(value):: (
              local converted = value;
              assert std.isNumber(converted) : '"min" expected to be of type "number"';
              {
                min: converted,
              }
            ),
          },
          memory_gib_per_vcpu:: {
            local block = self,
            new():: (
              {}
            ),
            with_max(value):: (
              local converted = value;
              assert std.isNumber(converted) : '"max" expected to be of type "number"';
              {
                max: converted,
              }
            ),
            with_min(value):: (
              local converted = value;
              assert std.isNumber(converted) : '"min" expected to be of type "number"';
              {
                min: converted,
              }
            ),
          },
          memory_mib:: {
            local block = self,
            new():: (
              {}
            ),
            with_max(value):: (
              local converted = value;
              assert std.isNumber(converted) : '"max" expected to be of type "number"';
              {
                max: converted,
              }
            ),
            with_min(value):: (
              local converted = value;
              assert std.isNumber(converted) : '"min" expected to be of type "number"';
              {
                min: converted,
              }
            ),
          },
          network_bandwidth_gbps:: {
            local block = self,
            new():: (
              {}
            ),
            with_max(value):: (
              local converted = value;
              assert std.isNumber(converted) : '"max" expected to be of type "number"';
              {
                max: converted,
              }
            ),
            with_min(value):: (
              local converted = value;
              assert std.isNumber(converted) : '"min" expected to be of type "number"';
              {
                min: converted,
              }
            ),
          },
          network_interface_count:: {
            local block = self,
            new():: (
              {}
            ),
            with_max(value):: (
              local converted = value;
              assert std.isNumber(converted) : '"max" expected to be of type "number"';
              {
                max: converted,
              }
            ),
            with_min(value):: (
              local converted = value;
              assert std.isNumber(converted) : '"min" expected to be of type "number"';
              {
                min: converted,
              }
            ),
          },
          total_local_storage_gb:: {
            local block = self,
            new():: (
              {}
            ),
            with_max(value):: (
              local converted = value;
              assert std.isNumber(converted) : '"max" expected to be of type "number"';
              {
                max: converted,
              }
            ),
            with_min(value):: (
              local converted = value;
              assert std.isNumber(converted) : '"min" expected to be of type "number"';
              {
                min: converted,
              }
            ),
          },
          vcpu_count:: {
            local block = self,
            new():: (
              {}
            ),
            with_max(value):: (
              local converted = value;
              assert std.isNumber(converted) : '"max" expected to be of type "number"';
              {
                max: converted,
              }
            ),
            with_min(value):: (
              local converted = value;
              assert std.isNumber(converted) : '"min" expected to be of type "number"';
              {
                min: converted,
              }
            ),
          },
          with_accelerator_count(value):: (
            local converted = if std.isArray(value) then value else [value];
            {
              accelerator_count: value,
            }
          ),
          with_accelerator_total_memory_mib(value):: (
            local converted = if std.isArray(value) then value else [value];
            {
              accelerator_total_memory_mib: value,
            }
          ),
          with_baseline_ebs_bandwidth_mbps(value):: (
            local converted = if std.isArray(value) then value else [value];
            {
              baseline_ebs_bandwidth_mbps: value,
            }
          ),
          with_memory_gib_per_vcpu(value):: (
            local converted = if std.isArray(value) then value else [value];
            {
              memory_gib_per_vcpu: value,
            }
          ),
          with_memory_mib(value):: (
            local converted = if std.isArray(value) then value else [value];
            {
              memory_mib: value,
            }
          ),
          with_network_bandwidth_gbps(value):: (
            local converted = if std.isArray(value) then value else [value];
            {
              network_bandwidth_gbps: value,
            }
          ),
          with_network_interface_count(value):: (
            local converted = if std.isArray(value) then value else [value];
            {
              network_interface_count: value,
            }
          ),
          with_total_local_storage_gb(value):: (
            local converted = if std.isArray(value) then value else [value];
            {
              total_local_storage_gb: value,
            }
          ),
          with_vcpu_count(value):: (
            local converted = if std.isArray(value) then value else [value];
            {
              vcpu_count: value,
            }
          ),
          with_accelerator_count_mixin(value):: (
            local converted = if std.isArray(value) then value else [value];
            {
              accelerator_count+: converted,
            }
          ),
          with_accelerator_total_memory_mib_mixin(value):: (
            local converted = if std.isArray(value) then value else [value];
            {
              accelerator_total_memory_mib+: converted,
            }
          ),
          with_baseline_ebs_bandwidth_mbps_mixin(value):: (
            local converted = if std.isArray(value) then value else [value];
            {
              baseline_ebs_bandwidth_mbps+: converted,
            }
          ),
          with_memory_gib_per_vcpu_mixin(value):: (
            local converted = if std.isArray(value) then value else [value];
            {
              memory_gib_per_vcpu+: converted,
            }
          ),
          with_memory_mib_mixin(value):: (
            local converted = if std.isArray(value) then value else [value];
            {
              memory_mib+: converted,
            }
          ),
          with_network_bandwidth_gbps_mixin(value):: (
            local converted = if std.isArray(value) then value else [value];
            {
              network_bandwidth_gbps+: converted,
            }
          ),
          with_network_interface_count_mixin(value):: (
            local converted = if std.isArray(value) then value else [value];
            {
              network_interface_count+: converted,
            }
          ),
          with_total_local_storage_gb_mixin(value):: (
            local converted = if std.isArray(value) then value else [value];
            {
              total_local_storage_gb+: converted,
            }
          ),
          with_vcpu_count_mixin(value):: (
            local converted = if std.isArray(value) then value else [value];
            {
              vcpu_count+: converted,
            }
          ),
        },
        launch_template_specification:: {
          local block = self,
          new():: (
            {}
          ),
          with_launch_template_id(value):: (
            local converted = value;
            assert std.isString(converted) : '"launch_template_id" expected to be of type "string"';
            {
              launch_template_id: converted,
            }
          ),
          with_launch_template_name(value):: (
            local converted = value;
            assert std.isString(converted) : '"launch_template_name" expected to be of type "string"';
            {
              launch_template_name: converted,
            }
          ),
          with_version(value):: (
            local converted = value;
            assert std.isString(converted) : '"version" expected to be of type "string"';
            {
              version: converted,
            }
          ),
        },
        with_instance_requirements(value):: (
          local converted = if std.isArray(value) then value else [value];
          {
            instance_requirements: value,
          }
        ),
        with_launch_template_specification(value):: (
          local converted = if std.isArray(value) then value else [value];
          {
            launch_template_specification: value,
          }
        ),
        with_instance_requirements_mixin(value):: (
          local converted = if std.isArray(value) then value else [value];
          {
            instance_requirements+: converted,
          }
        ),
        with_launch_template_specification_mixin(value):: (
          local converted = if std.isArray(value) then value else [value];
          {
            launch_template_specification+: converted,
          }
        ),
      },
      with_launch_template_specification(value):: (
        local converted = if std.isArray(value) then value else [value];
        {
          launch_template_specification: value,
        }
      ),
      with_override(value):: (
        local converted = if std.isArray(value) then value else [value];
        {
          override: value,
        }
      ),
      with_launch_template_specification_mixin(value):: (
        local converted = if std.isArray(value) then value else [value];
        {
          launch_template_specification+: converted,
        }
      ),
      with_override_mixin(value):: (
        local converted = if std.isArray(value) then value else [value];
        {
          override+: converted,
        }
      ),
    },
    with_instances_distribution(value):: (
      local converted = if std.isArray(value) then value else [value];
      {
        instances_distribution: value,
      }
    ),
    with_launch_template(value):: (
      local converted = if std.isArray(value) then value else [value];
      {
        launch_template: value,
      }
    ),
    with_instances_distribution_mixin(value):: (
      local converted = if std.isArray(value) then value else [value];
      {
        instances_distribution+: converted,
      }
    ),
    with_launch_template_mixin(value):: (
      local converted = if std.isArray(value) then value else [value];
      {
        launch_template+: converted,
      }
    ),
  },
  tag:: {
    local block = self,
    new(key, propagate_at_launch, value):: (
      {}
      + block.with_key(key)
      + block.with_propagate_at_launch(propagate_at_launch)
      + block.with_value(value)
    ),
    with_key(value):: (
      local converted = value;
      assert std.isString(converted) : '"key" expected to be of type "string"';
      {
        key: converted,
      }
    ),
    with_propagate_at_launch(value):: (
      local converted = value;
      assert std.isBoolean(converted) : '"propagate_at_launch" expected to be of type "bool"';
      {
        propagate_at_launch: converted,
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
  timeouts:: {
    local block = self,
    new():: (
      {}
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
  traffic_source:: {
    local block = self,
    new(identifier):: (
      {}
      + block.with_identifier(identifier)
    ),
    with_identifier(value):: (
      local converted = value;
      assert std.isString(converted) : '"identifier" expected to be of type "string"';
      {
        identifier: converted,
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
  warm_pool:: {
    local block = self,
    new():: (
      {}
    ),
    with_max_group_prepared_capacity(value):: (
      local converted = value;
      assert std.isNumber(converted) : '"max_group_prepared_capacity" expected to be of type "number"';
      {
        max_group_prepared_capacity: converted,
      }
    ),
    with_min_size(value):: (
      local converted = value;
      assert std.isNumber(converted) : '"min_size" expected to be of type "number"';
      {
        min_size: converted,
      }
    ),
    with_pool_state(value):: (
      local converted = value;
      assert std.isString(converted) : '"pool_state" expected to be of type "string"';
      {
        pool_state: converted,
      }
    ),
    instance_reuse_policy:: {
      local block = self,
      new():: (
        {}
      ),
      with_reuse_on_scale_in(value):: (
        local converted = value;
        assert std.isBoolean(converted) : '"reuse_on_scale_in" expected to be of type "bool"';
        {
          reuse_on_scale_in: converted,
        }
      ),
    },
    with_instance_reuse_policy(value):: (
      local converted = if std.isArray(value) then value else [value];
      {
        instance_reuse_policy: value,
      }
    ),
    with_instance_reuse_policy_mixin(value):: (
      local converted = if std.isArray(value) then value else [value];
      {
        instance_reuse_policy+: converted,
      }
    ),
  },
  with_availability_zone_distribution(value):: (
    local converted = if std.isArray(value) then value else [value];
    {
      availability_zone_distribution: value,
    }
  ),
  with_capacity_reservation_specification(value):: (
    local converted = if std.isArray(value) then value else [value];
    {
      capacity_reservation_specification: value,
    }
  ),
  with_initial_lifecycle_hook(value):: (
    local converted = if std.isArray(value) then value else [value];
    {
      initial_lifecycle_hook: value,
    }
  ),
  with_instance_maintenance_policy(value):: (
    local converted = if std.isArray(value) then value else [value];
    {
      instance_maintenance_policy: value,
    }
  ),
  with_instance_refresh(value):: (
    local converted = if std.isArray(value) then value else [value];
    {
      instance_refresh: value,
    }
  ),
  with_launch_template(value):: (
    local converted = if std.isArray(value) then value else [value];
    {
      launch_template: value,
    }
  ),
  with_mixed_instances_policy(value):: (
    local converted = if std.isArray(value) then value else [value];
    {
      mixed_instances_policy: value,
    }
  ),
  with_tag(value):: (
    local converted = if std.isArray(value) then value else [value];
    {
      tag: value,
    }
  ),
  with_timeouts(value):: (
    local converted = value;
    {
      timeouts: value,
    }
  ),
  with_traffic_source(value):: (
    local converted = if std.isArray(value) then value else [value];
    {
      traffic_source: value,
    }
  ),
  with_warm_pool(value):: (
    local converted = if std.isArray(value) then value else [value];
    {
      warm_pool: value,
    }
  ),
  with_availability_zone_distribution_mixin(value):: (
    local converted = if std.isArray(value) then value else [value];
    {
      availability_zone_distribution+: converted,
    }
  ),
  with_capacity_reservation_specification_mixin(value):: (
    local converted = if std.isArray(value) then value else [value];
    {
      capacity_reservation_specification+: converted,
    }
  ),
  with_initial_lifecycle_hook_mixin(value):: (
    local converted = if std.isArray(value) then value else [value];
    {
      initial_lifecycle_hook+: converted,
    }
  ),
  with_instance_maintenance_policy_mixin(value):: (
    local converted = if std.isArray(value) then value else [value];
    {
      instance_maintenance_policy+: converted,
    }
  ),
  with_instance_refresh_mixin(value):: (
    local converted = if std.isArray(value) then value else [value];
    {
      instance_refresh+: converted,
    }
  ),
  with_launch_template_mixin(value):: (
    local converted = if std.isArray(value) then value else [value];
    {
      launch_template+: converted,
    }
  ),
  with_mixed_instances_policy_mixin(value):: (
    local converted = if std.isArray(value) then value else [value];
    {
      mixed_instances_policy+: converted,
    }
  ),
  with_tag_mixin(value):: (
    local converted = if std.isArray(value) then value else [value];
    {
      tag+: converted,
    }
  ),
  with_traffic_source_mixin(value):: (
    local converted = if std.isArray(value) then value else [value];
    {
      traffic_source+: converted,
    }
  ),
  with_warm_pool_mixin(value):: (
    local converted = if std.isArray(value) then value else [value];
    {
      warm_pool+: converted,
    }
  ),
}
