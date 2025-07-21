{
  local block = self,
  new(function_name, role):: (
    {}
    + block.with_function_name(function_name)
    + block.with_role(role)
  ),
  with_architectures(value):: (
    local converted = if std.isArray(value) then value else [value];
    assert std.isArray(converted) : '"architectures" expected to be of type "list"';
    {
      architectures: converted,
    }
  ),
  with_architectures_mixin(value):: (
    local converted = if std.isArray(value) then value else [value];
    assert std.isArray(converted) : '"architectures" expected to be of type "list"';
    {
      architectures+: converted,
    }
  ),
  with_arn(value):: (
    local converted = value;
    assert std.isString(converted) : '"arn" expected to be of type "string"';
    {
      arn: converted,
    }
  ),
  with_code_sha256(value):: (
    local converted = value;
    assert std.isString(converted) : '"code_sha256" expected to be of type "string"';
    {
      code_sha256: converted,
    }
  ),
  with_code_signing_config_arn(value):: (
    local converted = value;
    assert std.isString(converted) : '"code_signing_config_arn" expected to be of type "string"';
    {
      code_signing_config_arn: converted,
    }
  ),
  with_description(value):: (
    local converted = value;
    assert std.isString(converted) : '"description" expected to be of type "string"';
    {
      description: converted,
    }
  ),
  with_filename(value):: (
    local converted = value;
    assert std.isString(converted) : '"filename" expected to be of type "string"';
    {
      filename: converted,
    }
  ),
  with_function_name(value):: (
    local converted = value;
    assert std.isString(converted) : '"function_name" expected to be of type "string"';
    {
      function_name: converted,
    }
  ),
  with_handler(value):: (
    local converted = value;
    assert std.isString(converted) : '"handler" expected to be of type "string"';
    {
      handler: converted,
    }
  ),
  with_id(value):: (
    local converted = value;
    assert std.isString(converted) : '"id" expected to be of type "string"';
    {
      id: converted,
    }
  ),
  with_image_uri(value):: (
    local converted = value;
    assert std.isString(converted) : '"image_uri" expected to be of type "string"';
    {
      image_uri: converted,
    }
  ),
  with_invoke_arn(value):: (
    local converted = value;
    assert std.isString(converted) : '"invoke_arn" expected to be of type "string"';
    {
      invoke_arn: converted,
    }
  ),
  with_kms_key_arn(value):: (
    local converted = value;
    assert std.isString(converted) : '"kms_key_arn" expected to be of type "string"';
    {
      kms_key_arn: converted,
    }
  ),
  with_last_modified(value):: (
    local converted = value;
    assert std.isString(converted) : '"last_modified" expected to be of type "string"';
    {
      last_modified: converted,
    }
  ),
  with_layers(value):: (
    local converted = if std.isArray(value) then value else [value];
    assert std.isArray(converted) : '"layers" expected to be of type "list"';
    {
      layers: converted,
    }
  ),
  with_layers_mixin(value):: (
    local converted = if std.isArray(value) then value else [value];
    assert std.isArray(converted) : '"layers" expected to be of type "list"';
    {
      layers+: converted,
    }
  ),
  with_memory_size(value):: (
    local converted = value;
    assert std.isNumber(converted) : '"memory_size" expected to be of type "number"';
    {
      memory_size: converted,
    }
  ),
  with_package_type(value):: (
    local converted = value;
    assert std.isString(converted) : '"package_type" expected to be of type "string"';
    {
      package_type: converted,
    }
  ),
  with_publish(value):: (
    local converted = value;
    assert std.isBoolean(converted) : '"publish" expected to be of type "bool"';
    {
      publish: converted,
    }
  ),
  with_qualified_arn(value):: (
    local converted = value;
    assert std.isString(converted) : '"qualified_arn" expected to be of type "string"';
    {
      qualified_arn: converted,
    }
  ),
  with_qualified_invoke_arn(value):: (
    local converted = value;
    assert std.isString(converted) : '"qualified_invoke_arn" expected to be of type "string"';
    {
      qualified_invoke_arn: converted,
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
  with_replace_security_groups_on_destroy(value):: (
    local converted = value;
    assert std.isBoolean(converted) : '"replace_security_groups_on_destroy" expected to be of type "bool"';
    {
      replace_security_groups_on_destroy: converted,
    }
  ),
  with_replacement_security_group_ids(value):: (
    local converted = if std.isArray(value) then value else [value];
    assert (std.isArray(converted) && std.length(std.set(converted)) == std.length(converted)) : '"replacement_security_group_ids" expected to be of type "set"';
    {
      replacement_security_group_ids: converted,
    }
  ),
  with_replacement_security_group_ids_mixin(value):: (
    local converted = if std.isArray(value) then value else [value];
    assert (std.isArray(converted) && std.length(std.set(converted)) == std.length(converted)) : '"replacement_security_group_ids" expected to be of type "set"';
    {
      replacement_security_group_ids+: converted,
    }
  ),
  with_reserved_concurrent_executions(value):: (
    local converted = value;
    assert std.isNumber(converted) : '"reserved_concurrent_executions" expected to be of type "number"';
    {
      reserved_concurrent_executions: converted,
    }
  ),
  with_role(value):: (
    local converted = value;
    assert std.isString(converted) : '"role" expected to be of type "string"';
    {
      role: converted,
    }
  ),
  with_runtime(value):: (
    local converted = value;
    assert std.isString(converted) : '"runtime" expected to be of type "string"';
    {
      runtime: converted,
    }
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
  with_signing_job_arn(value):: (
    local converted = value;
    assert std.isString(converted) : '"signing_job_arn" expected to be of type "string"';
    {
      signing_job_arn: converted,
    }
  ),
  with_signing_profile_version_arn(value):: (
    local converted = value;
    assert std.isString(converted) : '"signing_profile_version_arn" expected to be of type "string"';
    {
      signing_profile_version_arn: converted,
    }
  ),
  with_skip_destroy(value):: (
    local converted = value;
    assert std.isBoolean(converted) : '"skip_destroy" expected to be of type "bool"';
    {
      skip_destroy: converted,
    }
  ),
  with_source_code_hash(value):: (
    local converted = value;
    assert std.isString(converted) : '"source_code_hash" expected to be of type "string"';
    {
      source_code_hash: converted,
    }
  ),
  with_source_code_size(value):: (
    local converted = value;
    assert std.isNumber(converted) : '"source_code_size" expected to be of type "number"';
    {
      source_code_size: converted,
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
  with_timeout(value):: (
    local converted = value;
    assert std.isNumber(converted) : '"timeout" expected to be of type "number"';
    {
      timeout: converted,
    }
  ),
  with_version(value):: (
    local converted = value;
    assert std.isString(converted) : '"version" expected to be of type "string"';
    {
      version: converted,
    }
  ),
  dead_letter_config:: {
    local block = self,
    new(target_arn):: (
      {}
      + block.with_target_arn(target_arn)
    ),
    with_target_arn(value):: (
      local converted = value;
      assert std.isString(converted) : '"target_arn" expected to be of type "string"';
      {
        target_arn: converted,
      }
    ),
  },
  environment:: {
    local block = self,
    new():: (
      {}
    ),
    with_variables(value):: (
      local converted = value;
      assert std.isObject(converted) : '"variables" expected to be of type "map"';
      {
        variables: converted,
      }
    ),
  },
  ephemeral_storage:: {
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
  },
  file_system_config:: {
    local block = self,
    new(arn, local_mount_path):: (
      {}
      + block.with_arn(arn)
      + block.with_local_mount_path(local_mount_path)
    ),
    with_arn(value):: (
      local converted = value;
      assert std.isString(converted) : '"arn" expected to be of type "string"';
      {
        arn: converted,
      }
    ),
    with_local_mount_path(value):: (
      local converted = value;
      assert std.isString(converted) : '"local_mount_path" expected to be of type "string"';
      {
        local_mount_path: converted,
      }
    ),
  },
  image_config:: {
    local block = self,
    new():: (
      {}
    ),
    with_command(value):: (
      local converted = if std.isArray(value) then value else [value];
      assert std.isArray(converted) : '"command" expected to be of type "list"';
      {
        command: converted,
      }
    ),
    with_command_mixin(value):: (
      local converted = if std.isArray(value) then value else [value];
      assert std.isArray(converted) : '"command" expected to be of type "list"';
      {
        command+: converted,
      }
    ),
    with_entry_point(value):: (
      local converted = if std.isArray(value) then value else [value];
      assert std.isArray(converted) : '"entry_point" expected to be of type "list"';
      {
        entry_point: converted,
      }
    ),
    with_entry_point_mixin(value):: (
      local converted = if std.isArray(value) then value else [value];
      assert std.isArray(converted) : '"entry_point" expected to be of type "list"';
      {
        entry_point+: converted,
      }
    ),
    with_working_directory(value):: (
      local converted = value;
      assert std.isString(converted) : '"working_directory" expected to be of type "string"';
      {
        working_directory: converted,
      }
    ),
  },
  logging_config:: {
    local block = self,
    new(log_format):: (
      {}
      + block.with_log_format(log_format)
    ),
    with_application_log_level(value):: (
      local converted = value;
      assert std.isString(converted) : '"application_log_level" expected to be of type "string"';
      {
        application_log_level: converted,
      }
    ),
    with_log_format(value):: (
      local converted = value;
      assert std.isString(converted) : '"log_format" expected to be of type "string"';
      {
        log_format: converted,
      }
    ),
    with_log_group(value):: (
      local converted = value;
      assert std.isString(converted) : '"log_group" expected to be of type "string"';
      {
        log_group: converted,
      }
    ),
    with_system_log_level(value):: (
      local converted = value;
      assert std.isString(converted) : '"system_log_level" expected to be of type "string"';
      {
        system_log_level: converted,
      }
    ),
  },
  snap_start:: {
    local block = self,
    new(apply_on):: (
      {}
      + block.with_apply_on(apply_on)
    ),
    with_apply_on(value):: (
      local converted = value;
      assert std.isString(converted) : '"apply_on" expected to be of type "string"';
      {
        apply_on: converted,
      }
    ),
    with_optimization_status(value):: (
      local converted = value;
      assert std.isString(converted) : '"optimization_status" expected to be of type "string"';
      {
        optimization_status: converted,
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
  tracing_config:: {
    local block = self,
    new(mode):: (
      {}
      + block.with_mode(mode)
    ),
    with_mode(value):: (
      local converted = value;
      assert std.isString(converted) : '"mode" expected to be of type "string"';
      {
        mode: converted,
      }
    ),
  },
  vpc_config:: {
    local block = self,
    new(security_group_ids, subnet_ids):: (
      {}
      + block.with_security_group_ids(security_group_ids)
      + block.with_subnet_ids(subnet_ids)
    ),
    with_ipv6_allowed_for_dual_stack(value):: (
      local converted = value;
      assert std.isBoolean(converted) : '"ipv6_allowed_for_dual_stack" expected to be of type "bool"';
      {
        ipv6_allowed_for_dual_stack: converted,
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
  with_dead_letter_config(value):: (
    local converted = if std.isArray(value) then value else [value];
    {
      dead_letter_config: value,
    }
  ),
  with_environment(value):: (
    local converted = if std.isArray(value) then value else [value];
    {
      environment: value,
    }
  ),
  with_ephemeral_storage(value):: (
    local converted = if std.isArray(value) then value else [value];
    {
      ephemeral_storage: value,
    }
  ),
  with_file_system_config(value):: (
    local converted = if std.isArray(value) then value else [value];
    {
      file_system_config: value,
    }
  ),
  with_image_config(value):: (
    local converted = if std.isArray(value) then value else [value];
    {
      image_config: value,
    }
  ),
  with_logging_config(value):: (
    local converted = if std.isArray(value) then value else [value];
    {
      logging_config: value,
    }
  ),
  with_snap_start(value):: (
    local converted = if std.isArray(value) then value else [value];
    {
      snap_start: value,
    }
  ),
  with_timeouts(value):: (
    local converted = value;
    {
      timeouts: value,
    }
  ),
  with_tracing_config(value):: (
    local converted = if std.isArray(value) then value else [value];
    {
      tracing_config: value,
    }
  ),
  with_vpc_config(value):: (
    local converted = if std.isArray(value) then value else [value];
    {
      vpc_config: value,
    }
  ),
  with_dead_letter_config_mixin(value):: (
    local converted = if std.isArray(value) then value else [value];
    {
      dead_letter_config+: converted,
    }
  ),
  with_environment_mixin(value):: (
    local converted = if std.isArray(value) then value else [value];
    {
      environment+: converted,
    }
  ),
  with_ephemeral_storage_mixin(value):: (
    local converted = if std.isArray(value) then value else [value];
    {
      ephemeral_storage+: converted,
    }
  ),
  with_file_system_config_mixin(value):: (
    local converted = if std.isArray(value) then value else [value];
    {
      file_system_config+: converted,
    }
  ),
  with_image_config_mixin(value):: (
    local converted = if std.isArray(value) then value else [value];
    {
      image_config+: converted,
    }
  ),
  with_logging_config_mixin(value):: (
    local converted = if std.isArray(value) then value else [value];
    {
      logging_config+: converted,
    }
  ),
  with_snap_start_mixin(value):: (
    local converted = if std.isArray(value) then value else [value];
    {
      snap_start+: converted,
    }
  ),
  with_tracing_config_mixin(value):: (
    local converted = if std.isArray(value) then value else [value];
    {
      tracing_config+: converted,
    }
  ),
  with_vpc_config_mixin(value):: (
    local converted = if std.isArray(value) then value else [value];
    {
      vpc_config+: converted,
    }
  ),
}
