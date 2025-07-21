{
  local block = self,
  new(subnet_ids):: (
    {}
    + block.with_subnet_ids(subnet_ids)
  ),
  with_arn(value):: (
    local converted = value;
    assert std.isString(converted) : '"arn" expected to be of type "string"';
    {
      arn: converted,
    }
  ),
  with_auto_import_policy(value):: (
    local converted = value;
    assert std.isString(converted) : '"auto_import_policy" expected to be of type "string"';
    {
      auto_import_policy: converted,
    }
  ),
  with_automatic_backup_retention_days(value):: (
    local converted = value;
    assert std.isNumber(converted) : '"automatic_backup_retention_days" expected to be of type "number"';
    {
      automatic_backup_retention_days: converted,
    }
  ),
  with_backup_id(value):: (
    local converted = value;
    assert std.isString(converted) : '"backup_id" expected to be of type "string"';
    {
      backup_id: converted,
    }
  ),
  with_copy_tags_to_backups(value):: (
    local converted = value;
    assert std.isBoolean(converted) : '"copy_tags_to_backups" expected to be of type "bool"';
    {
      copy_tags_to_backups: converted,
    }
  ),
  with_daily_automatic_backup_start_time(value):: (
    local converted = value;
    assert std.isString(converted) : '"daily_automatic_backup_start_time" expected to be of type "string"';
    {
      daily_automatic_backup_start_time: converted,
    }
  ),
  with_data_compression_type(value):: (
    local converted = value;
    assert std.isString(converted) : '"data_compression_type" expected to be of type "string"';
    {
      data_compression_type: converted,
    }
  ),
  with_deployment_type(value):: (
    local converted = value;
    assert std.isString(converted) : '"deployment_type" expected to be of type "string"';
    {
      deployment_type: converted,
    }
  ),
  with_dns_name(value):: (
    local converted = value;
    assert std.isString(converted) : '"dns_name" expected to be of type "string"';
    {
      dns_name: converted,
    }
  ),
  with_drive_cache_type(value):: (
    local converted = value;
    assert std.isString(converted) : '"drive_cache_type" expected to be of type "string"';
    {
      drive_cache_type: converted,
    }
  ),
  with_efa_enabled(value):: (
    local converted = value;
    assert std.isBoolean(converted) : '"efa_enabled" expected to be of type "bool"';
    {
      efa_enabled: converted,
    }
  ),
  with_export_path(value):: (
    local converted = value;
    assert std.isString(converted) : '"export_path" expected to be of type "string"';
    {
      export_path: converted,
    }
  ),
  with_file_system_type_version(value):: (
    local converted = value;
    assert std.isString(converted) : '"file_system_type_version" expected to be of type "string"';
    {
      file_system_type_version: converted,
    }
  ),
  with_final_backup_tags(value):: (
    local converted = value;
    assert std.isObject(converted) : '"final_backup_tags" expected to be of type "map"';
    {
      final_backup_tags: converted,
    }
  ),
  with_id(value):: (
    local converted = value;
    assert std.isString(converted) : '"id" expected to be of type "string"';
    {
      id: converted,
    }
  ),
  with_import_path(value):: (
    local converted = value;
    assert std.isString(converted) : '"import_path" expected to be of type "string"';
    {
      import_path: converted,
    }
  ),
  with_imported_file_chunk_size(value):: (
    local converted = value;
    assert std.isNumber(converted) : '"imported_file_chunk_size" expected to be of type "number"';
    {
      imported_file_chunk_size: converted,
    }
  ),
  with_kms_key_id(value):: (
    local converted = value;
    assert std.isString(converted) : '"kms_key_id" expected to be of type "string"';
    {
      kms_key_id: converted,
    }
  ),
  with_mount_name(value):: (
    local converted = value;
    assert std.isString(converted) : '"mount_name" expected to be of type "string"';
    {
      mount_name: converted,
    }
  ),
  with_network_interface_ids(value):: (
    local converted = if std.isArray(value) then value else [value];
    assert std.isArray(converted) : '"network_interface_ids" expected to be of type "list"';
    {
      network_interface_ids: converted,
    }
  ),
  with_network_interface_ids_mixin(value):: (
    local converted = if std.isArray(value) then value else [value];
    assert std.isArray(converted) : '"network_interface_ids" expected to be of type "list"';
    {
      network_interface_ids+: converted,
    }
  ),
  with_owner_id(value):: (
    local converted = value;
    assert std.isString(converted) : '"owner_id" expected to be of type "string"';
    {
      owner_id: converted,
    }
  ),
  with_per_unit_storage_throughput(value):: (
    local converted = value;
    assert std.isNumber(converted) : '"per_unit_storage_throughput" expected to be of type "number"';
    {
      per_unit_storage_throughput: converted,
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
  with_security_group_ids(value):: (
    local converted = if std.isArray(value) then value else [value];
    assert (std.isArray(converted) && std.length(std.set(converted)) == std.length(converted)) : '"security_group_ids" expected to be of type "set"';
    {
      security_group_ids: converted,
    }
  ),
  with_security_group_ids_mixin(value):: (
    local converted = if std.isArray(value) then value else [value];
    assert (std.isArray(converted) && std.length(std.set(converted)) == std.length(converted)) : '"security_group_ids" expected to be of type "set"';
    {
      security_group_ids+: converted,
    }
  ),
  with_skip_final_backup(value):: (
    local converted = value;
    assert std.isBoolean(converted) : '"skip_final_backup" expected to be of type "bool"';
    {
      skip_final_backup: converted,
    }
  ),
  with_storage_capacity(value):: (
    local converted = value;
    assert std.isNumber(converted) : '"storage_capacity" expected to be of type "number"';
    {
      storage_capacity: converted,
    }
  ),
  with_storage_type(value):: (
    local converted = value;
    assert std.isString(converted) : '"storage_type" expected to be of type "string"';
    {
      storage_type: converted,
    }
  ),
  with_subnet_ids(value):: (
    local converted = if std.isArray(value) then value else [value];
    assert std.isArray(converted) : '"subnet_ids" expected to be of type "list"';
    {
      subnet_ids: converted,
    }
  ),
  with_subnet_ids_mixin(value):: (
    local converted = if std.isArray(value) then value else [value];
    assert std.isArray(converted) : '"subnet_ids" expected to be of type "list"';
    {
      subnet_ids+: converted,
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
  with_throughput_capacity(value):: (
    local converted = value;
    assert std.isNumber(converted) : '"throughput_capacity" expected to be of type "number"';
    {
      throughput_capacity: converted,
    }
  ),
  with_vpc_id(value):: (
    local converted = value;
    assert std.isString(converted) : '"vpc_id" expected to be of type "string"';
    {
      vpc_id: converted,
    }
  ),
  with_weekly_maintenance_start_time(value):: (
    local converted = value;
    assert std.isString(converted) : '"weekly_maintenance_start_time" expected to be of type "string"';
    {
      weekly_maintenance_start_time: converted,
    }
  ),
  data_read_cache_configuration:: {
    local block = self,
    new(sizing_mode):: (
      {}
      + block.with_sizing_mode(sizing_mode)
    ),
    with_size(value):: (
      local converted = value;
      assert std.isNumber(converted) : '"size" expected to be of type "number"';
      {
        size: converted,
      }
    ),
    with_sizing_mode(value):: (
      local converted = value;
      assert std.isString(converted) : '"sizing_mode" expected to be of type "string"';
      {
        sizing_mode: converted,
      }
    ),
  },
  log_configuration:: {
    local block = self,
    new():: (
      {}
    ),
    with_destination(value):: (
      local converted = value;
      assert std.isString(converted) : '"destination" expected to be of type "string"';
      {
        destination: converted,
      }
    ),
    with_level(value):: (
      local converted = value;
      assert std.isString(converted) : '"level" expected to be of type "string"';
      {
        level: converted,
      }
    ),
  },
  metadata_configuration:: {
    local block = self,
    new():: (
      {}
    ),
    with_iops(value):: (
      local converted = value;
      assert std.isNumber(converted) : '"iops" expected to be of type "number"';
      {
        iops: converted,
      }
    ),
    with_mode(value):: (
      local converted = value;
      assert std.isString(converted) : '"mode" expected to be of type "string"';
      {
        mode: converted,
      }
    ),
  },
  root_squash_configuration:: {
    local block = self,
    new():: (
      {}
    ),
    with_no_squash_nids(value):: (
      local converted = if std.isArray(value) then value else [value];
      assert (std.isArray(converted) && std.length(std.set(converted)) == std.length(converted)) : '"no_squash_nids" expected to be of type "set"';
      {
        no_squash_nids: converted,
      }
    ),
    with_no_squash_nids_mixin(value):: (
      local converted = if std.isArray(value) then value else [value];
      assert (std.isArray(converted) && std.length(std.set(converted)) == std.length(converted)) : '"no_squash_nids" expected to be of type "set"';
      {
        no_squash_nids+: converted,
      }
    ),
    with_root_squash(value):: (
      local converted = value;
      assert std.isString(converted) : '"root_squash" expected to be of type "string"';
      {
        root_squash: converted,
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
  with_data_read_cache_configuration(value):: (
    local converted = if std.isArray(value) then value else [value];
    {
      data_read_cache_configuration: value,
    }
  ),
  with_log_configuration(value):: (
    local converted = if std.isArray(value) then value else [value];
    {
      log_configuration: value,
    }
  ),
  with_metadata_configuration(value):: (
    local converted = if std.isArray(value) then value else [value];
    {
      metadata_configuration: value,
    }
  ),
  with_root_squash_configuration(value):: (
    local converted = if std.isArray(value) then value else [value];
    {
      root_squash_configuration: value,
    }
  ),
  with_timeouts(value):: (
    local converted = value;
    {
      timeouts: value,
    }
  ),
  with_data_read_cache_configuration_mixin(value):: (
    local converted = if std.isArray(value) then value else [value];
    {
      data_read_cache_configuration+: converted,
    }
  ),
  with_log_configuration_mixin(value):: (
    local converted = if std.isArray(value) then value else [value];
    {
      log_configuration+: converted,
    }
  ),
  with_metadata_configuration_mixin(value):: (
    local converted = if std.isArray(value) then value else [value];
    {
      metadata_configuration+: converted,
    }
  ),
  with_root_squash_configuration_mixin(value):: (
    local converted = if std.isArray(value) then value else [value];
    {
      root_squash_configuration+: converted,
    }
  ),
}
