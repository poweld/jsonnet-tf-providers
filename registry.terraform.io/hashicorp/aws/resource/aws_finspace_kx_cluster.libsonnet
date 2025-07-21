{
  local block = self,
  new(az_mode, environment_id, name, release_label, type):: (
    {}
    + block.with_az_mode(az_mode)
    + block.with_environment_id(environment_id)
    + block.with_name(name)
    + block.with_release_label(release_label)
    + block.with_type(type)
  ),
  with_arn(value):: (
    local converted = value;
    assert std.isString(converted) : '"arn" expected to be of type "string"';
    {
      arn: converted,
    }
  ),
  with_availability_zone_id(value):: (
    local converted = value;
    assert std.isString(converted) : '"availability_zone_id" expected to be of type "string"';
    {
      availability_zone_id: converted,
    }
  ),
  with_az_mode(value):: (
    local converted = value;
    assert std.isString(converted) : '"az_mode" expected to be of type "string"';
    {
      az_mode: converted,
    }
  ),
  with_command_line_arguments(value):: (
    local converted = value;
    assert std.isObject(converted) : '"command_line_arguments" expected to be of type "map"';
    {
      command_line_arguments: converted,
    }
  ),
  with_created_timestamp(value):: (
    local converted = value;
    assert std.isString(converted) : '"created_timestamp" expected to be of type "string"';
    {
      created_timestamp: converted,
    }
  ),
  with_description(value):: (
    local converted = value;
    assert std.isString(converted) : '"description" expected to be of type "string"';
    {
      description: converted,
    }
  ),
  with_environment_id(value):: (
    local converted = value;
    assert std.isString(converted) : '"environment_id" expected to be of type "string"';
    {
      environment_id: converted,
    }
  ),
  with_execution_role(value):: (
    local converted = value;
    assert std.isString(converted) : '"execution_role" expected to be of type "string"';
    {
      execution_role: converted,
    }
  ),
  with_id(value):: (
    local converted = value;
    assert std.isString(converted) : '"id" expected to be of type "string"';
    {
      id: converted,
    }
  ),
  with_initialization_script(value):: (
    local converted = value;
    assert std.isString(converted) : '"initialization_script" expected to be of type "string"';
    {
      initialization_script: converted,
    }
  ),
  with_last_modified_timestamp(value):: (
    local converted = value;
    assert std.isString(converted) : '"last_modified_timestamp" expected to be of type "string"';
    {
      last_modified_timestamp: converted,
    }
  ),
  with_name(value):: (
    local converted = value;
    assert std.isString(converted) : '"name" expected to be of type "string"';
    {
      name: converted,
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
  with_release_label(value):: (
    local converted = value;
    assert std.isString(converted) : '"release_label" expected to be of type "string"';
    {
      release_label: converted,
    }
  ),
  with_status(value):: (
    local converted = value;
    assert std.isString(converted) : '"status" expected to be of type "string"';
    {
      status: converted,
    }
  ),
  with_status_reason(value):: (
    local converted = value;
    assert std.isString(converted) : '"status_reason" expected to be of type "string"';
    {
      status_reason: converted,
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
  with_type(value):: (
    local converted = value;
    assert std.isString(converted) : '"type" expected to be of type "string"';
    {
      type: converted,
    }
  ),
  auto_scaling_configuration:: {
    local block = self,
    new(auto_scaling_metric, max_node_count, metric_target, min_node_count, scale_in_cooldown_seconds, scale_out_cooldown_seconds):: (
      {}
      + block.with_auto_scaling_metric(auto_scaling_metric)
      + block.with_max_node_count(max_node_count)
      + block.with_metric_target(metric_target)
      + block.with_min_node_count(min_node_count)
      + block.with_scale_in_cooldown_seconds(scale_in_cooldown_seconds)
      + block.with_scale_out_cooldown_seconds(scale_out_cooldown_seconds)
    ),
    with_auto_scaling_metric(value):: (
      local converted = value;
      assert std.isString(converted) : '"auto_scaling_metric" expected to be of type "string"';
      {
        auto_scaling_metric: converted,
      }
    ),
    with_max_node_count(value):: (
      local converted = value;
      assert std.isNumber(converted) : '"max_node_count" expected to be of type "number"';
      {
        max_node_count: converted,
      }
    ),
    with_metric_target(value):: (
      local converted = value;
      assert std.isNumber(converted) : '"metric_target" expected to be of type "number"';
      {
        metric_target: converted,
      }
    ),
    with_min_node_count(value):: (
      local converted = value;
      assert std.isNumber(converted) : '"min_node_count" expected to be of type "number"';
      {
        min_node_count: converted,
      }
    ),
    with_scale_in_cooldown_seconds(value):: (
      local converted = value;
      assert std.isNumber(converted) : '"scale_in_cooldown_seconds" expected to be of type "number"';
      {
        scale_in_cooldown_seconds: converted,
      }
    ),
    with_scale_out_cooldown_seconds(value):: (
      local converted = value;
      assert std.isNumber(converted) : '"scale_out_cooldown_seconds" expected to be of type "number"';
      {
        scale_out_cooldown_seconds: converted,
      }
    ),
  },
  cache_storage_configurations:: {
    local block = self,
    new(size, type):: (
      {}
      + block.with_size(size)
      + block.with_type(type)
    ),
    with_size(value):: (
      local converted = value;
      assert std.isNumber(converted) : '"size" expected to be of type "number"';
      {
        size: converted,
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
  capacity_configuration:: {
    local block = self,
    new(node_count, node_type):: (
      {}
      + block.with_node_count(node_count)
      + block.with_node_type(node_type)
    ),
    with_node_count(value):: (
      local converted = value;
      assert std.isNumber(converted) : '"node_count" expected to be of type "number"';
      {
        node_count: converted,
      }
    ),
    with_node_type(value):: (
      local converted = value;
      assert std.isString(converted) : '"node_type" expected to be of type "string"';
      {
        node_type: converted,
      }
    ),
  },
  code:: {
    local block = self,
    new(s3_bucket, s3_key):: (
      {}
      + block.with_s3_bucket(s3_bucket)
      + block.with_s3_key(s3_key)
    ),
    with_s3_bucket(value):: (
      local converted = value;
      assert std.isString(converted) : '"s3_bucket" expected to be of type "string"';
      {
        s3_bucket: converted,
      }
    ),
    with_s3_key(value):: (
      local converted = value;
      assert std.isString(converted) : '"s3_key" expected to be of type "string"';
      {
        s3_key: converted,
      }
    ),
    with_s3_object_version(value):: (
      local converted = value;
      assert std.isString(converted) : '"s3_object_version" expected to be of type "string"';
      {
        s3_object_version: converted,
      }
    ),
  },
  database:: {
    local block = self,
    new(database_name):: (
      {}
      + block.with_database_name(database_name)
    ),
    with_changeset_id(value):: (
      local converted = value;
      assert std.isString(converted) : '"changeset_id" expected to be of type "string"';
      {
        changeset_id: converted,
      }
    ),
    with_database_name(value):: (
      local converted = value;
      assert std.isString(converted) : '"database_name" expected to be of type "string"';
      {
        database_name: converted,
      }
    ),
    with_dataview_name(value):: (
      local converted = value;
      assert std.isString(converted) : '"dataview_name" expected to be of type "string"';
      {
        dataview_name: converted,
      }
    ),
    cache_configurations:: {
      local block = self,
      new(cache_type):: (
        {}
        + block.with_cache_type(cache_type)
      ),
      with_cache_type(value):: (
        local converted = value;
        assert std.isString(converted) : '"cache_type" expected to be of type "string"';
        {
          cache_type: converted,
        }
      ),
      with_db_paths(value):: (
        local converted = if std.isArray(value) then value else [value];
        assert (std.isArray(converted) && std.length(std.set(converted)) == std.length(converted)) : '"db_paths" expected to be of type "set"';
        {
          db_paths: converted,
        }
      ),
      with_db_paths_mixin(value):: (
        local converted = if std.isArray(value) then value else [value];
        assert (std.isArray(converted) && std.length(std.set(converted)) == std.length(converted)) : '"db_paths" expected to be of type "set"';
        {
          db_paths+: converted,
        }
      ),
    },
    with_cache_configurations(value):: (
      local converted = if std.isArray(value) then value else [value];
      {
        cache_configurations: value,
      }
    ),
    with_cache_configurations_mixin(value):: (
      local converted = if std.isArray(value) then value else [value];
      {
        cache_configurations+: converted,
      }
    ),
  },
  savedown_storage_configuration:: {
    local block = self,
    new():: (
      {}
    ),
    with_size(value):: (
      local converted = value;
      assert std.isNumber(converted) : '"size" expected to be of type "number"';
      {
        size: converted,
      }
    ),
    with_type(value):: (
      local converted = value;
      assert std.isString(converted) : '"type" expected to be of type "string"';
      {
        type: converted,
      }
    ),
    with_volume_name(value):: (
      local converted = value;
      assert std.isString(converted) : '"volume_name" expected to be of type "string"';
      {
        volume_name: converted,
      }
    ),
  },
  scaling_group_configuration:: {
    local block = self,
    new(memory_reservation, node_count, scaling_group_name):: (
      {}
      + block.with_memory_reservation(memory_reservation)
      + block.with_node_count(node_count)
      + block.with_scaling_group_name(scaling_group_name)
    ),
    with_cpu(value):: (
      local converted = value;
      assert std.isNumber(converted) : '"cpu" expected to be of type "number"';
      {
        cpu: converted,
      }
    ),
    with_memory_limit(value):: (
      local converted = value;
      assert std.isNumber(converted) : '"memory_limit" expected to be of type "number"';
      {
        memory_limit: converted,
      }
    ),
    with_memory_reservation(value):: (
      local converted = value;
      assert std.isNumber(converted) : '"memory_reservation" expected to be of type "number"';
      {
        memory_reservation: converted,
      }
    ),
    with_node_count(value):: (
      local converted = value;
      assert std.isNumber(converted) : '"node_count" expected to be of type "number"';
      {
        node_count: converted,
      }
    ),
    with_scaling_group_name(value):: (
      local converted = value;
      assert std.isString(converted) : '"scaling_group_name" expected to be of type "string"';
      {
        scaling_group_name: converted,
      }
    ),
  },
  tickerplant_log_configuration:: {
    local block = self,
    new(tickerplant_log_volumes):: (
      {}
      + block.with_tickerplant_log_volumes(tickerplant_log_volumes)
    ),
    with_tickerplant_log_volumes(value):: (
      local converted = if std.isArray(value) then value else [value];
      assert (std.isArray(converted) && std.length(std.set(converted)) == std.length(converted)) : '"tickerplant_log_volumes" expected to be of type "set"';
      {
        tickerplant_log_volumes: converted,
      }
    ),
    with_tickerplant_log_volumes_mixin(value):: (
      local converted = if std.isArray(value) then value else [value];
      assert (std.isArray(converted) && std.length(std.set(converted)) == std.length(converted)) : '"tickerplant_log_volumes" expected to be of type "set"';
      {
        tickerplant_log_volumes+: converted,
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
  vpc_configuration:: {
    local block = self,
    new(ip_address_type, security_group_ids, subnet_ids, vpc_id):: (
      {}
      + block.with_ip_address_type(ip_address_type)
      + block.with_security_group_ids(security_group_ids)
      + block.with_subnet_ids(subnet_ids)
      + block.with_vpc_id(vpc_id)
    ),
    with_ip_address_type(value):: (
      local converted = value;
      assert std.isString(converted) : '"ip_address_type" expected to be of type "string"';
      {
        ip_address_type: converted,
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
    with_vpc_id(value):: (
      local converted = value;
      assert std.isString(converted) : '"vpc_id" expected to be of type "string"';
      {
        vpc_id: converted,
      }
    ),
  },
  with_auto_scaling_configuration(value):: (
    local converted = if std.isArray(value) then value else [value];
    {
      auto_scaling_configuration: value,
    }
  ),
  with_cache_storage_configurations(value):: (
    local converted = if std.isArray(value) then value else [value];
    {
      cache_storage_configurations: value,
    }
  ),
  with_capacity_configuration(value):: (
    local converted = if std.isArray(value) then value else [value];
    {
      capacity_configuration: value,
    }
  ),
  with_code(value):: (
    local converted = if std.isArray(value) then value else [value];
    {
      code: value,
    }
  ),
  with_database(value):: (
    local converted = if std.isArray(value) then value else [value];
    {
      database: value,
    }
  ),
  with_savedown_storage_configuration(value):: (
    local converted = if std.isArray(value) then value else [value];
    {
      savedown_storage_configuration: value,
    }
  ),
  with_scaling_group_configuration(value):: (
    local converted = if std.isArray(value) then value else [value];
    {
      scaling_group_configuration: value,
    }
  ),
  with_tickerplant_log_configuration(value):: (
    local converted = if std.isArray(value) then value else [value];
    {
      tickerplant_log_configuration: value,
    }
  ),
  with_timeouts(value):: (
    local converted = value;
    {
      timeouts: value,
    }
  ),
  with_vpc_configuration(value):: (
    local converted = if std.isArray(value) then value else [value];
    {
      vpc_configuration: value,
    }
  ),
  with_auto_scaling_configuration_mixin(value):: (
    local converted = if std.isArray(value) then value else [value];
    {
      auto_scaling_configuration+: converted,
    }
  ),
  with_cache_storage_configurations_mixin(value):: (
    local converted = if std.isArray(value) then value else [value];
    {
      cache_storage_configurations+: converted,
    }
  ),
  with_capacity_configuration_mixin(value):: (
    local converted = if std.isArray(value) then value else [value];
    {
      capacity_configuration+: converted,
    }
  ),
  with_code_mixin(value):: (
    local converted = if std.isArray(value) then value else [value];
    {
      code+: converted,
    }
  ),
  with_database_mixin(value):: (
    local converted = if std.isArray(value) then value else [value];
    {
      database+: converted,
    }
  ),
  with_savedown_storage_configuration_mixin(value):: (
    local converted = if std.isArray(value) then value else [value];
    {
      savedown_storage_configuration+: converted,
    }
  ),
  with_scaling_group_configuration_mixin(value):: (
    local converted = if std.isArray(value) then value else [value];
    {
      scaling_group_configuration+: converted,
    }
  ),
  with_tickerplant_log_configuration_mixin(value):: (
    local converted = if std.isArray(value) then value else [value];
    {
      tickerplant_log_configuration+: converted,
    }
  ),
  with_vpc_configuration_mixin(value):: (
    local converted = if std.isArray(value) then value else [value];
    {
      vpc_configuration+: converted,
    }
  ),
}
