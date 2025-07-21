{
  local block = self,
  new(container_definitions, family):: (
    {}
    + block.with_container_definitions(container_definitions)
    + block.with_family(family)
  ),
  with_arn(value):: (
    local converted = value;
    assert std.isString(converted) : '"arn" expected to be of type "string"';
    {
      arn: converted,
    }
  ),
  with_arn_without_revision(value):: (
    local converted = value;
    assert std.isString(converted) : '"arn_without_revision" expected to be of type "string"';
    {
      arn_without_revision: converted,
    }
  ),
  with_container_definitions(value):: (
    local converted = value;
    assert std.isString(converted) : '"container_definitions" expected to be of type "string"';
    {
      container_definitions: converted,
    }
  ),
  with_cpu(value):: (
    local converted = value;
    assert std.isString(converted) : '"cpu" expected to be of type "string"';
    {
      cpu: converted,
    }
  ),
  with_enable_fault_injection(value):: (
    local converted = value;
    assert std.isBoolean(converted) : '"enable_fault_injection" expected to be of type "bool"';
    {
      enable_fault_injection: converted,
    }
  ),
  with_execution_role_arn(value):: (
    local converted = value;
    assert std.isString(converted) : '"execution_role_arn" expected to be of type "string"';
    {
      execution_role_arn: converted,
    }
  ),
  with_family(value):: (
    local converted = value;
    assert std.isString(converted) : '"family" expected to be of type "string"';
    {
      family: converted,
    }
  ),
  with_id(value):: (
    local converted = value;
    assert std.isString(converted) : '"id" expected to be of type "string"';
    {
      id: converted,
    }
  ),
  with_ipc_mode(value):: (
    local converted = value;
    assert std.isString(converted) : '"ipc_mode" expected to be of type "string"';
    {
      ipc_mode: converted,
    }
  ),
  with_memory(value):: (
    local converted = value;
    assert std.isString(converted) : '"memory" expected to be of type "string"';
    {
      memory: converted,
    }
  ),
  with_network_mode(value):: (
    local converted = value;
    assert std.isString(converted) : '"network_mode" expected to be of type "string"';
    {
      network_mode: converted,
    }
  ),
  with_pid_mode(value):: (
    local converted = value;
    assert std.isString(converted) : '"pid_mode" expected to be of type "string"';
    {
      pid_mode: converted,
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
  with_requires_compatibilities(value):: (
    local converted = if std.isArray(value) then value else [value];
    assert (std.isArray(converted) && std.length(std.set(converted)) == std.length(converted)) : '"requires_compatibilities" expected to be of type "set"';
    {
      requires_compatibilities: converted,
    }
  ),
  with_requires_compatibilities_mixin(value):: (
    local converted = if std.isArray(value) then value else [value];
    assert (std.isArray(converted) && std.length(std.set(converted)) == std.length(converted)) : '"requires_compatibilities" expected to be of type "set"';
    {
      requires_compatibilities+: converted,
    }
  ),
  with_revision(value):: (
    local converted = value;
    assert std.isNumber(converted) : '"revision" expected to be of type "number"';
    {
      revision: converted,
    }
  ),
  with_skip_destroy(value):: (
    local converted = value;
    assert std.isBoolean(converted) : '"skip_destroy" expected to be of type "bool"';
    {
      skip_destroy: converted,
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
  with_task_role_arn(value):: (
    local converted = value;
    assert std.isString(converted) : '"task_role_arn" expected to be of type "string"';
    {
      task_role_arn: converted,
    }
  ),
  with_track_latest(value):: (
    local converted = value;
    assert std.isBoolean(converted) : '"track_latest" expected to be of type "bool"';
    {
      track_latest: converted,
    }
  ),
  ephemeral_storage:: {
    local block = self,
    new(size_in_gib):: (
      {}
      + block.with_size_in_gib(size_in_gib)
    ),
    with_size_in_gib(value):: (
      local converted = value;
      assert std.isNumber(converted) : '"size_in_gib" expected to be of type "number"';
      {
        size_in_gib: converted,
      }
    ),
  },
  placement_constraints:: {
    local block = self,
    new(type):: (
      {}
      + block.with_type(type)
    ),
    with_expression(value):: (
      local converted = value;
      assert std.isString(converted) : '"expression" expected to be of type "string"';
      {
        expression: converted,
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
  proxy_configuration:: {
    local block = self,
    new(container_name):: (
      {}
      + block.with_container_name(container_name)
    ),
    with_container_name(value):: (
      local converted = value;
      assert std.isString(converted) : '"container_name" expected to be of type "string"';
      {
        container_name: converted,
      }
    ),
    with_properties(value):: (
      local converted = value;
      assert std.isObject(converted) : '"properties" expected to be of type "map"';
      {
        properties: converted,
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
  runtime_platform:: {
    local block = self,
    new():: (
      {}
    ),
    with_cpu_architecture(value):: (
      local converted = value;
      assert std.isString(converted) : '"cpu_architecture" expected to be of type "string"';
      {
        cpu_architecture: converted,
      }
    ),
    with_operating_system_family(value):: (
      local converted = value;
      assert std.isString(converted) : '"operating_system_family" expected to be of type "string"';
      {
        operating_system_family: converted,
      }
    ),
  },
  volume:: {
    local block = self,
    new(name):: (
      {}
      + block.with_name(name)
    ),
    with_configure_at_launch(value):: (
      local converted = value;
      assert std.isBoolean(converted) : '"configure_at_launch" expected to be of type "bool"';
      {
        configure_at_launch: converted,
      }
    ),
    with_host_path(value):: (
      local converted = value;
      assert std.isString(converted) : '"host_path" expected to be of type "string"';
      {
        host_path: converted,
      }
    ),
    with_name(value):: (
      local converted = value;
      assert std.isString(converted) : '"name" expected to be of type "string"';
      {
        name: converted,
      }
    ),
    docker_volume_configuration:: {
      local block = self,
      new():: (
        {}
      ),
      with_autoprovision(value):: (
        local converted = value;
        assert std.isBoolean(converted) : '"autoprovision" expected to be of type "bool"';
        {
          autoprovision: converted,
        }
      ),
      with_driver(value):: (
        local converted = value;
        assert std.isString(converted) : '"driver" expected to be of type "string"';
        {
          driver: converted,
        }
      ),
      with_driver_opts(value):: (
        local converted = value;
        assert std.isObject(converted) : '"driver_opts" expected to be of type "map"';
        {
          driver_opts: converted,
        }
      ),
      with_labels(value):: (
        local converted = value;
        assert std.isObject(converted) : '"labels" expected to be of type "map"';
        {
          labels: converted,
        }
      ),
      with_scope(value):: (
        local converted = value;
        assert std.isString(converted) : '"scope" expected to be of type "string"';
        {
          scope: converted,
        }
      ),
    },
    efs_volume_configuration:: {
      local block = self,
      new(file_system_id):: (
        {}
        + block.with_file_system_id(file_system_id)
      ),
      with_file_system_id(value):: (
        local converted = value;
        assert std.isString(converted) : '"file_system_id" expected to be of type "string"';
        {
          file_system_id: converted,
        }
      ),
      with_root_directory(value):: (
        local converted = value;
        assert std.isString(converted) : '"root_directory" expected to be of type "string"';
        {
          root_directory: converted,
        }
      ),
      with_transit_encryption(value):: (
        local converted = value;
        assert std.isString(converted) : '"transit_encryption" expected to be of type "string"';
        {
          transit_encryption: converted,
        }
      ),
      with_transit_encryption_port(value):: (
        local converted = value;
        assert std.isNumber(converted) : '"transit_encryption_port" expected to be of type "number"';
        {
          transit_encryption_port: converted,
        }
      ),
      authorization_config:: {
        local block = self,
        new():: (
          {}
        ),
        with_access_point_id(value):: (
          local converted = value;
          assert std.isString(converted) : '"access_point_id" expected to be of type "string"';
          {
            access_point_id: converted,
          }
        ),
        with_iam(value):: (
          local converted = value;
          assert std.isString(converted) : '"iam" expected to be of type "string"';
          {
            iam: converted,
          }
        ),
      },
      with_authorization_config(value):: (
        local converted = if std.isArray(value) then value else [value];
        {
          authorization_config: value,
        }
      ),
      with_authorization_config_mixin(value):: (
        local converted = if std.isArray(value) then value else [value];
        {
          authorization_config+: converted,
        }
      ),
    },
    fsx_windows_file_server_volume_configuration:: {
      local block = self,
      new(file_system_id, root_directory):: (
        {}
        + block.with_file_system_id(file_system_id)
        + block.with_root_directory(root_directory)
      ),
      with_file_system_id(value):: (
        local converted = value;
        assert std.isString(converted) : '"file_system_id" expected to be of type "string"';
        {
          file_system_id: converted,
        }
      ),
      with_root_directory(value):: (
        local converted = value;
        assert std.isString(converted) : '"root_directory" expected to be of type "string"';
        {
          root_directory: converted,
        }
      ),
      authorization_config:: {
        local block = self,
        new(credentials_parameter, domain):: (
          {}
          + block.with_credentials_parameter(credentials_parameter)
          + block.with_domain(domain)
        ),
        with_credentials_parameter(value):: (
          local converted = value;
          assert std.isString(converted) : '"credentials_parameter" expected to be of type "string"';
          {
            credentials_parameter: converted,
          }
        ),
        with_domain(value):: (
          local converted = value;
          assert std.isString(converted) : '"domain" expected to be of type "string"';
          {
            domain: converted,
          }
        ),
      },
      with_authorization_config(value):: (
        local converted = if std.isArray(value) then value else [value];
        {
          authorization_config: value,
        }
      ),
      with_authorization_config_mixin(value):: (
        local converted = if std.isArray(value) then value else [value];
        {
          authorization_config+: converted,
        }
      ),
    },
    with_docker_volume_configuration(value):: (
      local converted = if std.isArray(value) then value else [value];
      {
        docker_volume_configuration: value,
      }
    ),
    with_efs_volume_configuration(value):: (
      local converted = if std.isArray(value) then value else [value];
      {
        efs_volume_configuration: value,
      }
    ),
    with_fsx_windows_file_server_volume_configuration(value):: (
      local converted = if std.isArray(value) then value else [value];
      {
        fsx_windows_file_server_volume_configuration: value,
      }
    ),
    with_docker_volume_configuration_mixin(value):: (
      local converted = if std.isArray(value) then value else [value];
      {
        docker_volume_configuration+: converted,
      }
    ),
    with_efs_volume_configuration_mixin(value):: (
      local converted = if std.isArray(value) then value else [value];
      {
        efs_volume_configuration+: converted,
      }
    ),
    with_fsx_windows_file_server_volume_configuration_mixin(value):: (
      local converted = if std.isArray(value) then value else [value];
      {
        fsx_windows_file_server_volume_configuration+: converted,
      }
    ),
  },
  with_ephemeral_storage(value):: (
    local converted = if std.isArray(value) then value else [value];
    {
      ephemeral_storage: value,
    }
  ),
  with_placement_constraints(value):: (
    local converted = if std.isArray(value) then value else [value];
    {
      placement_constraints: value,
    }
  ),
  with_proxy_configuration(value):: (
    local converted = if std.isArray(value) then value else [value];
    {
      proxy_configuration: value,
    }
  ),
  with_runtime_platform(value):: (
    local converted = if std.isArray(value) then value else [value];
    {
      runtime_platform: value,
    }
  ),
  with_volume(value):: (
    local converted = if std.isArray(value) then value else [value];
    {
      volume: value,
    }
  ),
  with_ephemeral_storage_mixin(value):: (
    local converted = if std.isArray(value) then value else [value];
    {
      ephemeral_storage+: converted,
    }
  ),
  with_placement_constraints_mixin(value):: (
    local converted = if std.isArray(value) then value else [value];
    {
      placement_constraints+: converted,
    }
  ),
  with_proxy_configuration_mixin(value):: (
    local converted = if std.isArray(value) then value else [value];
    {
      proxy_configuration+: converted,
    }
  ),
  with_runtime_platform_mixin(value):: (
    local converted = if std.isArray(value) then value else [value];
    {
      runtime_platform+: converted,
    }
  ),
  with_volume_mixin(value):: (
    local converted = if std.isArray(value) then value else [value];
    {
      volume+: converted,
    }
  ),
}
