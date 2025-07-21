{
  local block = self,
  new():: (
    {}
  ),
  with_allow_unsafe_filter(value):: (
    local converted = value;
    assert std.isBoolean(converted) : '"allow_unsafe_filter" expected to be of type "bool"';
    {
      allow_unsafe_filter: converted,
    }
  ),
  with_architecture(value):: (
    local converted = value;
    assert std.isString(converted) : '"architecture" expected to be of type "string"';
    {
      architecture: converted,
    }
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
    assert (std.isArray(converted) && std.length(std.set(converted)) == std.length(converted)) : '"block_device_mappings" expected to be of type "set"';
    {
      block_device_mappings: converted,
    }
  ),
  with_block_device_mappings_mixin(value):: (
    local converted = if std.isArray(value) then value else [value];
    assert (std.isArray(converted) && std.length(std.set(converted)) == std.length(converted)) : '"block_device_mappings" expected to be of type "set"';
    {
      block_device_mappings+: converted,
    }
  ),
  with_boot_mode(value):: (
    local converted = value;
    assert std.isString(converted) : '"boot_mode" expected to be of type "string"';
    {
      boot_mode: converted,
    }
  ),
  with_creation_date(value):: (
    local converted = value;
    assert std.isString(converted) : '"creation_date" expected to be of type "string"';
    {
      creation_date: converted,
    }
  ),
  with_deprecation_time(value):: (
    local converted = value;
    assert std.isString(converted) : '"deprecation_time" expected to be of type "string"';
    {
      deprecation_time: converted,
    }
  ),
  with_description(value):: (
    local converted = value;
    assert std.isString(converted) : '"description" expected to be of type "string"';
    {
      description: converted,
    }
  ),
  with_ena_support(value):: (
    local converted = value;
    assert std.isBoolean(converted) : '"ena_support" expected to be of type "bool"';
    {
      ena_support: converted,
    }
  ),
  with_executable_users(value):: (
    local converted = if std.isArray(value) then value else [value];
    assert std.isArray(converted) : '"executable_users" expected to be of type "list"';
    {
      executable_users: converted,
    }
  ),
  with_executable_users_mixin(value):: (
    local converted = if std.isArray(value) then value else [value];
    assert std.isArray(converted) : '"executable_users" expected to be of type "list"';
    {
      executable_users+: converted,
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
  with_image_id(value):: (
    local converted = value;
    assert std.isString(converted) : '"image_id" expected to be of type "string"';
    {
      image_id: converted,
    }
  ),
  with_image_location(value):: (
    local converted = value;
    assert std.isString(converted) : '"image_location" expected to be of type "string"';
    {
      image_location: converted,
    }
  ),
  with_image_owner_alias(value):: (
    local converted = value;
    assert std.isString(converted) : '"image_owner_alias" expected to be of type "string"';
    {
      image_owner_alias: converted,
    }
  ),
  with_image_type(value):: (
    local converted = value;
    assert std.isString(converted) : '"image_type" expected to be of type "string"';
    {
      image_type: converted,
    }
  ),
  with_imds_support(value):: (
    local converted = value;
    assert std.isString(converted) : '"imds_support" expected to be of type "string"';
    {
      imds_support: converted,
    }
  ),
  with_include_deprecated(value):: (
    local converted = value;
    assert std.isBoolean(converted) : '"include_deprecated" expected to be of type "bool"';
    {
      include_deprecated: converted,
    }
  ),
  with_kernel_id(value):: (
    local converted = value;
    assert std.isString(converted) : '"kernel_id" expected to be of type "string"';
    {
      kernel_id: converted,
    }
  ),
  with_last_launched_time(value):: (
    local converted = value;
    assert std.isString(converted) : '"last_launched_time" expected to be of type "string"';
    {
      last_launched_time: converted,
    }
  ),
  with_most_recent(value):: (
    local converted = value;
    assert std.isBoolean(converted) : '"most_recent" expected to be of type "bool"';
    {
      most_recent: converted,
    }
  ),
  with_name(value):: (
    local converted = value;
    assert std.isString(converted) : '"name" expected to be of type "string"';
    {
      name: converted,
    }
  ),
  with_name_regex(value):: (
    local converted = value;
    assert std.isString(converted) : '"name_regex" expected to be of type "string"';
    {
      name_regex: converted,
    }
  ),
  with_owner_id(value):: (
    local converted = value;
    assert std.isString(converted) : '"owner_id" expected to be of type "string"';
    {
      owner_id: converted,
    }
  ),
  with_owners(value):: (
    local converted = if std.isArray(value) then value else [value];
    assert std.isArray(converted) : '"owners" expected to be of type "list"';
    {
      owners: converted,
    }
  ),
  with_owners_mixin(value):: (
    local converted = if std.isArray(value) then value else [value];
    assert std.isArray(converted) : '"owners" expected to be of type "list"';
    {
      owners+: converted,
    }
  ),
  with_platform(value):: (
    local converted = value;
    assert std.isString(converted) : '"platform" expected to be of type "string"';
    {
      platform: converted,
    }
  ),
  with_platform_details(value):: (
    local converted = value;
    assert std.isString(converted) : '"platform_details" expected to be of type "string"';
    {
      platform_details: converted,
    }
  ),
  with_product_codes(value):: (
    local converted = if std.isArray(value) then value else [value];
    assert (std.isArray(converted) && std.length(std.set(converted)) == std.length(converted)) : '"product_codes" expected to be of type "set"';
    {
      product_codes: converted,
    }
  ),
  with_product_codes_mixin(value):: (
    local converted = if std.isArray(value) then value else [value];
    assert (std.isArray(converted) && std.length(std.set(converted)) == std.length(converted)) : '"product_codes" expected to be of type "set"';
    {
      product_codes+: converted,
    }
  ),
  with_public(value):: (
    local converted = value;
    assert std.isBoolean(converted) : '"public" expected to be of type "bool"';
    {
      public: converted,
    }
  ),
  with_ramdisk_id(value):: (
    local converted = value;
    assert std.isString(converted) : '"ramdisk_id" expected to be of type "string"';
    {
      ramdisk_id: converted,
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
  with_root_device_name(value):: (
    local converted = value;
    assert std.isString(converted) : '"root_device_name" expected to be of type "string"';
    {
      root_device_name: converted,
    }
  ),
  with_root_device_type(value):: (
    local converted = value;
    assert std.isString(converted) : '"root_device_type" expected to be of type "string"';
    {
      root_device_type: converted,
    }
  ),
  with_root_snapshot_id(value):: (
    local converted = value;
    assert std.isString(converted) : '"root_snapshot_id" expected to be of type "string"';
    {
      root_snapshot_id: converted,
    }
  ),
  with_sriov_net_support(value):: (
    local converted = value;
    assert std.isString(converted) : '"sriov_net_support" expected to be of type "string"';
    {
      sriov_net_support: converted,
    }
  ),
  with_state(value):: (
    local converted = value;
    assert std.isString(converted) : '"state" expected to be of type "string"';
    {
      state: converted,
    }
  ),
  with_state_reason(value):: (
    local converted = value;
    assert std.isObject(converted) : '"state_reason" expected to be of type "map"';
    {
      state_reason: converted,
    }
  ),
  with_tags(value):: (
    local converted = value;
    assert std.isObject(converted) : '"tags" expected to be of type "map"';
    {
      tags: converted,
    }
  ),
  with_tpm_support(value):: (
    local converted = value;
    assert std.isString(converted) : '"tpm_support" expected to be of type "string"';
    {
      tpm_support: converted,
    }
  ),
  with_uefi_data(value):: (
    local converted = value;
    assert std.isString(converted) : '"uefi_data" expected to be of type "string"';
    {
      uefi_data: converted,
    }
  ),
  with_usage_operation(value):: (
    local converted = value;
    assert std.isString(converted) : '"usage_operation" expected to be of type "string"';
    {
      usage_operation: converted,
    }
  ),
  with_virtualization_type(value):: (
    local converted = value;
    assert std.isString(converted) : '"virtualization_type" expected to be of type "string"';
    {
      virtualization_type: converted,
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
