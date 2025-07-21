{
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
  with_context(value):: (
    local converted = value;
    assert std.isString(converted) : '"context" expected to be of type "string"';
    {
      context: converted,
    }
  ),
  with_excess_capacity_termination_policy(value):: (
    local converted = value;
    assert std.isString(converted) : '"excess_capacity_termination_policy" expected to be of type "string"';
    {
      excess_capacity_termination_policy: converted,
    }
  ),
  with_fleet_state(value):: (
    local converted = value;
    assert std.isString(converted) : '"fleet_state" expected to be of type "string"';
    {
      fleet_state: converted,
    }
  ),
  with_fulfilled_capacity(value):: (
    local converted = value;
    assert std.isNumber(converted) : '"fulfilled_capacity" expected to be of type "number"';
    {
      fulfilled_capacity: converted,
    }
  ),
  with_fulfilled_on_demand_capacity(value):: (
    local converted = value;
    assert std.isNumber(converted) : '"fulfilled_on_demand_capacity" expected to be of type "number"';
    {
      fulfilled_on_demand_capacity: converted,
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
  with_replace_unhealthy_instances(value):: (
    local converted = value;
    assert std.isBoolean(converted) : '"replace_unhealthy_instances" expected to be of type "bool"';
    {
      replace_unhealthy_instances: converted,
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
  with_terminate_instances(value):: (
    local converted = value;
    assert std.isBoolean(converted) : '"terminate_instances" expected to be of type "bool"';
    {
      terminate_instances: converted,
    }
  ),
  with_terminate_instances_with_expiration(value):: (
    local converted = value;
    assert std.isBoolean(converted) : '"terminate_instances_with_expiration" expected to be of type "bool"';
    {
      terminate_instances_with_expiration: converted,
    }
  ),
  with_type(value):: (
    local converted = value;
    assert std.isString(converted) : '"type" expected to be of type "string"';
    {
      type: converted,
    }
  ),
  with_valid_from(value):: (
    local converted = value;
    assert std.isString(converted) : '"valid_from" expected to be of type "string"';
    {
      valid_from: converted,
    }
  ),
  with_valid_until(value):: (
    local converted = value;
    assert std.isString(converted) : '"valid_until" expected to be of type "string"';
    {
      valid_until: converted,
    }
  ),
  fleet_instance_set:: {
    local block = self,
    new():: (
      {}
    ),
    with_instance_ids(value):: (
      local converted = if std.isArray(value) then value else [value];
      assert std.isArray(converted) : '"instance_ids" expected to be of type "list"';
      {
        instance_ids: converted,
      }
    ),
    with_instance_ids_mixin(value):: (
      local converted = if std.isArray(value) then value else [value];
      assert std.isArray(converted) : '"instance_ids" expected to be of type "list"';
      {
        instance_ids+: converted,
      }
    ),
    with_instance_type(value):: (
      local converted = value;
      assert std.isString(converted) : '"instance_type" expected to be of type "string"';
      {
        instance_type: converted,
      }
    ),
    with_lifecycle(value):: (
      local converted = value;
      assert std.isString(converted) : '"lifecycle" expected to be of type "string"';
      {
        lifecycle: converted,
      }
    ),
    with_platform(value):: (
      local converted = value;
      assert std.isString(converted) : '"platform" expected to be of type "string"';
      {
        platform: converted,
      }
    ),
  },
  launch_template_config:: {
    local block = self,
    new():: (
      {}
    ),
    launch_template_specification:: {
      local block = self,
      new(version):: (
        {}
        + block.with_version(version)
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
      with_availability_zone(value):: (
        local converted = value;
        assert std.isString(converted) : '"availability_zone" expected to be of type "string"';
        {
          availability_zone: converted,
        }
      ),
      with_instance_type(value):: (
        local converted = value;
        assert std.isString(converted) : '"instance_type" expected to be of type "string"';
        {
          instance_type: converted,
        }
      ),
      with_max_price(value):: (
        local converted = value;
        assert std.isString(converted) : '"max_price" expected to be of type "string"';
        {
          max_price: converted,
        }
      ),
      with_priority(value):: (
        local converted = value;
        assert std.isNumber(converted) : '"priority" expected to be of type "number"';
        {
          priority: converted,
        }
      ),
      with_subnet_id(value):: (
        local converted = value;
        assert std.isString(converted) : '"subnet_id" expected to be of type "string"';
        {
          subnet_id: converted,
        }
      ),
      with_weighted_capacity(value):: (
        local converted = value;
        assert std.isNumber(converted) : '"weighted_capacity" expected to be of type "number"';
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
          new(min):: (
            {}
            + block.with_min(min)
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
          new(min):: (
            {}
            + block.with_min(min)
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
      with_instance_requirements(value):: (
        local converted = if std.isArray(value) then value else [value];
        {
          instance_requirements: value,
        }
      ),
      with_instance_requirements_mixin(value):: (
        local converted = if std.isArray(value) then value else [value];
        {
          instance_requirements+: converted,
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
  on_demand_options:: {
    local block = self,
    new():: (
      {}
    ),
    with_allocation_strategy(value):: (
      local converted = value;
      assert std.isString(converted) : '"allocation_strategy" expected to be of type "string"';
      {
        allocation_strategy: converted,
      }
    ),
    with_max_total_price(value):: (
      local converted = value;
      assert std.isString(converted) : '"max_total_price" expected to be of type "string"';
      {
        max_total_price: converted,
      }
    ),
    with_min_target_capacity(value):: (
      local converted = value;
      assert std.isNumber(converted) : '"min_target_capacity" expected to be of type "number"';
      {
        min_target_capacity: converted,
      }
    ),
    with_single_availability_zone(value):: (
      local converted = value;
      assert std.isBoolean(converted) : '"single_availability_zone" expected to be of type "bool"';
      {
        single_availability_zone: converted,
      }
    ),
    with_single_instance_type(value):: (
      local converted = value;
      assert std.isBoolean(converted) : '"single_instance_type" expected to be of type "bool"';
      {
        single_instance_type: converted,
      }
    ),
    capacity_reservation_options:: {
      local block = self,
      new():: (
        {}
      ),
      with_usage_strategy(value):: (
        local converted = value;
        assert std.isString(converted) : '"usage_strategy" expected to be of type "string"';
        {
          usage_strategy: converted,
        }
      ),
    },
    with_capacity_reservation_options(value):: (
      local converted = if std.isArray(value) then value else [value];
      {
        capacity_reservation_options: value,
      }
    ),
    with_capacity_reservation_options_mixin(value):: (
      local converted = if std.isArray(value) then value else [value];
      {
        capacity_reservation_options+: converted,
      }
    ),
  },
  spot_options:: {
    local block = self,
    new():: (
      {}
    ),
    with_allocation_strategy(value):: (
      local converted = value;
      assert std.isString(converted) : '"allocation_strategy" expected to be of type "string"';
      {
        allocation_strategy: converted,
      }
    ),
    with_instance_interruption_behavior(value):: (
      local converted = value;
      assert std.isString(converted) : '"instance_interruption_behavior" expected to be of type "string"';
      {
        instance_interruption_behavior: converted,
      }
    ),
    with_instance_pools_to_use_count(value):: (
      local converted = value;
      assert std.isNumber(converted) : '"instance_pools_to_use_count" expected to be of type "number"';
      {
        instance_pools_to_use_count: converted,
      }
    ),
    with_max_total_price(value):: (
      local converted = value;
      assert std.isString(converted) : '"max_total_price" expected to be of type "string"';
      {
        max_total_price: converted,
      }
    ),
    with_min_target_capacity(value):: (
      local converted = value;
      assert std.isNumber(converted) : '"min_target_capacity" expected to be of type "number"';
      {
        min_target_capacity: converted,
      }
    ),
    with_single_availability_zone(value):: (
      local converted = value;
      assert std.isBoolean(converted) : '"single_availability_zone" expected to be of type "bool"';
      {
        single_availability_zone: converted,
      }
    ),
    with_single_instance_type(value):: (
      local converted = value;
      assert std.isBoolean(converted) : '"single_instance_type" expected to be of type "bool"';
      {
        single_instance_type: converted,
      }
    ),
    maintenance_strategies:: {
      local block = self,
      new():: (
        {}
      ),
      capacity_rebalance:: {
        local block = self,
        new():: (
          {}
        ),
        with_replacement_strategy(value):: (
          local converted = value;
          assert std.isString(converted) : '"replacement_strategy" expected to be of type "string"';
          {
            replacement_strategy: converted,
          }
        ),
        with_termination_delay(value):: (
          local converted = value;
          assert std.isNumber(converted) : '"termination_delay" expected to be of type "number"';
          {
            termination_delay: converted,
          }
        ),
      },
      with_capacity_rebalance(value):: (
        local converted = if std.isArray(value) then value else [value];
        {
          capacity_rebalance: value,
        }
      ),
      with_capacity_rebalance_mixin(value):: (
        local converted = if std.isArray(value) then value else [value];
        {
          capacity_rebalance+: converted,
        }
      ),
    },
    with_maintenance_strategies(value):: (
      local converted = if std.isArray(value) then value else [value];
      {
        maintenance_strategies: value,
      }
    ),
    with_maintenance_strategies_mixin(value):: (
      local converted = if std.isArray(value) then value else [value];
      {
        maintenance_strategies+: converted,
      }
    ),
  },
  target_capacity_specification:: {
    local block = self,
    new(default_target_capacity_type, total_target_capacity):: (
      {}
      + block.with_default_target_capacity_type(default_target_capacity_type)
      + block.with_total_target_capacity(total_target_capacity)
    ),
    with_default_target_capacity_type(value):: (
      local converted = value;
      assert std.isString(converted) : '"default_target_capacity_type" expected to be of type "string"';
      {
        default_target_capacity_type: converted,
      }
    ),
    with_on_demand_target_capacity(value):: (
      local converted = value;
      assert std.isNumber(converted) : '"on_demand_target_capacity" expected to be of type "number"';
      {
        on_demand_target_capacity: converted,
      }
    ),
    with_spot_target_capacity(value):: (
      local converted = value;
      assert std.isNumber(converted) : '"spot_target_capacity" expected to be of type "number"';
      {
        spot_target_capacity: converted,
      }
    ),
    with_target_capacity_unit_type(value):: (
      local converted = value;
      assert std.isString(converted) : '"target_capacity_unit_type" expected to be of type "string"';
      {
        target_capacity_unit_type: converted,
      }
    ),
    with_total_target_capacity(value):: (
      local converted = value;
      assert std.isNumber(converted) : '"total_target_capacity" expected to be of type "number"';
      {
        total_target_capacity: converted,
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
  with_fleet_instance_set(value):: (
    local converted = if std.isArray(value) then value else [value];
    {
      fleet_instance_set: value,
    }
  ),
  with_launch_template_config(value):: (
    local converted = if std.isArray(value) then value else [value];
    {
      launch_template_config: value,
    }
  ),
  with_on_demand_options(value):: (
    local converted = if std.isArray(value) then value else [value];
    {
      on_demand_options: value,
    }
  ),
  with_spot_options(value):: (
    local converted = if std.isArray(value) then value else [value];
    {
      spot_options: value,
    }
  ),
  with_target_capacity_specification(value):: (
    local converted = if std.isArray(value) then value else [value];
    {
      target_capacity_specification: value,
    }
  ),
  with_timeouts(value):: (
    local converted = value;
    {
      timeouts: value,
    }
  ),
  with_fleet_instance_set_mixin(value):: (
    local converted = if std.isArray(value) then value else [value];
    {
      fleet_instance_set+: converted,
    }
  ),
  with_launch_template_config_mixin(value):: (
    local converted = if std.isArray(value) then value else [value];
    {
      launch_template_config+: converted,
    }
  ),
  with_on_demand_options_mixin(value):: (
    local converted = if std.isArray(value) then value else [value];
    {
      on_demand_options+: converted,
    }
  ),
  with_spot_options_mixin(value):: (
    local converted = if std.isArray(value) then value else [value];
    {
      spot_options+: converted,
    }
  ),
  with_target_capacity_specification_mixin(value):: (
    local converted = if std.isArray(value) then value else [value];
    {
      target_capacity_specification+: converted,
    }
  ),
}
