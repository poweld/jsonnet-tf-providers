{
  local block = self,
  new(instance_type):: (
    {}
    + block.with_instance_type(instance_type)
  ),
  with_auto_recovery_supported(value):: (
    local converted = value;
    assert std.isBoolean(converted) : '"auto_recovery_supported" expected to be of type "bool"';
    {
      auto_recovery_supported: converted,
    }
  ),
  with_bandwidth_weightings(value):: (
    local converted = if std.isArray(value) then value else [value];
    assert (std.isArray(converted) && std.length(std.set(converted)) == std.length(converted)) : '"bandwidth_weightings" expected to be of type "set"';
    {
      bandwidth_weightings: converted,
    }
  ),
  with_bandwidth_weightings_mixin(value):: (
    local converted = if std.isArray(value) then value else [value];
    assert (std.isArray(converted) && std.length(std.set(converted)) == std.length(converted)) : '"bandwidth_weightings" expected to be of type "set"';
    {
      bandwidth_weightings+: converted,
    }
  ),
  with_bare_metal(value):: (
    local converted = value;
    assert std.isBoolean(converted) : '"bare_metal" expected to be of type "bool"';
    {
      bare_metal: converted,
    }
  ),
  with_boot_modes(value):: (
    local converted = if std.isArray(value) then value else [value];
    assert (std.isArray(converted) && std.length(std.set(converted)) == std.length(converted)) : '"boot_modes" expected to be of type "set"';
    {
      boot_modes: converted,
    }
  ),
  with_boot_modes_mixin(value):: (
    local converted = if std.isArray(value) then value else [value];
    assert (std.isArray(converted) && std.length(std.set(converted)) == std.length(converted)) : '"boot_modes" expected to be of type "set"';
    {
      boot_modes+: converted,
    }
  ),
  with_burstable_performance_supported(value):: (
    local converted = value;
    assert std.isBoolean(converted) : '"burstable_performance_supported" expected to be of type "bool"';
    {
      burstable_performance_supported: converted,
    }
  ),
  with_current_generation(value):: (
    local converted = value;
    assert std.isBoolean(converted) : '"current_generation" expected to be of type "bool"';
    {
      current_generation: converted,
    }
  ),
  with_dedicated_hosts_supported(value):: (
    local converted = value;
    assert std.isBoolean(converted) : '"dedicated_hosts_supported" expected to be of type "bool"';
    {
      dedicated_hosts_supported: converted,
    }
  ),
  with_default_cores(value):: (
    local converted = value;
    assert std.isNumber(converted) : '"default_cores" expected to be of type "number"';
    {
      default_cores: converted,
    }
  ),
  with_default_network_card_index(value):: (
    local converted = value;
    assert std.isNumber(converted) : '"default_network_card_index" expected to be of type "number"';
    {
      default_network_card_index: converted,
    }
  ),
  with_default_threads_per_core(value):: (
    local converted = value;
    assert std.isNumber(converted) : '"default_threads_per_core" expected to be of type "number"';
    {
      default_threads_per_core: converted,
    }
  ),
  with_default_vcpus(value):: (
    local converted = value;
    assert std.isNumber(converted) : '"default_vcpus" expected to be of type "number"';
    {
      default_vcpus: converted,
    }
  ),
  with_ebs_encryption_support(value):: (
    local converted = value;
    assert std.isString(converted) : '"ebs_encryption_support" expected to be of type "string"';
    {
      ebs_encryption_support: converted,
    }
  ),
  with_ebs_nvme_support(value):: (
    local converted = value;
    assert std.isString(converted) : '"ebs_nvme_support" expected to be of type "string"';
    {
      ebs_nvme_support: converted,
    }
  ),
  with_ebs_optimized_support(value):: (
    local converted = value;
    assert std.isString(converted) : '"ebs_optimized_support" expected to be of type "string"';
    {
      ebs_optimized_support: converted,
    }
  ),
  with_ebs_performance_baseline_bandwidth(value):: (
    local converted = value;
    assert std.isNumber(converted) : '"ebs_performance_baseline_bandwidth" expected to be of type "number"';
    {
      ebs_performance_baseline_bandwidth: converted,
    }
  ),
  with_ebs_performance_baseline_iops(value):: (
    local converted = value;
    assert std.isNumber(converted) : '"ebs_performance_baseline_iops" expected to be of type "number"';
    {
      ebs_performance_baseline_iops: converted,
    }
  ),
  with_ebs_performance_baseline_throughput(value):: (
    local converted = value;
    assert std.isNumber(converted) : '"ebs_performance_baseline_throughput" expected to be of type "number"';
    {
      ebs_performance_baseline_throughput: converted,
    }
  ),
  with_ebs_performance_maximum_bandwidth(value):: (
    local converted = value;
    assert std.isNumber(converted) : '"ebs_performance_maximum_bandwidth" expected to be of type "number"';
    {
      ebs_performance_maximum_bandwidth: converted,
    }
  ),
  with_ebs_performance_maximum_iops(value):: (
    local converted = value;
    assert std.isNumber(converted) : '"ebs_performance_maximum_iops" expected to be of type "number"';
    {
      ebs_performance_maximum_iops: converted,
    }
  ),
  with_ebs_performance_maximum_throughput(value):: (
    local converted = value;
    assert std.isNumber(converted) : '"ebs_performance_maximum_throughput" expected to be of type "number"';
    {
      ebs_performance_maximum_throughput: converted,
    }
  ),
  with_efa_maximum_interfaces(value):: (
    local converted = value;
    assert std.isNumber(converted) : '"efa_maximum_interfaces" expected to be of type "number"';
    {
      efa_maximum_interfaces: converted,
    }
  ),
  with_efa_supported(value):: (
    local converted = value;
    assert std.isBoolean(converted) : '"efa_supported" expected to be of type "bool"';
    {
      efa_supported: converted,
    }
  ),
  with_ena_srd_supported(value):: (
    local converted = value;
    assert std.isBoolean(converted) : '"ena_srd_supported" expected to be of type "bool"';
    {
      ena_srd_supported: converted,
    }
  ),
  with_ena_support(value):: (
    local converted = value;
    assert std.isString(converted) : '"ena_support" expected to be of type "string"';
    {
      ena_support: converted,
    }
  ),
  with_encryption_in_transit_supported(value):: (
    local converted = value;
    assert std.isBoolean(converted) : '"encryption_in_transit_supported" expected to be of type "bool"';
    {
      encryption_in_transit_supported: converted,
    }
  ),
  with_fpgas(value):: (
    local converted = if std.isArray(value) then value else [value];
    assert (std.isArray(converted) && std.length(std.set(converted)) == std.length(converted)) : '"fpgas" expected to be of type "set"';
    {
      fpgas: converted,
    }
  ),
  with_fpgas_mixin(value):: (
    local converted = if std.isArray(value) then value else [value];
    assert (std.isArray(converted) && std.length(std.set(converted)) == std.length(converted)) : '"fpgas" expected to be of type "set"';
    {
      fpgas+: converted,
    }
  ),
  with_free_tier_eligible(value):: (
    local converted = value;
    assert std.isBoolean(converted) : '"free_tier_eligible" expected to be of type "bool"';
    {
      free_tier_eligible: converted,
    }
  ),
  with_gpus(value):: (
    local converted = if std.isArray(value) then value else [value];
    assert (std.isArray(converted) && std.length(std.set(converted)) == std.length(converted)) : '"gpus" expected to be of type "set"';
    {
      gpus: converted,
    }
  ),
  with_gpus_mixin(value):: (
    local converted = if std.isArray(value) then value else [value];
    assert (std.isArray(converted) && std.length(std.set(converted)) == std.length(converted)) : '"gpus" expected to be of type "set"';
    {
      gpus+: converted,
    }
  ),
  with_hibernation_supported(value):: (
    local converted = value;
    assert std.isBoolean(converted) : '"hibernation_supported" expected to be of type "bool"';
    {
      hibernation_supported: converted,
    }
  ),
  with_hypervisor(value):: (
    local converted = value;
    assert std.isString(converted) : '"hypervisor" expected to be of type "string"';
    {
      hypervisor: converted,
    }
  ),
  with_id(value):: (
    local converted = value;
    assert std.isString(converted) : '"id" expected to be of type "string"';
    {
      id: converted,
    }
  ),
  with_inference_accelerators(value):: (
    local converted = if std.isArray(value) then value else [value];
    assert (std.isArray(converted) && std.length(std.set(converted)) == std.length(converted)) : '"inference_accelerators" expected to be of type "set"';
    {
      inference_accelerators: converted,
    }
  ),
  with_inference_accelerators_mixin(value):: (
    local converted = if std.isArray(value) then value else [value];
    assert (std.isArray(converted) && std.length(std.set(converted)) == std.length(converted)) : '"inference_accelerators" expected to be of type "set"';
    {
      inference_accelerators+: converted,
    }
  ),
  with_instance_disks(value):: (
    local converted = if std.isArray(value) then value else [value];
    assert (std.isArray(converted) && std.length(std.set(converted)) == std.length(converted)) : '"instance_disks" expected to be of type "set"';
    {
      instance_disks: converted,
    }
  ),
  with_instance_disks_mixin(value):: (
    local converted = if std.isArray(value) then value else [value];
    assert (std.isArray(converted) && std.length(std.set(converted)) == std.length(converted)) : '"instance_disks" expected to be of type "set"';
    {
      instance_disks+: converted,
    }
  ),
  with_instance_storage_supported(value):: (
    local converted = value;
    assert std.isBoolean(converted) : '"instance_storage_supported" expected to be of type "bool"';
    {
      instance_storage_supported: converted,
    }
  ),
  with_instance_type(value):: (
    local converted = value;
    assert std.isString(converted) : '"instance_type" expected to be of type "string"';
    {
      instance_type: converted,
    }
  ),
  with_ipv6_supported(value):: (
    local converted = value;
    assert std.isBoolean(converted) : '"ipv6_supported" expected to be of type "bool"';
    {
      ipv6_supported: converted,
    }
  ),
  with_maximum_ipv4_addresses_per_interface(value):: (
    local converted = value;
    assert std.isNumber(converted) : '"maximum_ipv4_addresses_per_interface" expected to be of type "number"';
    {
      maximum_ipv4_addresses_per_interface: converted,
    }
  ),
  with_maximum_ipv6_addresses_per_interface(value):: (
    local converted = value;
    assert std.isNumber(converted) : '"maximum_ipv6_addresses_per_interface" expected to be of type "number"';
    {
      maximum_ipv6_addresses_per_interface: converted,
    }
  ),
  with_maximum_network_cards(value):: (
    local converted = value;
    assert std.isNumber(converted) : '"maximum_network_cards" expected to be of type "number"';
    {
      maximum_network_cards: converted,
    }
  ),
  with_maximum_network_interfaces(value):: (
    local converted = value;
    assert std.isNumber(converted) : '"maximum_network_interfaces" expected to be of type "number"';
    {
      maximum_network_interfaces: converted,
    }
  ),
  with_media_accelerators(value):: (
    local converted = if std.isArray(value) then value else [value];
    assert (std.isArray(converted) && std.length(std.set(converted)) == std.length(converted)) : '"media_accelerators" expected to be of type "set"';
    {
      media_accelerators: converted,
    }
  ),
  with_media_accelerators_mixin(value):: (
    local converted = if std.isArray(value) then value else [value];
    assert (std.isArray(converted) && std.length(std.set(converted)) == std.length(converted)) : '"media_accelerators" expected to be of type "set"';
    {
      media_accelerators+: converted,
    }
  ),
  with_memory_size(value):: (
    local converted = value;
    assert std.isNumber(converted) : '"memory_size" expected to be of type "number"';
    {
      memory_size: converted,
    }
  ),
  with_network_cards(value):: (
    local converted = if std.isArray(value) then value else [value];
    assert (std.isArray(converted) && std.length(std.set(converted)) == std.length(converted)) : '"network_cards" expected to be of type "set"';
    {
      network_cards: converted,
    }
  ),
  with_network_cards_mixin(value):: (
    local converted = if std.isArray(value) then value else [value];
    assert (std.isArray(converted) && std.length(std.set(converted)) == std.length(converted)) : '"network_cards" expected to be of type "set"';
    {
      network_cards+: converted,
    }
  ),
  with_network_performance(value):: (
    local converted = value;
    assert std.isString(converted) : '"network_performance" expected to be of type "string"';
    {
      network_performance: converted,
    }
  ),
  with_neuron_devices(value):: (
    local converted = if std.isArray(value) then value else [value];
    assert (std.isArray(converted) && std.length(std.set(converted)) == std.length(converted)) : '"neuron_devices" expected to be of type "set"';
    {
      neuron_devices: converted,
    }
  ),
  with_neuron_devices_mixin(value):: (
    local converted = if std.isArray(value) then value else [value];
    assert (std.isArray(converted) && std.length(std.set(converted)) == std.length(converted)) : '"neuron_devices" expected to be of type "set"';
    {
      neuron_devices+: converted,
    }
  ),
  with_nitro_enclaves_support(value):: (
    local converted = value;
    assert std.isString(converted) : '"nitro_enclaves_support" expected to be of type "string"';
    {
      nitro_enclaves_support: converted,
    }
  ),
  with_nitro_tpm_support(value):: (
    local converted = value;
    assert std.isString(converted) : '"nitro_tpm_support" expected to be of type "string"';
    {
      nitro_tpm_support: converted,
    }
  ),
  with_nitro_tpm_supported_versions(value):: (
    local converted = if std.isArray(value) then value else [value];
    assert (std.isArray(converted) && std.length(std.set(converted)) == std.length(converted)) : '"nitro_tpm_supported_versions" expected to be of type "set"';
    {
      nitro_tpm_supported_versions: converted,
    }
  ),
  with_nitro_tpm_supported_versions_mixin(value):: (
    local converted = if std.isArray(value) then value else [value];
    assert (std.isArray(converted) && std.length(std.set(converted)) == std.length(converted)) : '"nitro_tpm_supported_versions" expected to be of type "set"';
    {
      nitro_tpm_supported_versions+: converted,
    }
  ),
  with_phc_support(value):: (
    local converted = value;
    assert std.isString(converted) : '"phc_support" expected to be of type "string"';
    {
      phc_support: converted,
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
  with_supported_architectures(value):: (
    local converted = if std.isArray(value) then value else [value];
    assert std.isArray(converted) : '"supported_architectures" expected to be of type "list"';
    {
      supported_architectures: converted,
    }
  ),
  with_supported_architectures_mixin(value):: (
    local converted = if std.isArray(value) then value else [value];
    assert std.isArray(converted) : '"supported_architectures" expected to be of type "list"';
    {
      supported_architectures+: converted,
    }
  ),
  with_supported_cpu_features(value):: (
    local converted = if std.isArray(value) then value else [value];
    assert (std.isArray(converted) && std.length(std.set(converted)) == std.length(converted)) : '"supported_cpu_features" expected to be of type "set"';
    {
      supported_cpu_features: converted,
    }
  ),
  with_supported_cpu_features_mixin(value):: (
    local converted = if std.isArray(value) then value else [value];
    assert (std.isArray(converted) && std.length(std.set(converted)) == std.length(converted)) : '"supported_cpu_features" expected to be of type "set"';
    {
      supported_cpu_features+: converted,
    }
  ),
  with_supported_placement_strategies(value):: (
    local converted = if std.isArray(value) then value else [value];
    assert std.isArray(converted) : '"supported_placement_strategies" expected to be of type "list"';
    {
      supported_placement_strategies: converted,
    }
  ),
  with_supported_placement_strategies_mixin(value):: (
    local converted = if std.isArray(value) then value else [value];
    assert std.isArray(converted) : '"supported_placement_strategies" expected to be of type "list"';
    {
      supported_placement_strategies+: converted,
    }
  ),
  with_supported_root_device_types(value):: (
    local converted = if std.isArray(value) then value else [value];
    assert std.isArray(converted) : '"supported_root_device_types" expected to be of type "list"';
    {
      supported_root_device_types: converted,
    }
  ),
  with_supported_root_device_types_mixin(value):: (
    local converted = if std.isArray(value) then value else [value];
    assert std.isArray(converted) : '"supported_root_device_types" expected to be of type "list"';
    {
      supported_root_device_types+: converted,
    }
  ),
  with_supported_usages_classes(value):: (
    local converted = if std.isArray(value) then value else [value];
    assert std.isArray(converted) : '"supported_usages_classes" expected to be of type "list"';
    {
      supported_usages_classes: converted,
    }
  ),
  with_supported_usages_classes_mixin(value):: (
    local converted = if std.isArray(value) then value else [value];
    assert std.isArray(converted) : '"supported_usages_classes" expected to be of type "list"';
    {
      supported_usages_classes+: converted,
    }
  ),
  with_supported_virtualization_types(value):: (
    local converted = if std.isArray(value) then value else [value];
    assert std.isArray(converted) : '"supported_virtualization_types" expected to be of type "list"';
    {
      supported_virtualization_types: converted,
    }
  ),
  with_supported_virtualization_types_mixin(value):: (
    local converted = if std.isArray(value) then value else [value];
    assert std.isArray(converted) : '"supported_virtualization_types" expected to be of type "list"';
    {
      supported_virtualization_types+: converted,
    }
  ),
  with_sustained_clock_speed(value):: (
    local converted = value;
    assert std.isNumber(converted) : '"sustained_clock_speed" expected to be of type "number"';
    {
      sustained_clock_speed: converted,
    }
  ),
  with_total_fpga_memory(value):: (
    local converted = value;
    assert std.isNumber(converted) : '"total_fpga_memory" expected to be of type "number"';
    {
      total_fpga_memory: converted,
    }
  ),
  with_total_gpu_memory(value):: (
    local converted = value;
    assert std.isNumber(converted) : '"total_gpu_memory" expected to be of type "number"';
    {
      total_gpu_memory: converted,
    }
  ),
  with_total_inference_memory(value):: (
    local converted = value;
    assert std.isNumber(converted) : '"total_inference_memory" expected to be of type "number"';
    {
      total_inference_memory: converted,
    }
  ),
  with_total_instance_storage(value):: (
    local converted = value;
    assert std.isNumber(converted) : '"total_instance_storage" expected to be of type "number"';
    {
      total_instance_storage: converted,
    }
  ),
  with_total_media_memory(value):: (
    local converted = value;
    assert std.isNumber(converted) : '"total_media_memory" expected to be of type "number"';
    {
      total_media_memory: converted,
    }
  ),
  with_total_neuron_device_memory(value):: (
    local converted = value;
    assert std.isNumber(converted) : '"total_neuron_device_memory" expected to be of type "number"';
    {
      total_neuron_device_memory: converted,
    }
  ),
  with_valid_cores(value):: (
    local converted = if std.isArray(value) then value else [value];
    assert std.isArray(converted) : '"valid_cores" expected to be of type "list"';
    {
      valid_cores: converted,
    }
  ),
  with_valid_cores_mixin(value):: (
    local converted = if std.isArray(value) then value else [value];
    assert std.isArray(converted) : '"valid_cores" expected to be of type "list"';
    {
      valid_cores+: converted,
    }
  ),
  with_valid_threads_per_core(value):: (
    local converted = if std.isArray(value) then value else [value];
    assert std.isArray(converted) : '"valid_threads_per_core" expected to be of type "list"';
    {
      valid_threads_per_core: converted,
    }
  ),
  with_valid_threads_per_core_mixin(value):: (
    local converted = if std.isArray(value) then value else [value];
    assert std.isArray(converted) : '"valid_threads_per_core" expected to be of type "list"';
    {
      valid_threads_per_core+: converted,
    }
  ),
  timeouts:: {
    local block = self,
    new():: (
      {}
    ),
    with_read(value):: (
      local converted = value;
      assert std.isString(converted) : '"read" expected to be of type "string"';
      {
        read: converted,
      }
    ),
  },
  with_timeouts(value):: (
    local converted = value;
    {
      timeouts: value,
    }
  ),
}
