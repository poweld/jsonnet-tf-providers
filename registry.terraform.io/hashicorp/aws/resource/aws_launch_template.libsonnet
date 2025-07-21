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
  with_default_version(value):: (
    local converted = value;
    assert std.isNumber(converted) : '"default_version" expected to be of type "number"';
    {
      default_version: converted,
    }
  ),
  with_description(value):: (
    local converted = value;
    assert std.isString(converted) : '"description" expected to be of type "string"';
    {
      description: converted,
    }
  ),
  with_disable_api_stop(value):: (
    local converted = value;
    assert std.isBoolean(converted) : '"disable_api_stop" expected to be of type "bool"';
    {
      disable_api_stop: converted,
    }
  ),
  with_disable_api_termination(value):: (
    local converted = value;
    assert std.isBoolean(converted) : '"disable_api_termination" expected to be of type "bool"';
    {
      disable_api_termination: converted,
    }
  ),
  with_ebs_optimized(value):: (
    local converted = value;
    assert std.isString(converted) : '"ebs_optimized" expected to be of type "string"';
    {
      ebs_optimized: converted,
    }
  ),
  with_id(value):: (
    local converted = value;
    assert std.isString(converted) : '"id" expected to be of type "string"';
    {
      id: converted,
    }
  ),
  with_image_id(value):: (
    local converted = value;
    assert std.isString(converted) : '"image_id" expected to be of type "string"';
    {
      image_id: converted,
    }
  ),
  with_instance_initiated_shutdown_behavior(value):: (
    local converted = value;
    assert std.isString(converted) : '"instance_initiated_shutdown_behavior" expected to be of type "string"';
    {
      instance_initiated_shutdown_behavior: converted,
    }
  ),
  with_instance_type(value):: (
    local converted = value;
    assert std.isString(converted) : '"instance_type" expected to be of type "string"';
    {
      instance_type: converted,
    }
  ),
  with_kernel_id(value):: (
    local converted = value;
    assert std.isString(converted) : '"kernel_id" expected to be of type "string"';
    {
      kernel_id: converted,
    }
  ),
  with_key_name(value):: (
    local converted = value;
    assert std.isString(converted) : '"key_name" expected to be of type "string"';
    {
      key_name: converted,
    }
  ),
  with_latest_version(value):: (
    local converted = value;
    assert std.isNumber(converted) : '"latest_version" expected to be of type "number"';
    {
      latest_version: converted,
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
  with_ram_disk_id(value):: (
    local converted = value;
    assert std.isString(converted) : '"ram_disk_id" expected to be of type "string"';
    {
      ram_disk_id: converted,
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
  with_security_group_names(value):: (
    local converted = if std.isArray(value) then value else [value];
    assert (std.isArray(converted) && std.length(std.set(converted)) == std.length(converted)) : '"security_group_names" expected to be of type "set"';
    {
      security_group_names: converted,
    }
  ),
  with_security_group_names_mixin(value):: (
    local converted = if std.isArray(value) then value else [value];
    assert (std.isArray(converted) && std.length(std.set(converted)) == std.length(converted)) : '"security_group_names" expected to be of type "set"';
    {
      security_group_names+: converted,
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
  with_update_default_version(value):: (
    local converted = value;
    assert std.isBoolean(converted) : '"update_default_version" expected to be of type "bool"';
    {
      update_default_version: converted,
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
  block_device_mappings:: {
    local block = self,
    new():: (
      {}
    ),
    with_device_name(value):: (
      local converted = value;
      assert std.isString(converted) : '"device_name" expected to be of type "string"';
      {
        device_name: converted,
      }
    ),
    with_no_device(value):: (
      local converted = value;
      assert std.isString(converted) : '"no_device" expected to be of type "string"';
      {
        no_device: converted,
      }
    ),
    with_virtual_name(value):: (
      local converted = value;
      assert std.isString(converted) : '"virtual_name" expected to be of type "string"';
      {
        virtual_name: converted,
      }
    ),
    ebs:: {
      local block = self,
      new():: (
        {}
      ),
      with_delete_on_termination(value):: (
        local converted = value;
        assert std.isString(converted) : '"delete_on_termination" expected to be of type "string"';
        {
          delete_on_termination: converted,
        }
      ),
      with_encrypted(value):: (
        local converted = value;
        assert std.isString(converted) : '"encrypted" expected to be of type "string"';
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
      with_volume_initialization_rate(value):: (
        local converted = value;
        assert std.isNumber(converted) : '"volume_initialization_rate" expected to be of type "number"';
        {
          volume_initialization_rate: converted,
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
    with_ebs(value):: (
      local converted = if std.isArray(value) then value else [value];
      {
        ebs: value,
      }
    ),
    with_ebs_mixin(value):: (
      local converted = if std.isArray(value) then value else [value];
      {
        ebs+: converted,
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
      with_capacity_reservation_id(value):: (
        local converted = value;
        assert std.isString(converted) : '"capacity_reservation_id" expected to be of type "string"';
        {
          capacity_reservation_id: converted,
        }
      ),
      with_capacity_reservation_resource_group_arn(value):: (
        local converted = value;
        assert std.isString(converted) : '"capacity_reservation_resource_group_arn" expected to be of type "string"';
        {
          capacity_reservation_resource_group_arn: converted,
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
  cpu_options:: {
    local block = self,
    new():: (
      {}
    ),
    with_amd_sev_snp(value):: (
      local converted = value;
      assert std.isString(converted) : '"amd_sev_snp" expected to be of type "string"';
      {
        amd_sev_snp: converted,
      }
    ),
    with_core_count(value):: (
      local converted = value;
      assert std.isNumber(converted) : '"core_count" expected to be of type "number"';
      {
        core_count: converted,
      }
    ),
    with_threads_per_core(value):: (
      local converted = value;
      assert std.isNumber(converted) : '"threads_per_core" expected to be of type "number"';
      {
        threads_per_core: converted,
      }
    ),
  },
  credit_specification:: {
    local block = self,
    new():: (
      {}
    ),
    with_cpu_credits(value):: (
      local converted = value;
      assert std.isString(converted) : '"cpu_credits" expected to be of type "string"';
      {
        cpu_credits: converted,
      }
    ),
  },
  enclave_options:: {
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
  },
  hibernation_options:: {
    local block = self,
    new(configured):: (
      {}
      + block.with_configured(configured)
    ),
    with_configured(value):: (
      local converted = value;
      assert std.isBoolean(converted) : '"configured" expected to be of type "bool"';
      {
        configured: converted,
      }
    ),
  },
  iam_instance_profile:: {
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
    with_name(value):: (
      local converted = value;
      assert std.isString(converted) : '"name" expected to be of type "string"';
      {
        name: converted,
      }
    ),
  },
  instance_market_options:: {
    local block = self,
    new():: (
      {}
    ),
    with_market_type(value):: (
      local converted = value;
      assert std.isString(converted) : '"market_type" expected to be of type "string"';
      {
        market_type: converted,
      }
    ),
    spot_options:: {
      local block = self,
      new():: (
        {}
      ),
      with_block_duration_minutes(value):: (
        local converted = value;
        assert std.isNumber(converted) : '"block_duration_minutes" expected to be of type "number"';
        {
          block_duration_minutes: converted,
        }
      ),
      with_instance_interruption_behavior(value):: (
        local converted = value;
        assert std.isString(converted) : '"instance_interruption_behavior" expected to be of type "string"';
        {
          instance_interruption_behavior: converted,
        }
      ),
      with_max_price(value):: (
        local converted = value;
        assert std.isString(converted) : '"max_price" expected to be of type "string"';
        {
          max_price: converted,
        }
      ),
      with_spot_instance_type(value):: (
        local converted = value;
        assert std.isString(converted) : '"spot_instance_type" expected to be of type "string"';
        {
          spot_instance_type: converted,
        }
      ),
      with_valid_until(value):: (
        local converted = value;
        assert std.isString(converted) : '"valid_until" expected to be of type "string"';
        {
          valid_until: converted,
        }
      ),
    },
    with_spot_options(value):: (
      local converted = if std.isArray(value) then value else [value];
      {
        spot_options: value,
      }
    ),
    with_spot_options_mixin(value):: (
      local converted = if std.isArray(value) then value else [value];
      {
        spot_options+: converted,
      }
    ),
  },
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
  license_specification:: {
    local block = self,
    new(license_configuration_arn):: (
      {}
      + block.with_license_configuration_arn(license_configuration_arn)
    ),
    with_license_configuration_arn(value):: (
      local converted = value;
      assert std.isString(converted) : '"license_configuration_arn" expected to be of type "string"';
      {
        license_configuration_arn: converted,
      }
    ),
  },
  maintenance_options:: {
    local block = self,
    new():: (
      {}
    ),
    with_auto_recovery(value):: (
      local converted = value;
      assert std.isString(converted) : '"auto_recovery" expected to be of type "string"';
      {
        auto_recovery: converted,
      }
    ),
  },
  metadata_options:: {
    local block = self,
    new():: (
      {}
    ),
    with_http_endpoint(value):: (
      local converted = value;
      assert std.isString(converted) : '"http_endpoint" expected to be of type "string"';
      {
        http_endpoint: converted,
      }
    ),
    with_http_protocol_ipv6(value):: (
      local converted = value;
      assert std.isString(converted) : '"http_protocol_ipv6" expected to be of type "string"';
      {
        http_protocol_ipv6: converted,
      }
    ),
    with_http_put_response_hop_limit(value):: (
      local converted = value;
      assert std.isNumber(converted) : '"http_put_response_hop_limit" expected to be of type "number"';
      {
        http_put_response_hop_limit: converted,
      }
    ),
    with_http_tokens(value):: (
      local converted = value;
      assert std.isString(converted) : '"http_tokens" expected to be of type "string"';
      {
        http_tokens: converted,
      }
    ),
    with_instance_metadata_tags(value):: (
      local converted = value;
      assert std.isString(converted) : '"instance_metadata_tags" expected to be of type "string"';
      {
        instance_metadata_tags: converted,
      }
    ),
  },
  monitoring:: {
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
  },
  network_interfaces:: {
    local block = self,
    new():: (
      {}
    ),
    with_associate_carrier_ip_address(value):: (
      local converted = value;
      assert std.isString(converted) : '"associate_carrier_ip_address" expected to be of type "string"';
      {
        associate_carrier_ip_address: converted,
      }
    ),
    with_associate_public_ip_address(value):: (
      local converted = value;
      assert std.isString(converted) : '"associate_public_ip_address" expected to be of type "string"';
      {
        associate_public_ip_address: converted,
      }
    ),
    with_delete_on_termination(value):: (
      local converted = value;
      assert std.isString(converted) : '"delete_on_termination" expected to be of type "string"';
      {
        delete_on_termination: converted,
      }
    ),
    with_description(value):: (
      local converted = value;
      assert std.isString(converted) : '"description" expected to be of type "string"';
      {
        description: converted,
      }
    ),
    with_device_index(value):: (
      local converted = value;
      assert std.isNumber(converted) : '"device_index" expected to be of type "number"';
      {
        device_index: converted,
      }
    ),
    with_interface_type(value):: (
      local converted = value;
      assert std.isString(converted) : '"interface_type" expected to be of type "string"';
      {
        interface_type: converted,
      }
    ),
    with_ipv4_address_count(value):: (
      local converted = value;
      assert std.isNumber(converted) : '"ipv4_address_count" expected to be of type "number"';
      {
        ipv4_address_count: converted,
      }
    ),
    with_ipv4_addresses(value):: (
      local converted = if std.isArray(value) then value else [value];
      assert (std.isArray(converted) && std.length(std.set(converted)) == std.length(converted)) : '"ipv4_addresses" expected to be of type "set"';
      {
        ipv4_addresses: converted,
      }
    ),
    with_ipv4_addresses_mixin(value):: (
      local converted = if std.isArray(value) then value else [value];
      assert (std.isArray(converted) && std.length(std.set(converted)) == std.length(converted)) : '"ipv4_addresses" expected to be of type "set"';
      {
        ipv4_addresses+: converted,
      }
    ),
    with_ipv4_prefix_count(value):: (
      local converted = value;
      assert std.isNumber(converted) : '"ipv4_prefix_count" expected to be of type "number"';
      {
        ipv4_prefix_count: converted,
      }
    ),
    with_ipv4_prefixes(value):: (
      local converted = if std.isArray(value) then value else [value];
      assert (std.isArray(converted) && std.length(std.set(converted)) == std.length(converted)) : '"ipv4_prefixes" expected to be of type "set"';
      {
        ipv4_prefixes: converted,
      }
    ),
    with_ipv4_prefixes_mixin(value):: (
      local converted = if std.isArray(value) then value else [value];
      assert (std.isArray(converted) && std.length(std.set(converted)) == std.length(converted)) : '"ipv4_prefixes" expected to be of type "set"';
      {
        ipv4_prefixes+: converted,
      }
    ),
    with_ipv6_address_count(value):: (
      local converted = value;
      assert std.isNumber(converted) : '"ipv6_address_count" expected to be of type "number"';
      {
        ipv6_address_count: converted,
      }
    ),
    with_ipv6_addresses(value):: (
      local converted = if std.isArray(value) then value else [value];
      assert (std.isArray(converted) && std.length(std.set(converted)) == std.length(converted)) : '"ipv6_addresses" expected to be of type "set"';
      {
        ipv6_addresses: converted,
      }
    ),
    with_ipv6_addresses_mixin(value):: (
      local converted = if std.isArray(value) then value else [value];
      assert (std.isArray(converted) && std.length(std.set(converted)) == std.length(converted)) : '"ipv6_addresses" expected to be of type "set"';
      {
        ipv6_addresses+: converted,
      }
    ),
    with_ipv6_prefix_count(value):: (
      local converted = value;
      assert std.isNumber(converted) : '"ipv6_prefix_count" expected to be of type "number"';
      {
        ipv6_prefix_count: converted,
      }
    ),
    with_ipv6_prefixes(value):: (
      local converted = if std.isArray(value) then value else [value];
      assert (std.isArray(converted) && std.length(std.set(converted)) == std.length(converted)) : '"ipv6_prefixes" expected to be of type "set"';
      {
        ipv6_prefixes: converted,
      }
    ),
    with_ipv6_prefixes_mixin(value):: (
      local converted = if std.isArray(value) then value else [value];
      assert (std.isArray(converted) && std.length(std.set(converted)) == std.length(converted)) : '"ipv6_prefixes" expected to be of type "set"';
      {
        ipv6_prefixes+: converted,
      }
    ),
    with_network_card_index(value):: (
      local converted = value;
      assert std.isNumber(converted) : '"network_card_index" expected to be of type "number"';
      {
        network_card_index: converted,
      }
    ),
    with_network_interface_id(value):: (
      local converted = value;
      assert std.isString(converted) : '"network_interface_id" expected to be of type "string"';
      {
        network_interface_id: converted,
      }
    ),
    with_primary_ipv6(value):: (
      local converted = value;
      assert std.isString(converted) : '"primary_ipv6" expected to be of type "string"';
      {
        primary_ipv6: converted,
      }
    ),
    with_private_ip_address(value):: (
      local converted = value;
      assert std.isString(converted) : '"private_ip_address" expected to be of type "string"';
      {
        private_ip_address: converted,
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
    with_subnet_id(value):: (
      local converted = value;
      assert std.isString(converted) : '"subnet_id" expected to be of type "string"';
      {
        subnet_id: converted,
      }
    ),
    connection_tracking_specification:: {
      local block = self,
      new():: (
        {}
      ),
      with_tcp_established_timeout(value):: (
        local converted = value;
        assert std.isNumber(converted) : '"tcp_established_timeout" expected to be of type "number"';
        {
          tcp_established_timeout: converted,
        }
      ),
      with_udp_stream_timeout(value):: (
        local converted = value;
        assert std.isNumber(converted) : '"udp_stream_timeout" expected to be of type "number"';
        {
          udp_stream_timeout: converted,
        }
      ),
      with_udp_timeout(value):: (
        local converted = value;
        assert std.isNumber(converted) : '"udp_timeout" expected to be of type "number"';
        {
          udp_timeout: converted,
        }
      ),
    },
    ena_srd_specification:: {
      local block = self,
      new():: (
        {}
      ),
      with_ena_srd_enabled(value):: (
        local converted = value;
        assert std.isBoolean(converted) : '"ena_srd_enabled" expected to be of type "bool"';
        {
          ena_srd_enabled: converted,
        }
      ),
      ena_srd_udp_specification:: {
        local block = self,
        new():: (
          {}
        ),
        with_ena_srd_udp_enabled(value):: (
          local converted = value;
          assert std.isBoolean(converted) : '"ena_srd_udp_enabled" expected to be of type "bool"';
          {
            ena_srd_udp_enabled: converted,
          }
        ),
      },
      with_ena_srd_udp_specification(value):: (
        local converted = if std.isArray(value) then value else [value];
        {
          ena_srd_udp_specification: value,
        }
      ),
      with_ena_srd_udp_specification_mixin(value):: (
        local converted = if std.isArray(value) then value else [value];
        {
          ena_srd_udp_specification+: converted,
        }
      ),
    },
    with_connection_tracking_specification(value):: (
      local converted = if std.isArray(value) then value else [value];
      {
        connection_tracking_specification: value,
      }
    ),
    with_ena_srd_specification(value):: (
      local converted = if std.isArray(value) then value else [value];
      {
        ena_srd_specification: value,
      }
    ),
    with_connection_tracking_specification_mixin(value):: (
      local converted = if std.isArray(value) then value else [value];
      {
        connection_tracking_specification+: converted,
      }
    ),
    with_ena_srd_specification_mixin(value):: (
      local converted = if std.isArray(value) then value else [value];
      {
        ena_srd_specification+: converted,
      }
    ),
  },
  placement:: {
    local block = self,
    new():: (
      {}
    ),
    with_affinity(value):: (
      local converted = value;
      assert std.isString(converted) : '"affinity" expected to be of type "string"';
      {
        affinity: converted,
      }
    ),
    with_availability_zone(value):: (
      local converted = value;
      assert std.isString(converted) : '"availability_zone" expected to be of type "string"';
      {
        availability_zone: converted,
      }
    ),
    with_group_name(value):: (
      local converted = value;
      assert std.isString(converted) : '"group_name" expected to be of type "string"';
      {
        group_name: converted,
      }
    ),
    with_host_id(value):: (
      local converted = value;
      assert std.isString(converted) : '"host_id" expected to be of type "string"';
      {
        host_id: converted,
      }
    ),
    with_host_resource_group_arn(value):: (
      local converted = value;
      assert std.isString(converted) : '"host_resource_group_arn" expected to be of type "string"';
      {
        host_resource_group_arn: converted,
      }
    ),
    with_partition_number(value):: (
      local converted = value;
      assert std.isNumber(converted) : '"partition_number" expected to be of type "number"';
      {
        partition_number: converted,
      }
    ),
    with_spread_domain(value):: (
      local converted = value;
      assert std.isString(converted) : '"spread_domain" expected to be of type "string"';
      {
        spread_domain: converted,
      }
    ),
    with_tenancy(value):: (
      local converted = value;
      assert std.isString(converted) : '"tenancy" expected to be of type "string"';
      {
        tenancy: converted,
      }
    ),
  },
  private_dns_name_options:: {
    local block = self,
    new():: (
      {}
    ),
    with_enable_resource_name_dns_a_record(value):: (
      local converted = value;
      assert std.isBoolean(converted) : '"enable_resource_name_dns_a_record" expected to be of type "bool"';
      {
        enable_resource_name_dns_a_record: converted,
      }
    ),
    with_enable_resource_name_dns_aaaa_record(value):: (
      local converted = value;
      assert std.isBoolean(converted) : '"enable_resource_name_dns_aaaa_record" expected to be of type "bool"';
      {
        enable_resource_name_dns_aaaa_record: converted,
      }
    ),
    with_hostname_type(value):: (
      local converted = value;
      assert std.isString(converted) : '"hostname_type" expected to be of type "string"';
      {
        hostname_type: converted,
      }
    ),
  },
  tag_specifications:: {
    local block = self,
    new():: (
      {}
    ),
    with_resource_type(value):: (
      local converted = value;
      assert std.isString(converted) : '"resource_type" expected to be of type "string"';
      {
        resource_type: converted,
      }
    ),
    with_tags(value):: (
      local converted = value;
      assert std.isObject(converted) : '"tags" expected to be of type "map"';
      {
        tags: converted,
      }
    ),
  },
  with_block_device_mappings(value):: (
    local converted = if std.isArray(value) then value else [value];
    {
      block_device_mappings: value,
    }
  ),
  with_capacity_reservation_specification(value):: (
    local converted = if std.isArray(value) then value else [value];
    {
      capacity_reservation_specification: value,
    }
  ),
  with_cpu_options(value):: (
    local converted = if std.isArray(value) then value else [value];
    {
      cpu_options: value,
    }
  ),
  with_credit_specification(value):: (
    local converted = if std.isArray(value) then value else [value];
    {
      credit_specification: value,
    }
  ),
  with_enclave_options(value):: (
    local converted = if std.isArray(value) then value else [value];
    {
      enclave_options: value,
    }
  ),
  with_hibernation_options(value):: (
    local converted = if std.isArray(value) then value else [value];
    {
      hibernation_options: value,
    }
  ),
  with_iam_instance_profile(value):: (
    local converted = if std.isArray(value) then value else [value];
    {
      iam_instance_profile: value,
    }
  ),
  with_instance_market_options(value):: (
    local converted = if std.isArray(value) then value else [value];
    {
      instance_market_options: value,
    }
  ),
  with_instance_requirements(value):: (
    local converted = if std.isArray(value) then value else [value];
    {
      instance_requirements: value,
    }
  ),
  with_license_specification(value):: (
    local converted = if std.isArray(value) then value else [value];
    {
      license_specification: value,
    }
  ),
  with_maintenance_options(value):: (
    local converted = if std.isArray(value) then value else [value];
    {
      maintenance_options: value,
    }
  ),
  with_metadata_options(value):: (
    local converted = if std.isArray(value) then value else [value];
    {
      metadata_options: value,
    }
  ),
  with_monitoring(value):: (
    local converted = if std.isArray(value) then value else [value];
    {
      monitoring: value,
    }
  ),
  with_network_interfaces(value):: (
    local converted = if std.isArray(value) then value else [value];
    {
      network_interfaces: value,
    }
  ),
  with_placement(value):: (
    local converted = if std.isArray(value) then value else [value];
    {
      placement: value,
    }
  ),
  with_private_dns_name_options(value):: (
    local converted = if std.isArray(value) then value else [value];
    {
      private_dns_name_options: value,
    }
  ),
  with_tag_specifications(value):: (
    local converted = if std.isArray(value) then value else [value];
    {
      tag_specifications: value,
    }
  ),
  with_block_device_mappings_mixin(value):: (
    local converted = if std.isArray(value) then value else [value];
    {
      block_device_mappings+: converted,
    }
  ),
  with_capacity_reservation_specification_mixin(value):: (
    local converted = if std.isArray(value) then value else [value];
    {
      capacity_reservation_specification+: converted,
    }
  ),
  with_cpu_options_mixin(value):: (
    local converted = if std.isArray(value) then value else [value];
    {
      cpu_options+: converted,
    }
  ),
  with_credit_specification_mixin(value):: (
    local converted = if std.isArray(value) then value else [value];
    {
      credit_specification+: converted,
    }
  ),
  with_enclave_options_mixin(value):: (
    local converted = if std.isArray(value) then value else [value];
    {
      enclave_options+: converted,
    }
  ),
  with_hibernation_options_mixin(value):: (
    local converted = if std.isArray(value) then value else [value];
    {
      hibernation_options+: converted,
    }
  ),
  with_iam_instance_profile_mixin(value):: (
    local converted = if std.isArray(value) then value else [value];
    {
      iam_instance_profile+: converted,
    }
  ),
  with_instance_market_options_mixin(value):: (
    local converted = if std.isArray(value) then value else [value];
    {
      instance_market_options+: converted,
    }
  ),
  with_instance_requirements_mixin(value):: (
    local converted = if std.isArray(value) then value else [value];
    {
      instance_requirements+: converted,
    }
  ),
  with_license_specification_mixin(value):: (
    local converted = if std.isArray(value) then value else [value];
    {
      license_specification+: converted,
    }
  ),
  with_maintenance_options_mixin(value):: (
    local converted = if std.isArray(value) then value else [value];
    {
      maintenance_options+: converted,
    }
  ),
  with_metadata_options_mixin(value):: (
    local converted = if std.isArray(value) then value else [value];
    {
      metadata_options+: converted,
    }
  ),
  with_monitoring_mixin(value):: (
    local converted = if std.isArray(value) then value else [value];
    {
      monitoring+: converted,
    }
  ),
  with_network_interfaces_mixin(value):: (
    local converted = if std.isArray(value) then value else [value];
    {
      network_interfaces+: converted,
    }
  ),
  with_placement_mixin(value):: (
    local converted = if std.isArray(value) then value else [value];
    {
      placement+: converted,
    }
  ),
  with_private_dns_name_options_mixin(value):: (
    local converted = if std.isArray(value) then value else [value];
    {
      private_dns_name_options+: converted,
    }
  ),
  with_tag_specifications_mixin(value):: (
    local converted = if std.isArray(value) then value else [value];
    {
      tag_specifications+: converted,
    }
  ),
}
