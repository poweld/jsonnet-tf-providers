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
  with_block_device_mappings(value):: (
    local converted = if std.isArray(value) then value else [value];
    assert std.isArray(converted) : '"block_device_mappings" expected to be of type "list"';
    {
      block_device_mappings: converted,
    }
  ),
  with_block_device_mappings_mixin(value):: (
    local converted = if std.isArray(value) then value else [value];
    assert std.isArray(converted) : '"block_device_mappings" expected to be of type "list"';
    {
      block_device_mappings+: converted,
    }
  ),
  with_capacity_reservation_specification(value):: (
    local converted = if std.isArray(value) then value else [value];
    assert std.isArray(converted) : '"capacity_reservation_specification" expected to be of type "list"';
    {
      capacity_reservation_specification: converted,
    }
  ),
  with_capacity_reservation_specification_mixin(value):: (
    local converted = if std.isArray(value) then value else [value];
    assert std.isArray(converted) : '"capacity_reservation_specification" expected to be of type "list"';
    {
      capacity_reservation_specification+: converted,
    }
  ),
  with_cpu_options(value):: (
    local converted = if std.isArray(value) then value else [value];
    assert std.isArray(converted) : '"cpu_options" expected to be of type "list"';
    {
      cpu_options: converted,
    }
  ),
  with_cpu_options_mixin(value):: (
    local converted = if std.isArray(value) then value else [value];
    assert std.isArray(converted) : '"cpu_options" expected to be of type "list"';
    {
      cpu_options+: converted,
    }
  ),
  with_credit_specification(value):: (
    local converted = if std.isArray(value) then value else [value];
    assert std.isArray(converted) : '"credit_specification" expected to be of type "list"';
    {
      credit_specification: converted,
    }
  ),
  with_credit_specification_mixin(value):: (
    local converted = if std.isArray(value) then value else [value];
    assert std.isArray(converted) : '"credit_specification" expected to be of type "list"';
    {
      credit_specification+: converted,
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
  with_enclave_options(value):: (
    local converted = if std.isArray(value) then value else [value];
    assert std.isArray(converted) : '"enclave_options" expected to be of type "list"';
    {
      enclave_options: converted,
    }
  ),
  with_enclave_options_mixin(value):: (
    local converted = if std.isArray(value) then value else [value];
    assert std.isArray(converted) : '"enclave_options" expected to be of type "list"';
    {
      enclave_options+: converted,
    }
  ),
  with_hibernation_options(value):: (
    local converted = if std.isArray(value) then value else [value];
    assert std.isArray(converted) : '"hibernation_options" expected to be of type "list"';
    {
      hibernation_options: converted,
    }
  ),
  with_hibernation_options_mixin(value):: (
    local converted = if std.isArray(value) then value else [value];
    assert std.isArray(converted) : '"hibernation_options" expected to be of type "list"';
    {
      hibernation_options+: converted,
    }
  ),
  with_iam_instance_profile(value):: (
    local converted = if std.isArray(value) then value else [value];
    assert std.isArray(converted) : '"iam_instance_profile" expected to be of type "list"';
    {
      iam_instance_profile: converted,
    }
  ),
  with_iam_instance_profile_mixin(value):: (
    local converted = if std.isArray(value) then value else [value];
    assert std.isArray(converted) : '"iam_instance_profile" expected to be of type "list"';
    {
      iam_instance_profile+: converted,
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
  with_instance_market_options(value):: (
    local converted = if std.isArray(value) then value else [value];
    assert std.isArray(converted) : '"instance_market_options" expected to be of type "list"';
    {
      instance_market_options: converted,
    }
  ),
  with_instance_market_options_mixin(value):: (
    local converted = if std.isArray(value) then value else [value];
    assert std.isArray(converted) : '"instance_market_options" expected to be of type "list"';
    {
      instance_market_options+: converted,
    }
  ),
  with_instance_requirements(value):: (
    local converted = if std.isArray(value) then value else [value];
    assert std.isArray(converted) : '"instance_requirements" expected to be of type "list"';
    {
      instance_requirements: converted,
    }
  ),
  with_instance_requirements_mixin(value):: (
    local converted = if std.isArray(value) then value else [value];
    assert std.isArray(converted) : '"instance_requirements" expected to be of type "list"';
    {
      instance_requirements+: converted,
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
  with_license_specification(value):: (
    local converted = if std.isArray(value) then value else [value];
    assert std.isArray(converted) : '"license_specification" expected to be of type "list"';
    {
      license_specification: converted,
    }
  ),
  with_license_specification_mixin(value):: (
    local converted = if std.isArray(value) then value else [value];
    assert std.isArray(converted) : '"license_specification" expected to be of type "list"';
    {
      license_specification+: converted,
    }
  ),
  with_maintenance_options(value):: (
    local converted = if std.isArray(value) then value else [value];
    assert std.isArray(converted) : '"maintenance_options" expected to be of type "list"';
    {
      maintenance_options: converted,
    }
  ),
  with_maintenance_options_mixin(value):: (
    local converted = if std.isArray(value) then value else [value];
    assert std.isArray(converted) : '"maintenance_options" expected to be of type "list"';
    {
      maintenance_options+: converted,
    }
  ),
  with_metadata_options(value):: (
    local converted = if std.isArray(value) then value else [value];
    assert std.isArray(converted) : '"metadata_options" expected to be of type "list"';
    {
      metadata_options: converted,
    }
  ),
  with_metadata_options_mixin(value):: (
    local converted = if std.isArray(value) then value else [value];
    assert std.isArray(converted) : '"metadata_options" expected to be of type "list"';
    {
      metadata_options+: converted,
    }
  ),
  with_monitoring(value):: (
    local converted = if std.isArray(value) then value else [value];
    assert std.isArray(converted) : '"monitoring" expected to be of type "list"';
    {
      monitoring: converted,
    }
  ),
  with_monitoring_mixin(value):: (
    local converted = if std.isArray(value) then value else [value];
    assert std.isArray(converted) : '"monitoring" expected to be of type "list"';
    {
      monitoring+: converted,
    }
  ),
  with_name(value):: (
    local converted = value;
    assert std.isString(converted) : '"name" expected to be of type "string"';
    {
      name: converted,
    }
  ),
  with_network_interfaces(value):: (
    local converted = if std.isArray(value) then value else [value];
    assert std.isArray(converted) : '"network_interfaces" expected to be of type "list"';
    {
      network_interfaces: converted,
    }
  ),
  with_network_interfaces_mixin(value):: (
    local converted = if std.isArray(value) then value else [value];
    assert std.isArray(converted) : '"network_interfaces" expected to be of type "list"';
    {
      network_interfaces+: converted,
    }
  ),
  with_placement(value):: (
    local converted = if std.isArray(value) then value else [value];
    assert std.isArray(converted) : '"placement" expected to be of type "list"';
    {
      placement: converted,
    }
  ),
  with_placement_mixin(value):: (
    local converted = if std.isArray(value) then value else [value];
    assert std.isArray(converted) : '"placement" expected to be of type "list"';
    {
      placement+: converted,
    }
  ),
  with_private_dns_name_options(value):: (
    local converted = if std.isArray(value) then value else [value];
    assert std.isArray(converted) : '"private_dns_name_options" expected to be of type "list"';
    {
      private_dns_name_options: converted,
    }
  ),
  with_private_dns_name_options_mixin(value):: (
    local converted = if std.isArray(value) then value else [value];
    assert std.isArray(converted) : '"private_dns_name_options" expected to be of type "list"';
    {
      private_dns_name_options+: converted,
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
  with_tag_specifications(value):: (
    local converted = if std.isArray(value) then value else [value];
    assert std.isArray(converted) : '"tag_specifications" expected to be of type "list"';
    {
      tag_specifications: converted,
    }
  ),
  with_tag_specifications_mixin(value):: (
    local converted = if std.isArray(value) then value else [value];
    assert std.isArray(converted) : '"tag_specifications" expected to be of type "list"';
    {
      tag_specifications+: converted,
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
  filter:: {
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
  with_filter(value):: (
    local converted = if std.isArray(value) then value else [value];
    {
      filter: value,
    }
  ),
  with_timeouts(value):: (
    local converted = value;
    {
      timeouts: value,
    }
  ),
  with_filter_mixin(value):: (
    local converted = if std.isArray(value) then value else [value];
    {
      filter+: converted,
    }
  ),
}
