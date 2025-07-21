{
  local block = self,
  new(name):: (
    {}
    + block.with_name(name)
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
  with_boot_mode(value):: (
    local converted = value;
    assert std.isString(converted) : '"boot_mode" expected to be of type "string"';
    {
      boot_mode: converted,
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
  with_manage_ebs_snapshots(value):: (
    local converted = value;
    assert std.isBoolean(converted) : '"manage_ebs_snapshots" expected to be of type "bool"';
    {
      manage_ebs_snapshots: converted,
    }
  ),
  with_name(value):: (
    local converted = value;
    assert std.isString(converted) : '"name" expected to be of type "string"';
    {
      name: converted,
    }
  ),
  with_owner_id(value):: (
    local converted = value;
    assert std.isString(converted) : '"owner_id" expected to be of type "string"';
    {
      owner_id: converted,
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
    with_outpost_arn(value):: (
      local converted = value;
      assert std.isString(converted) : '"outpost_arn" expected to be of type "string"';
      {
        outpost_arn: converted,
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
  with_timeouts(value):: (
    local converted = value;
    {
      timeouts: value,
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
}
