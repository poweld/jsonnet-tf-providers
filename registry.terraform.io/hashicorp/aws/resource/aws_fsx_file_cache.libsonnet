{
  local block = self,
  new(file_cache_type, file_cache_type_version, storage_capacity, subnet_ids):: (
    {}
    + block.with_file_cache_type(file_cache_type)
    + block.with_file_cache_type_version(file_cache_type_version)
    + block.with_storage_capacity(storage_capacity)
    + block.with_subnet_ids(subnet_ids)
  ),
  with_arn(value):: (
    local converted = value;
    assert std.isString(converted) : '"arn" expected to be of type "string"';
    {
      arn: converted,
    }
  ),
  with_copy_tags_to_data_repository_associations(value):: (
    local converted = value;
    assert std.isBoolean(converted) : '"copy_tags_to_data_repository_associations" expected to be of type "bool"';
    {
      copy_tags_to_data_repository_associations: converted,
    }
  ),
  with_data_repository_association_ids(value):: (
    local converted = if std.isArray(value) then value else [value];
    assert (std.isArray(converted) && std.length(std.set(converted)) == std.length(converted)) : '"data_repository_association_ids" expected to be of type "set"';
    {
      data_repository_association_ids: converted,
    }
  ),
  with_data_repository_association_ids_mixin(value):: (
    local converted = if std.isArray(value) then value else [value];
    assert (std.isArray(converted) && std.length(std.set(converted)) == std.length(converted)) : '"data_repository_association_ids" expected to be of type "set"';
    {
      data_repository_association_ids+: converted,
    }
  ),
  with_dns_name(value):: (
    local converted = value;
    assert std.isString(converted) : '"dns_name" expected to be of type "string"';
    {
      dns_name: converted,
    }
  ),
  with_file_cache_id(value):: (
    local converted = value;
    assert std.isString(converted) : '"file_cache_id" expected to be of type "string"';
    {
      file_cache_id: converted,
    }
  ),
  with_file_cache_type(value):: (
    local converted = value;
    assert std.isString(converted) : '"file_cache_type" expected to be of type "string"';
    {
      file_cache_type: converted,
    }
  ),
  with_file_cache_type_version(value):: (
    local converted = value;
    assert std.isString(converted) : '"file_cache_type_version" expected to be of type "string"';
    {
      file_cache_type_version: converted,
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
    assert (std.isArray(converted) && std.length(std.set(converted)) == std.length(converted)) : '"network_interface_ids" expected to be of type "set"';
    {
      network_interface_ids: converted,
    }
  ),
  with_network_interface_ids_mixin(value):: (
    local converted = if std.isArray(value) then value else [value];
    assert (std.isArray(converted) && std.length(std.set(converted)) == std.length(converted)) : '"network_interface_ids" expected to be of type "set"';
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
  with_storage_capacity(value):: (
    local converted = value;
    assert std.isNumber(converted) : '"storage_capacity" expected to be of type "number"';
    {
      storage_capacity: converted,
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
  with_vpc_id(value):: (
    local converted = value;
    assert std.isString(converted) : '"vpc_id" expected to be of type "string"';
    {
      vpc_id: converted,
    }
  ),
  data_repository_association:: {
    local block = self,
    new(data_repository_path, file_cache_path):: (
      {}
      + block.with_data_repository_path(data_repository_path)
      + block.with_file_cache_path(file_cache_path)
    ),
    with_association_id(value):: (
      local converted = value;
      assert std.isString(converted) : '"association_id" expected to be of type "string"';
      {
        association_id: converted,
      }
    ),
    with_data_repository_path(value):: (
      local converted = value;
      assert std.isString(converted) : '"data_repository_path" expected to be of type "string"';
      {
        data_repository_path: converted,
      }
    ),
    with_data_repository_subdirectories(value):: (
      local converted = if std.isArray(value) then value else [value];
      assert (std.isArray(converted) && std.length(std.set(converted)) == std.length(converted)) : '"data_repository_subdirectories" expected to be of type "set"';
      {
        data_repository_subdirectories: converted,
      }
    ),
    with_data_repository_subdirectories_mixin(value):: (
      local converted = if std.isArray(value) then value else [value];
      assert (std.isArray(converted) && std.length(std.set(converted)) == std.length(converted)) : '"data_repository_subdirectories" expected to be of type "set"';
      {
        data_repository_subdirectories+: converted,
      }
    ),
    with_file_cache_id(value):: (
      local converted = value;
      assert std.isString(converted) : '"file_cache_id" expected to be of type "string"';
      {
        file_cache_id: converted,
      }
    ),
    with_file_cache_path(value):: (
      local converted = value;
      assert std.isString(converted) : '"file_cache_path" expected to be of type "string"';
      {
        file_cache_path: converted,
      }
    ),
    with_file_system_id(value):: (
      local converted = value;
      assert std.isString(converted) : '"file_system_id" expected to be of type "string"';
      {
        file_system_id: converted,
      }
    ),
    with_file_system_path(value):: (
      local converted = value;
      assert std.isString(converted) : '"file_system_path" expected to be of type "string"';
      {
        file_system_path: converted,
      }
    ),
    with_imported_file_chunk_size(value):: (
      local converted = value;
      assert std.isNumber(converted) : '"imported_file_chunk_size" expected to be of type "number"';
      {
        imported_file_chunk_size: converted,
      }
    ),
    with_resource_arn(value):: (
      local converted = value;
      assert std.isString(converted) : '"resource_arn" expected to be of type "string"';
      {
        resource_arn: converted,
      }
    ),
    with_tags(value):: (
      local converted = value;
      assert std.isObject(converted) : '"tags" expected to be of type "map"';
      {
        tags: converted,
      }
    ),
    nfs:: {
      local block = self,
      new(version):: (
        {}
        + block.with_version(version)
      ),
      with_dns_ips(value):: (
        local converted = if std.isArray(value) then value else [value];
        assert (std.isArray(converted) && std.length(std.set(converted)) == std.length(converted)) : '"dns_ips" expected to be of type "set"';
        {
          dns_ips: converted,
        }
      ),
      with_dns_ips_mixin(value):: (
        local converted = if std.isArray(value) then value else [value];
        assert (std.isArray(converted) && std.length(std.set(converted)) == std.length(converted)) : '"dns_ips" expected to be of type "set"';
        {
          dns_ips+: converted,
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
    with_nfs(value):: (
      local converted = if std.isArray(value) then value else [value];
      {
        nfs: value,
      }
    ),
    with_nfs_mixin(value):: (
      local converted = if std.isArray(value) then value else [value];
      {
        nfs+: converted,
      }
    ),
  },
  lustre_configuration:: {
    local block = self,
    new(deployment_type, per_unit_storage_throughput):: (
      {}
      + block.with_deployment_type(deployment_type)
      + block.with_per_unit_storage_throughput(per_unit_storage_throughput)
    ),
    with_deployment_type(value):: (
      local converted = value;
      assert std.isString(converted) : '"deployment_type" expected to be of type "string"';
      {
        deployment_type: converted,
      }
    ),
    with_log_configuration(value):: (
      local converted = if std.isArray(value) then value else [value];
      assert (std.isArray(converted) && std.length(std.set(converted)) == std.length(converted)) : '"log_configuration" expected to be of type "set"';
      {
        log_configuration: converted,
      }
    ),
    with_log_configuration_mixin(value):: (
      local converted = if std.isArray(value) then value else [value];
      assert (std.isArray(converted) && std.length(std.set(converted)) == std.length(converted)) : '"log_configuration" expected to be of type "set"';
      {
        log_configuration+: converted,
      }
    ),
    with_mount_name(value):: (
      local converted = value;
      assert std.isString(converted) : '"mount_name" expected to be of type "string"';
      {
        mount_name: converted,
      }
    ),
    with_per_unit_storage_throughput(value):: (
      local converted = value;
      assert std.isNumber(converted) : '"per_unit_storage_throughput" expected to be of type "number"';
      {
        per_unit_storage_throughput: converted,
      }
    ),
    with_weekly_maintenance_start_time(value):: (
      local converted = value;
      assert std.isString(converted) : '"weekly_maintenance_start_time" expected to be of type "string"';
      {
        weekly_maintenance_start_time: converted,
      }
    ),
    metadata_configuration:: {
      local block = self,
      new(storage_capacity):: (
        {}
        + block.with_storage_capacity(storage_capacity)
      ),
      with_storage_capacity(value):: (
        local converted = value;
        assert std.isNumber(converted) : '"storage_capacity" expected to be of type "number"';
        {
          storage_capacity: converted,
        }
      ),
    },
    with_metadata_configuration(value):: (
      local converted = if std.isArray(value) then value else [value];
      {
        metadata_configuration: value,
      }
    ),
    with_metadata_configuration_mixin(value):: (
      local converted = if std.isArray(value) then value else [value];
      {
        metadata_configuration+: converted,
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
  with_data_repository_association(value):: (
    local converted = if std.isArray(value) then value else [value];
    {
      data_repository_association: value,
    }
  ),
  with_lustre_configuration(value):: (
    local converted = if std.isArray(value) then value else [value];
    {
      lustre_configuration: value,
    }
  ),
  with_timeouts(value):: (
    local converted = value;
    {
      timeouts: value,
    }
  ),
  with_data_repository_association_mixin(value):: (
    local converted = if std.isArray(value) then value else [value];
    {
      data_repository_association+: converted,
    }
  ),
  with_lustre_configuration_mixin(value):: (
    local converted = if std.isArray(value) then value else [value];
    {
      lustre_configuration+: converted,
    }
  ),
}
