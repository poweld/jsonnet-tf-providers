{
  local block = self,
  new(iam_fleet_role, target_capacity):: (
    {}
    + block.with_iam_fleet_role(iam_fleet_role)
    + block.with_target_capacity(target_capacity)
  ),
  with_allocation_strategy(value):: (
    local converted = value;
    assert std.isString(converted) : '"allocation_strategy" expected to be of type "string"';
    {
      allocation_strategy: converted,
    }
  ),
  with_client_token(value):: (
    local converted = value;
    assert std.isString(converted) : '"client_token" expected to be of type "string"';
    {
      client_token: converted,
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
  with_fleet_type(value):: (
    local converted = value;
    assert std.isString(converted) : '"fleet_type" expected to be of type "string"';
    {
      fleet_type: converted,
    }
  ),
  with_iam_fleet_role(value):: (
    local converted = value;
    assert std.isString(converted) : '"iam_fleet_role" expected to be of type "string"';
    {
      iam_fleet_role: converted,
    }
  ),
  with_id(value):: (
    local converted = value;
    assert std.isString(converted) : '"id" expected to be of type "string"';
    {
      id: converted,
    }
  ),
  with_instance_interruption_behaviour(value):: (
    local converted = value;
    assert std.isString(converted) : '"instance_interruption_behaviour" expected to be of type "string"';
    {
      instance_interruption_behaviour: converted,
    }
  ),
  with_instance_pools_to_use_count(value):: (
    local converted = value;
    assert std.isNumber(converted) : '"instance_pools_to_use_count" expected to be of type "number"';
    {
      instance_pools_to_use_count: converted,
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
  with_on_demand_allocation_strategy(value):: (
    local converted = value;
    assert std.isString(converted) : '"on_demand_allocation_strategy" expected to be of type "string"';
    {
      on_demand_allocation_strategy: converted,
    }
  ),
  with_on_demand_max_total_price(value):: (
    local converted = value;
    assert std.isString(converted) : '"on_demand_max_total_price" expected to be of type "string"';
    {
      on_demand_max_total_price: converted,
    }
  ),
  with_on_demand_target_capacity(value):: (
    local converted = value;
    assert std.isNumber(converted) : '"on_demand_target_capacity" expected to be of type "number"';
    {
      on_demand_target_capacity: converted,
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
  with_spot_price(value):: (
    local converted = value;
    assert std.isString(converted) : '"spot_price" expected to be of type "string"';
    {
      spot_price: converted,
    }
  ),
  with_spot_request_state(value):: (
    local converted = value;
    assert std.isString(converted) : '"spot_request_state" expected to be of type "string"';
    {
      spot_request_state: converted,
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
  with_target_capacity(value):: (
    local converted = value;
    assert std.isNumber(converted) : '"target_capacity" expected to be of type "number"';
    {
      target_capacity: converted,
    }
  ),
  with_target_capacity_unit_type(value):: (
    local converted = value;
    assert std.isString(converted) : '"target_capacity_unit_type" expected to be of type "string"';
    {
      target_capacity_unit_type: converted,
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
  with_terminate_instances_on_delete(value):: (
    local converted = value;
    assert std.isString(converted) : '"terminate_instances_on_delete" expected to be of type "string"';
    {
      terminate_instances_on_delete: converted,
    }
  ),
  with_terminate_instances_with_expiration(value):: (
    local converted = value;
    assert std.isBoolean(converted) : '"terminate_instances_with_expiration" expected to be of type "bool"';
    {
      terminate_instances_with_expiration: converted,
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
  with_wait_for_fulfillment(value):: (
    local converted = value;
    assert std.isBoolean(converted) : '"wait_for_fulfillment" expected to be of type "bool"';
    {
      wait_for_fulfillment: converted,
    }
  ),
  launch_specification:: {
    local block = self,
    new(ami, instance_type):: (
      {}
      + block.with_ami(ami)
      + block.with_instance_type(instance_type)
    ),
    with_ami(value):: (
      local converted = value;
      assert std.isString(converted) : '"ami" expected to be of type "string"';
      {
        ami: converted,
      }
    ),
    with_associate_public_ip_address(value):: (
      local converted = value;
      assert std.isBoolean(converted) : '"associate_public_ip_address" expected to be of type "bool"';
      {
        associate_public_ip_address: converted,
      }
    ),
    with_availability_zone(value):: (
      local converted = value;
      assert std.isString(converted) : '"availability_zone" expected to be of type "string"';
      {
        availability_zone: converted,
      }
    ),
    with_ebs_optimized(value):: (
      local converted = value;
      assert std.isBoolean(converted) : '"ebs_optimized" expected to be of type "bool"';
      {
        ebs_optimized: converted,
      }
    ),
    with_iam_instance_profile(value):: (
      local converted = value;
      assert std.isString(converted) : '"iam_instance_profile" expected to be of type "string"';
      {
        iam_instance_profile: converted,
      }
    ),
    with_iam_instance_profile_arn(value):: (
      local converted = value;
      assert std.isString(converted) : '"iam_instance_profile_arn" expected to be of type "string"';
      {
        iam_instance_profile_arn: converted,
      }
    ),
    with_instance_type(value):: (
      local converted = value;
      assert std.isString(converted) : '"instance_type" expected to be of type "string"';
      {
        instance_type: converted,
      }
    ),
    with_key_name(value):: (
      local converted = value;
      assert std.isString(converted) : '"key_name" expected to be of type "string"';
      {
        key_name: converted,
      }
    ),
    with_monitoring(value):: (
      local converted = value;
      assert std.isBoolean(converted) : '"monitoring" expected to be of type "bool"';
      {
        monitoring: converted,
      }
    ),
    with_placement_group(value):: (
      local converted = value;
      assert std.isString(converted) : '"placement_group" expected to be of type "string"';
      {
        placement_group: converted,
      }
    ),
    with_placement_tenancy(value):: (
      local converted = value;
      assert std.isString(converted) : '"placement_tenancy" expected to be of type "string"';
      {
        placement_tenancy: converted,
      }
    ),
    with_spot_price(value):: (
      local converted = value;
      assert std.isString(converted) : '"spot_price" expected to be of type "string"';
      {
        spot_price: converted,
      }
    ),
    with_subnet_id(value):: (
      local converted = value;
      assert std.isString(converted) : '"subnet_id" expected to be of type "string"';
      {
        subnet_id: converted,
      }
    ),
    with_tags(value):: (
      local converted = value;
      assert std.isObject(converted) : '"tags" expected to be of type "map"';
      {
        tags: converted,
      }
    ),
    with_user_data(value):: (
      local converted = value;
      assert std.isString(converted) : '"user_data" expected to be of type "string"';
      {
        user_data: converted,
      }
    ),
    with_vpc_security_group_ids(value):: (
      local converted = if std.isArray(value) then value else [value];
      assert (std.isArray(converted) && std.length(std.set(converted)) == std.length(converted)) : '"vpc_security_group_ids" expected to be of type "set"';
      {
        vpc_security_group_ids: converted,
      }
    ),
    with_vpc_security_group_ids_mixin(value):: (
      local converted = if std.isArray(value) then value else [value];
      assert (std.isArray(converted) && std.length(std.set(converted)) == std.length(converted)) : '"vpc_security_group_ids" expected to be of type "set"';
      {
        vpc_security_group_ids+: converted,
      }
    ),
    with_weighted_capacity(value):: (
      local converted = value;
      assert std.isString(converted) : '"weighted_capacity" expected to be of type "string"';
      {
        weighted_capacity: converted,
      }
    ),
    ebs_block_device:: {
      local block = self,
      new(device_name):: (
        {}
        + block.with_device_name(device_name)
      ),
      with_delete_on_termination(value):: (
        local converted = value;
        assert std.isBoolean(converted) : '"delete_on_termination" expected to be of type "bool"';
        {
          delete_on_termination: converted,
        }
      ),
      with_device_name(value):: (
        local converted = value;
        assert std.isString(converted) : '"device_name" expected to be of type "string"';
        {
          device_name: converted,
        }
      ),
      with_encrypted(value):: (
        local converted = value;
        assert std.isBoolean(converted) : '"encrypted" expected to be of type "bool"';
        {
          encrypted: converted,
        }
      ),
      with_iops(value):: (
        local converted = value;
        assert std.isNumber(converted) : '"iops" expected to be of type "number"';
        {
          iops: converted,
        }
      ),
      with_kms_key_id(value):: (
        local converted = value;
        assert std.isString(converted) : '"kms_key_id" expected to be of type "string"';
        {
          kms_key_id: converted,
        }
      ),
      with_snapshot_id(value):: (
        local converted = value;
        assert std.isString(converted) : '"snapshot_id" expected to be of type "string"';
        {
          snapshot_id: converted,
        }
      ),
      with_throughput(value):: (
        local converted = value;
        assert std.isNumber(converted) : '"throughput" expected to be of type "number"';
        {
          throughput: converted,
        }
      ),
      with_volume_size(value):: (
        local converted = value;
        assert std.isNumber(converted) : '"volume_size" expected to be of type "number"';
        {
          volume_size: converted,
        }
      ),
      with_volume_type(value):: (
        local converted = value;
        assert std.isString(converted) : '"volume_type" expected to be of type "string"';
        {
          volume_type: converted,
        }
      ),
    },
    ephemeral_block_device:: {
      local block = self,
      new(device_name, virtual_name):: (
        {}
        + block.with_device_name(device_name)
        + block.with_virtual_name(virtual_name)
      ),
      with_device_name(value):: (
        local converted = value;
        assert std.isString(converted) : '"device_name" expected to be of type "string"';
        {
          device_name: converted,
        }
      ),
      with_virtual_name(value):: (
        local converted = value;
        assert std.isString(converted) : '"virtual_name" expected to be of type "string"';
        {
          virtual_name: converted,
        }
      ),
    },
    root_block_device:: {
      local block = self,
      new():: (
        {}
      ),
      with_delete_on_termination(value):: (
        local converted = value;
        assert std.isBoolean(converted) : '"delete_on_termination" expected to be of type "bool"';
        {
          delete_on_termination: converted,
        }
      ),
      with_encrypted(value):: (
        local converted = value;
        assert std.isBoolean(converted) : '"encrypted" expected to be of type "bool"';
        {
          encrypted: converted,
        }
      ),
      with_iops(value):: (
        local converted = value;
        assert std.isNumber(converted) : '"iops" expected to be of type "number"';
        {
          iops: converted,
        }
      ),
      with_kms_key_id(value):: (
        local converted = value;
        assert std.isString(converted) : '"kms_key_id" expected to be of type "string"';
        {
          kms_key_id: converted,
        }
      ),
      with_throughput(value):: (
        local converted = value;
        assert std.isNumber(converted) : '"throughput" expected to be of type "number"';
        {
          throughput: converted,
        }
      ),
      with_volume_size(value):: (
        local converted = value;
        assert std.isNumber(converted) : '"volume_size" expected to be of type "number"';
        {
          volume_size: converted,
        }
      ),
      with_volume_type(value):: (
        local converted = value;
        assert std.isString(converted) : '"volume_type" expected to be of type "string"';
        {
          volume_type: converted,
        }
      ),
    },
    with_ebs_block_device(value):: (
      local converted = if std.isArray(value) then value else [value];
      {
        ebs_block_device: value,
      }
    ),
    with_ephemeral_block_device(value):: (
      local converted = if std.isArray(value) then value else [value];
      {
        ephemeral_block_device: value,
      }
    ),
    with_root_block_device(value):: (
      local converted = if std.isArray(value) then value else [value];
      {
        root_block_device: value,
      }
    ),
    with_ebs_block_device_mixin(value):: (
      local converted = if std.isArray(value) then value else [value];
      {
        ebs_block_device+: converted,
      }
    ),
    with_ephemeral_block_device_mixin(value):: (
      local converted = if std.isArray(value) then value else [value];
      {
        ephemeral_block_device+: converted,
      }
    ),
    with_root_block_device_mixin(value):: (
      local converted = if std.isArray(value) then value else [value];
      {
        root_block_device+: converted,
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
    overrides:: {
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
      with_priority(value):: (
        local converted = value;
        assert std.isNumber(converted) : '"priority" expected to be of type "number"';
        {
          priority: converted,
        }
      ),
      with_spot_price(value):: (
        local converted = value;
        assert std.isString(converted) : '"spot_price" expected to be of type "string"';
        {
          spot_price: converted,
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
    with_overrides(value):: (
      local converted = if std.isArray(value) then value else [value];
      {
        overrides: value,
      }
    ),
    with_launch_template_specification_mixin(value):: (
      local converted = if std.isArray(value) then value else [value];
      {
        launch_template_specification+: converted,
      }
    ),
    with_overrides_mixin(value):: (
      local converted = if std.isArray(value) then value else [value];
      {
        overrides+: converted,
      }
    ),
  },
  spot_maintenance_strategies:: {
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
  with_launch_specification(value):: (
    local converted = if std.isArray(value) then value else [value];
    {
      launch_specification: value,
    }
  ),
  with_launch_template_config(value):: (
    local converted = if std.isArray(value) then value else [value];
    {
      launch_template_config: value,
    }
  ),
  with_spot_maintenance_strategies(value):: (
    local converted = if std.isArray(value) then value else [value];
    {
      spot_maintenance_strategies: value,
    }
  ),
  with_timeouts(value):: (
    local converted = value;
    {
      timeouts: value,
    }
  ),
  with_launch_specification_mixin(value):: (
    local converted = if std.isArray(value) then value else [value];
    {
      launch_specification+: converted,
    }
  ),
  with_launch_template_config_mixin(value):: (
    local converted = if std.isArray(value) then value else [value];
    {
      launch_template_config+: converted,
    }
  ),
  with_spot_maintenance_strategies_mixin(value):: (
    local converted = if std.isArray(value) then value else [value];
    {
      spot_maintenance_strategies+: converted,
    }
  ),
}
