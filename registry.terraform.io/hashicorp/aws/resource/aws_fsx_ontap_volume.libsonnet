{
  local block = self,
  new(name, storage_virtual_machine_id):: (
    {}
    + block.with_name(name)
    + block.with_storage_virtual_machine_id(storage_virtual_machine_id)
  ),
  with_arn(value):: (
    local converted = value;
    assert std.isString(converted) : '"arn" expected to be of type "string"';
    {
      arn: converted,
    }
  ),
  with_bypass_snaplock_enterprise_retention(value):: (
    local converted = value;
    assert std.isBoolean(converted) : '"bypass_snaplock_enterprise_retention" expected to be of type "bool"';
    {
      bypass_snaplock_enterprise_retention: converted,
    }
  ),
  with_copy_tags_to_backups(value):: (
    local converted = value;
    assert std.isBoolean(converted) : '"copy_tags_to_backups" expected to be of type "bool"';
    {
      copy_tags_to_backups: converted,
    }
  ),
  with_file_system_id(value):: (
    local converted = value;
    assert std.isString(converted) : '"file_system_id" expected to be of type "string"';
    {
      file_system_id: converted,
    }
  ),
  with_final_backup_tags(value):: (
    local converted = value;
    assert std.isObject(converted) : '"final_backup_tags" expected to be of type "map"';
    {
      final_backup_tags: converted,
    }
  ),
  with_flexcache_endpoint_type(value):: (
    local converted = value;
    assert std.isString(converted) : '"flexcache_endpoint_type" expected to be of type "string"';
    {
      flexcache_endpoint_type: converted,
    }
  ),
  with_id(value):: (
    local converted = value;
    assert std.isString(converted) : '"id" expected to be of type "string"';
    {
      id: converted,
    }
  ),
  with_junction_path(value):: (
    local converted = value;
    assert std.isString(converted) : '"junction_path" expected to be of type "string"';
    {
      junction_path: converted,
    }
  ),
  with_name(value):: (
    local converted = value;
    assert std.isString(converted) : '"name" expected to be of type "string"';
    {
      name: converted,
    }
  ),
  with_ontap_volume_type(value):: (
    local converted = value;
    assert std.isString(converted) : '"ontap_volume_type" expected to be of type "string"';
    {
      ontap_volume_type: converted,
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
  with_security_style(value):: (
    local converted = value;
    assert std.isString(converted) : '"security_style" expected to be of type "string"';
    {
      security_style: converted,
    }
  ),
  with_size_in_bytes(value):: (
    local converted = value;
    assert std.isString(converted) : '"size_in_bytes" expected to be of type "string"';
    {
      size_in_bytes: converted,
    }
  ),
  with_size_in_megabytes(value):: (
    local converted = value;
    assert std.isNumber(converted) : '"size_in_megabytes" expected to be of type "number"';
    {
      size_in_megabytes: converted,
    }
  ),
  with_skip_final_backup(value):: (
    local converted = value;
    assert std.isBoolean(converted) : '"skip_final_backup" expected to be of type "bool"';
    {
      skip_final_backup: converted,
    }
  ),
  with_snapshot_policy(value):: (
    local converted = value;
    assert std.isString(converted) : '"snapshot_policy" expected to be of type "string"';
    {
      snapshot_policy: converted,
    }
  ),
  with_storage_efficiency_enabled(value):: (
    local converted = value;
    assert std.isBoolean(converted) : '"storage_efficiency_enabled" expected to be of type "bool"';
    {
      storage_efficiency_enabled: converted,
    }
  ),
  with_storage_virtual_machine_id(value):: (
    local converted = value;
    assert std.isString(converted) : '"storage_virtual_machine_id" expected to be of type "string"';
    {
      storage_virtual_machine_id: converted,
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
  with_uuid(value):: (
    local converted = value;
    assert std.isString(converted) : '"uuid" expected to be of type "string"';
    {
      uuid: converted,
    }
  ),
  with_volume_style(value):: (
    local converted = value;
    assert std.isString(converted) : '"volume_style" expected to be of type "string"';
    {
      volume_style: converted,
    }
  ),
  with_volume_type(value):: (
    local converted = value;
    assert std.isString(converted) : '"volume_type" expected to be of type "string"';
    {
      volume_type: converted,
    }
  ),
  aggregate_configuration:: {
    local block = self,
    new():: (
      {}
    ),
    with_aggregates(value):: (
      local converted = if std.isArray(value) then value else [value];
      assert std.isArray(converted) : '"aggregates" expected to be of type "list"';
      {
        aggregates: converted,
      }
    ),
    with_aggregates_mixin(value):: (
      local converted = if std.isArray(value) then value else [value];
      assert std.isArray(converted) : '"aggregates" expected to be of type "list"';
      {
        aggregates+: converted,
      }
    ),
    with_constituents_per_aggregate(value):: (
      local converted = value;
      assert std.isNumber(converted) : '"constituents_per_aggregate" expected to be of type "number"';
      {
        constituents_per_aggregate: converted,
      }
    ),
    with_total_constituents(value):: (
      local converted = value;
      assert std.isNumber(converted) : '"total_constituents" expected to be of type "number"';
      {
        total_constituents: converted,
      }
    ),
  },
  snaplock_configuration:: {
    local block = self,
    new(snaplock_type):: (
      {}
      + block.with_snaplock_type(snaplock_type)
    ),
    with_audit_log_volume(value):: (
      local converted = value;
      assert std.isBoolean(converted) : '"audit_log_volume" expected to be of type "bool"';
      {
        audit_log_volume: converted,
      }
    ),
    with_privileged_delete(value):: (
      local converted = value;
      assert std.isString(converted) : '"privileged_delete" expected to be of type "string"';
      {
        privileged_delete: converted,
      }
    ),
    with_snaplock_type(value):: (
      local converted = value;
      assert std.isString(converted) : '"snaplock_type" expected to be of type "string"';
      {
        snaplock_type: converted,
      }
    ),
    with_volume_append_mode_enabled(value):: (
      local converted = value;
      assert std.isBoolean(converted) : '"volume_append_mode_enabled" expected to be of type "bool"';
      {
        volume_append_mode_enabled: converted,
      }
    ),
    autocommit_period:: {
      local block = self,
      new():: (
        {}
      ),
      with_type(value):: (
        local converted = value;
        assert std.isString(converted) : '"type" expected to be of type "string"';
        {
          type: converted,
        }
      ),
      with_value(value):: (
        local converted = value;
        assert std.isNumber(converted) : '"value" expected to be of type "number"';
        {
          value: converted,
        }
      ),
    },
    retention_period:: {
      local block = self,
      new():: (
        {}
      ),
      default_retention:: {
        local block = self,
        new():: (
          {}
        ),
        with_type(value):: (
          local converted = value;
          assert std.isString(converted) : '"type" expected to be of type "string"';
          {
            type: converted,
          }
        ),
        with_value(value):: (
          local converted = value;
          assert std.isNumber(converted) : '"value" expected to be of type "number"';
          {
            value: converted,
          }
        ),
      },
      maximum_retention:: {
        local block = self,
        new():: (
          {}
        ),
        with_type(value):: (
          local converted = value;
          assert std.isString(converted) : '"type" expected to be of type "string"';
          {
            type: converted,
          }
        ),
        with_value(value):: (
          local converted = value;
          assert std.isNumber(converted) : '"value" expected to be of type "number"';
          {
            value: converted,
          }
        ),
      },
      minimum_retention:: {
        local block = self,
        new():: (
          {}
        ),
        with_type(value):: (
          local converted = value;
          assert std.isString(converted) : '"type" expected to be of type "string"';
          {
            type: converted,
          }
        ),
        with_value(value):: (
          local converted = value;
          assert std.isNumber(converted) : '"value" expected to be of type "number"';
          {
            value: converted,
          }
        ),
      },
      with_default_retention(value):: (
        local converted = if std.isArray(value) then value else [value];
        {
          default_retention: value,
        }
      ),
      with_maximum_retention(value):: (
        local converted = if std.isArray(value) then value else [value];
        {
          maximum_retention: value,
        }
      ),
      with_minimum_retention(value):: (
        local converted = if std.isArray(value) then value else [value];
        {
          minimum_retention: value,
        }
      ),
      with_default_retention_mixin(value):: (
        local converted = if std.isArray(value) then value else [value];
        {
          default_retention+: converted,
        }
      ),
      with_maximum_retention_mixin(value):: (
        local converted = if std.isArray(value) then value else [value];
        {
          maximum_retention+: converted,
        }
      ),
      with_minimum_retention_mixin(value):: (
        local converted = if std.isArray(value) then value else [value];
        {
          minimum_retention+: converted,
        }
      ),
    },
    with_autocommit_period(value):: (
      local converted = if std.isArray(value) then value else [value];
      {
        autocommit_period: value,
      }
    ),
    with_retention_period(value):: (
      local converted = if std.isArray(value) then value else [value];
      {
        retention_period: value,
      }
    ),
    with_autocommit_period_mixin(value):: (
      local converted = if std.isArray(value) then value else [value];
      {
        autocommit_period+: converted,
      }
    ),
    with_retention_period_mixin(value):: (
      local converted = if std.isArray(value) then value else [value];
      {
        retention_period+: converted,
      }
    ),
  },
  tiering_policy:: {
    local block = self,
    new():: (
      {}
    ),
    with_cooling_period(value):: (
      local converted = value;
      assert std.isNumber(converted) : '"cooling_period" expected to be of type "number"';
      {
        cooling_period: converted,
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
  with_aggregate_configuration(value):: (
    local converted = if std.isArray(value) then value else [value];
    {
      aggregate_configuration: value,
    }
  ),
  with_snaplock_configuration(value):: (
    local converted = if std.isArray(value) then value else [value];
    {
      snaplock_configuration: value,
    }
  ),
  with_tiering_policy(value):: (
    local converted = if std.isArray(value) then value else [value];
    {
      tiering_policy: value,
    }
  ),
  with_timeouts(value):: (
    local converted = value;
    {
      timeouts: value,
    }
  ),
  with_aggregate_configuration_mixin(value):: (
    local converted = if std.isArray(value) then value else [value];
    {
      aggregate_configuration+: converted,
    }
  ),
  with_snaplock_configuration_mixin(value):: (
    local converted = if std.isArray(value) then value else [value];
    {
      snaplock_configuration+: converted,
    }
  ),
  with_tiering_policy_mixin(value):: (
    local converted = if std.isArray(value) then value else [value];
    {
      tiering_policy+: converted,
    }
  ),
}
