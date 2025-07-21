{
  local block = self,
  new(deployment_type, subnet_ids, throughput_capacity):: (
    {}
    + block.with_deployment_type(deployment_type)
    + block.with_subnet_ids(subnet_ids)
    + block.with_throughput_capacity(throughput_capacity)
  ),
  with_arn(value):: (
    local converted = value;
    assert std.isString(converted) : '"arn" expected to be of type "string"';
    {
      arn: converted,
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
  with_copy_tags_to_volumes(value):: (
    local converted = value;
    assert std.isBoolean(converted) : '"copy_tags_to_volumes" expected to be of type "bool"';
    {
      copy_tags_to_volumes: converted,
    }
  ),
  with_daily_automatic_backup_start_time(value):: (
    local converted = value;
    assert std.isString(converted) : '"daily_automatic_backup_start_time" expected to be of type "string"';
    {
      daily_automatic_backup_start_time: converted,
    }
  ),
  with_delete_options(value):: (
    local converted = if std.isArray(value) then value else [value];
    assert (std.isArray(converted) && std.length(std.set(converted)) == std.length(converted)) : '"delete_options" expected to be of type "set"';
    {
      delete_options: converted,
    }
  ),
  with_delete_options_mixin(value):: (
    local converted = if std.isArray(value) then value else [value];
    assert (std.isArray(converted) && std.length(std.set(converted)) == std.length(converted)) : '"delete_options" expected to be of type "set"';
    {
      delete_options+: converted,
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
  with_endpoint_ip_address(value):: (
    local converted = value;
    assert std.isString(converted) : '"endpoint_ip_address" expected to be of type "string"';
    {
      endpoint_ip_address: converted,
    }
  ),
  with_endpoint_ip_address_range(value):: (
    local converted = value;
    assert std.isString(converted) : '"endpoint_ip_address_range" expected to be of type "string"';
    {
      endpoint_ip_address_range: converted,
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
  with_kms_key_id(value):: (
    local converted = value;
    assert std.isString(converted) : '"kms_key_id" expected to be of type "string"';
    {
      kms_key_id: converted,
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
  with_preferred_subnet_id(value):: (
    local converted = value;
    assert std.isString(converted) : '"preferred_subnet_id" expected to be of type "string"';
    {
      preferred_subnet_id: converted,
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
  with_root_volume_id(value):: (
    local converted = value;
    assert std.isString(converted) : '"root_volume_id" expected to be of type "string"';
    {
      root_volume_id: converted,
    }
  ),
  with_route_table_ids(value):: (
    local converted = if std.isArray(value) then value else [value];
    assert (std.isArray(converted) && std.length(std.set(converted)) == std.length(converted)) : '"route_table_ids" expected to be of type "set"';
    {
      route_table_ids: converted,
    }
  ),
  with_route_table_ids_mixin(value):: (
    local converted = if std.isArray(value) then value else [value];
    assert (std.isArray(converted) && std.length(std.set(converted)) == std.length(converted)) : '"route_table_ids" expected to be of type "set"';
    {
      route_table_ids+: converted,
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
  disk_iops_configuration:: {
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
  root_volume_configuration:: {
    local block = self,
    new():: (
      {}
    ),
    with_copy_tags_to_snapshots(value):: (
      local converted = value;
      assert std.isBoolean(converted) : '"copy_tags_to_snapshots" expected to be of type "bool"';
      {
        copy_tags_to_snapshots: converted,
      }
    ),
    with_data_compression_type(value):: (
      local converted = value;
      assert std.isString(converted) : '"data_compression_type" expected to be of type "string"';
      {
        data_compression_type: converted,
      }
    ),
    with_read_only(value):: (
      local converted = value;
      assert std.isBoolean(converted) : '"read_only" expected to be of type "bool"';
      {
        read_only: converted,
      }
    ),
    with_record_size_kib(value):: (
      local converted = value;
      assert std.isNumber(converted) : '"record_size_kib" expected to be of type "number"';
      {
        record_size_kib: converted,
      }
    ),
    nfs_exports:: {
      local block = self,
      new():: (
        {}
      ),
      client_configurations:: {
        local block = self,
        new(clients, options):: (
          {}
          + block.with_clients(clients)
          + block.with_options(options)
        ),
        with_clients(value):: (
          local converted = value;
          assert std.isString(converted) : '"clients" expected to be of type "string"';
          {
            clients: converted,
          }
        ),
        with_options(value):: (
          local converted = if std.isArray(value) then value else [value];
          assert std.isArray(converted) : '"options" expected to be of type "list"';
          {
            options: converted,
          }
        ),
        with_options_mixin(value):: (
          local converted = if std.isArray(value) then value else [value];
          assert std.isArray(converted) : '"options" expected to be of type "list"';
          {
            options+: converted,
          }
        ),
      },
      with_client_configurations(value):: (
        local converted = if std.isArray(value) then value else [value];
        {
          client_configurations: value,
        }
      ),
      with_client_configurations_mixin(value):: (
        local converted = if std.isArray(value) then value else [value];
        {
          client_configurations+: converted,
        }
      ),
    },
    user_and_group_quotas:: {
      local block = self,
      new(id, storage_capacity_quota_gib, type):: (
        {}
        + block.with_id(id)
        + block.with_storage_capacity_quota_gib(storage_capacity_quota_gib)
        + block.with_type(type)
      ),
      with_id(value):: (
        local converted = value;
        assert std.isNumber(converted) : '"id" expected to be of type "number"';
        {
          id: converted,
        }
      ),
      with_storage_capacity_quota_gib(value):: (
        local converted = value;
        assert std.isNumber(converted) : '"storage_capacity_quota_gib" expected to be of type "number"';
        {
          storage_capacity_quota_gib: converted,
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
    with_nfs_exports(value):: (
      local converted = if std.isArray(value) then value else [value];
      {
        nfs_exports: value,
      }
    ),
    with_user_and_group_quotas(value):: (
      local converted = if std.isArray(value) then value else [value];
      {
        user_and_group_quotas: value,
      }
    ),
    with_nfs_exports_mixin(value):: (
      local converted = if std.isArray(value) then value else [value];
      {
        nfs_exports+: converted,
      }
    ),
    with_user_and_group_quotas_mixin(value):: (
      local converted = if std.isArray(value) then value else [value];
      {
        user_and_group_quotas+: converted,
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
  with_disk_iops_configuration(value):: (
    local converted = if std.isArray(value) then value else [value];
    {
      disk_iops_configuration: value,
    }
  ),
  with_root_volume_configuration(value):: (
    local converted = if std.isArray(value) then value else [value];
    {
      root_volume_configuration: value,
    }
  ),
  with_timeouts(value):: (
    local converted = value;
    {
      timeouts: value,
    }
  ),
  with_disk_iops_configuration_mixin(value):: (
    local converted = if std.isArray(value) then value else [value];
    {
      disk_iops_configuration+: converted,
    }
  ),
  with_root_volume_configuration_mixin(value):: (
    local converted = if std.isArray(value) then value else [value];
    {
      root_volume_configuration+: converted,
    }
  ),
}
