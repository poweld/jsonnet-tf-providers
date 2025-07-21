{
  local block = self,
  new(engine_type, instance_type, name):: (
    {}
    + block.with_engine_type(engine_type)
    + block.with_instance_type(instance_type)
    + block.with_name(name)
  ),
  with_apply_changes_during_maintenance_window(value):: (
    local converted = value;
    assert std.isBoolean(converted) : '"apply_changes_during_maintenance_window" expected to be of type "bool"';
    {
      apply_changes_during_maintenance_window: converted,
    }
  ),
  with_arn(value):: (
    local converted = value;
    assert std.isString(converted) : '"arn" expected to be of type "string"';
    {
      arn: converted,
    }
  ),
  with_description(value):: (
    local converted = value;
    assert std.isString(converted) : '"description" expected to be of type "string"';
    {
      description: converted,
    }
  ),
  with_engine_type(value):: (
    local converted = value;
    assert std.isString(converted) : '"engine_type" expected to be of type "string"';
    {
      engine_type: converted,
    }
  ),
  with_engine_version(value):: (
    local converted = value;
    assert std.isString(converted) : '"engine_version" expected to be of type "string"';
    {
      engine_version: converted,
    }
  ),
  with_environment_id(value):: (
    local converted = value;
    assert std.isString(converted) : '"environment_id" expected to be of type "string"';
    {
      environment_id: converted,
    }
  ),
  with_force_update(value):: (
    local converted = value;
    assert std.isBoolean(converted) : '"force_update" expected to be of type "bool"';
    {
      force_update: converted,
    }
  ),
  with_id(value):: (
    local converted = value;
    assert std.isString(converted) : '"id" expected to be of type "string"';
    {
      id: converted,
    }
  ),
  with_instance_type(value):: (
    local converted = value;
    assert std.isString(converted) : '"instance_type" expected to be of type "string"';
    {
      instance_type: converted,
    }
  ),
  with_kms_key_id(value):: (
    local converted = value;
    assert std.isString(converted) : '"kms_key_id" expected to be of type "string"';
    {
      kms_key_id: converted,
    }
  ),
  with_load_balancer_arn(value):: (
    local converted = value;
    assert std.isString(converted) : '"load_balancer_arn" expected to be of type "string"';
    {
      load_balancer_arn: converted,
    }
  ),
  with_name(value):: (
    local converted = value;
    assert std.isString(converted) : '"name" expected to be of type "string"';
    {
      name: converted,
    }
  ),
  with_preferred_maintenance_window(value):: (
    local converted = value;
    assert std.isString(converted) : '"preferred_maintenance_window" expected to be of type "string"';
    {
      preferred_maintenance_window: converted,
    }
  ),
  with_publicly_accessible(value):: (
    local converted = value;
    assert std.isBoolean(converted) : '"publicly_accessible" expected to be of type "bool"';
    {
      publicly_accessible: converted,
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
  with_subnet_ids(value):: (
    local converted = if std.isArray(value) then value else [value];
    assert (std.isArray(converted) && std.length(std.set(converted)) == std.length(converted)) : '"subnet_ids" expected to be of type "set"';
    {
      subnet_ids: converted,
    }
  ),
  with_subnet_ids_mixin(value):: (
    local converted = if std.isArray(value) then value else [value];
    assert (std.isArray(converted) && std.length(std.set(converted)) == std.length(converted)) : '"subnet_ids" expected to be of type "set"';
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
  high_availability_config:: {
    local block = self,
    new(desired_capacity):: (
      {}
      + block.with_desired_capacity(desired_capacity)
    ),
    with_desired_capacity(value):: (
      local converted = value;
      assert std.isNumber(converted) : '"desired_capacity" expected to be of type "number"';
      {
        desired_capacity: converted,
      }
    ),
  },
  storage_configuration:: {
    local block = self,
    new():: (
      {}
    ),
    efs:: {
      local block = self,
      new(file_system_id, mount_point):: (
        {}
        + block.with_file_system_id(file_system_id)
        + block.with_mount_point(mount_point)
      ),
      with_file_system_id(value):: (
        local converted = value;
        assert std.isString(converted) : '"file_system_id" expected to be of type "string"';
        {
          file_system_id: converted,
        }
      ),
      with_mount_point(value):: (
        local converted = value;
        assert std.isString(converted) : '"mount_point" expected to be of type "string"';
        {
          mount_point: converted,
        }
      ),
    },
    fsx:: {
      local block = self,
      new(file_system_id, mount_point):: (
        {}
        + block.with_file_system_id(file_system_id)
        + block.with_mount_point(mount_point)
      ),
      with_file_system_id(value):: (
        local converted = value;
        assert std.isString(converted) : '"file_system_id" expected to be of type "string"';
        {
          file_system_id: converted,
        }
      ),
      with_mount_point(value):: (
        local converted = value;
        assert std.isString(converted) : '"mount_point" expected to be of type "string"';
        {
          mount_point: converted,
        }
      ),
    },
    with_efs(value):: (
      local converted = if std.isArray(value) then value else [value];
      {
        efs: value,
      }
    ),
    with_fsx(value):: (
      local converted = if std.isArray(value) then value else [value];
      {
        fsx: value,
      }
    ),
    with_efs_mixin(value):: (
      local converted = if std.isArray(value) then value else [value];
      {
        efs+: converted,
      }
    ),
    with_fsx_mixin(value):: (
      local converted = if std.isArray(value) then value else [value];
      {
        fsx+: converted,
      }
    ),
  },
  timeouts:: {
    local block = self,
    new():: (
      {}
    ),
    '#with_create':: "A string that can be [parsed as a duration](https://pkg.go.dev/time#ParseDuration) consisting of numbers and unit suffixes, such as '30s' or '2h45m'. Valid time units are 's' (seconds), 'm' (minutes), 'h' (hours).",
    with_create(value):: (
      local converted = value;
      assert std.isString(converted) : '"create" expected to be of type "string"';
      {
        create: converted,
      }
    ),
    '#with_delete':: "A string that can be [parsed as a duration](https://pkg.go.dev/time#ParseDuration) consisting of numbers and unit suffixes, such as '30s' or '2h45m'. Valid time units are 's' (seconds), 'm' (minutes), 'h' (hours). Setting a timeout for a Delete operation is only applicable if changes are saved into state before the destroy operation occurs.",
    with_delete(value):: (
      local converted = value;
      assert std.isString(converted) : '"delete" expected to be of type "string"';
      {
        delete: converted,
      }
    ),
    '#with_update':: "A string that can be [parsed as a duration](https://pkg.go.dev/time#ParseDuration) consisting of numbers and unit suffixes, such as '30s' or '2h45m'. Valid time units are 's' (seconds), 'm' (minutes), 'h' (hours).",
    with_update(value):: (
      local converted = value;
      assert std.isString(converted) : '"update" expected to be of type "string"';
      {
        update: converted,
      }
    ),
  },
  with_high_availability_config(value):: (
    local converted = if std.isArray(value) then value else [value];
    {
      high_availability_config: value,
    }
  ),
  with_storage_configuration(value):: (
    local converted = if std.isArray(value) then value else [value];
    {
      storage_configuration: value,
    }
  ),
  with_timeouts(value):: (
    local converted = value;
    {
      timeouts: value,
    }
  ),
  with_high_availability_config_mixin(value):: (
    local converted = if std.isArray(value) then value else [value];
    {
      high_availability_config+: converted,
    }
  ),
  with_storage_configuration_mixin(value):: (
    local converted = if std.isArray(value) then value else [value];
    {
      storage_configuration+: converted,
    }
  ),
}
