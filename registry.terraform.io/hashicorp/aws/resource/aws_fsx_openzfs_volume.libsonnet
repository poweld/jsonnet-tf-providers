{
  local block = self,
  new(name, parent_volume_id):: (
    {}
    + block.with_name(name)
    + block.with_parent_volume_id(parent_volume_id)
  ),
  with_arn(value):: (
    local converted = value;
    assert std.isString(converted) : '"arn" expected to be of type "string"';
    {
      arn: converted,
    }
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
  with_delete_volume_options(value):: (
    local converted = if std.isArray(value) then value else [value];
    assert std.isArray(converted) : '"delete_volume_options" expected to be of type "list"';
    {
      delete_volume_options: converted,
    }
  ),
  with_delete_volume_options_mixin(value):: (
    local converted = if std.isArray(value) then value else [value];
    assert std.isArray(converted) : '"delete_volume_options" expected to be of type "list"';
    {
      delete_volume_options+: converted,
    }
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
  with_parent_volume_id(value):: (
    local converted = value;
    assert std.isString(converted) : '"parent_volume_id" expected to be of type "string"';
    {
      parent_volume_id: converted,
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
  '#with_region':: 'Region where this resource will be [managed](https://docs.aws.amazon.com/general/latest/gr/rande.html#regional-endpoints). Defaults to the Region set in the [provider configuration](https://registry.terraform.io/providers/hashicorp/aws/latest/docs#aws-configuration-reference).',
  with_region(value):: (
    local converted = value;
    assert std.isString(converted) : '"region" expected to be of type "string"';
    {
      region: converted,
    }
  ),
  with_storage_capacity_quota_gib(value):: (
    local converted = value;
    assert std.isNumber(converted) : '"storage_capacity_quota_gib" expected to be of type "number"';
    {
      storage_capacity_quota_gib: converted,
    }
  ),
  with_storage_capacity_reservation_gib(value):: (
    local converted = value;
    assert std.isNumber(converted) : '"storage_capacity_reservation_gib" expected to be of type "number"';
    {
      storage_capacity_reservation_gib: converted,
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
  with_volume_type(value):: (
    local converted = value;
    assert std.isString(converted) : '"volume_type" expected to be of type "string"';
    {
      volume_type: converted,
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
  origin_snapshot:: {
    local block = self,
    new(copy_strategy, snapshot_arn):: (
      {}
      + block.with_copy_strategy(copy_strategy)
      + block.with_snapshot_arn(snapshot_arn)
    ),
    with_copy_strategy(value):: (
      local converted = value;
      assert std.isString(converted) : '"copy_strategy" expected to be of type "string"';
      {
        copy_strategy: converted,
      }
    ),
    with_snapshot_arn(value):: (
      local converted = value;
      assert std.isString(converted) : '"snapshot_arn" expected to be of type "string"';
      {
        snapshot_arn: converted,
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
  with_origin_snapshot(value):: (
    local converted = if std.isArray(value) then value else [value];
    {
      origin_snapshot: value,
    }
  ),
  with_timeouts(value):: (
    local converted = value;
    {
      timeouts: value,
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
  with_origin_snapshot_mixin(value):: (
    local converted = if std.isArray(value) then value else [value];
    {
      origin_snapshot+: converted,
    }
  ),
  with_user_and_group_quotas_mixin(value):: (
    local converted = if std.isArray(value) then value else [value];
    {
      user_and_group_quotas+: converted,
    }
  ),
}
