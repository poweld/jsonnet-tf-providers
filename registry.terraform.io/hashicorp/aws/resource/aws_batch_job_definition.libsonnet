{
  local block = self,
  new(name, type):: (
    {}
    + block.with_name(name)
    + block.with_type(type)
  ),
  with_arn(value):: (
    local converted = value;
    assert std.isString(converted) : '"arn" expected to be of type "string"';
    {
      arn: converted,
    }
  ),
  with_arn_prefix(value):: (
    local converted = value;
    assert std.isString(converted) : '"arn_prefix" expected to be of type "string"';
    {
      arn_prefix: converted,
    }
  ),
  with_container_properties(value):: (
    local converted = value;
    assert std.isString(converted) : '"container_properties" expected to be of type "string"';
    {
      container_properties: converted,
    }
  ),
  with_deregister_on_new_revision(value):: (
    local converted = value;
    assert std.isBoolean(converted) : '"deregister_on_new_revision" expected to be of type "bool"';
    {
      deregister_on_new_revision: converted,
    }
  ),
  with_ecs_properties(value):: (
    local converted = value;
    assert std.isString(converted) : '"ecs_properties" expected to be of type "string"';
    {
      ecs_properties: converted,
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
  with_node_properties(value):: (
    local converted = value;
    assert std.isString(converted) : '"node_properties" expected to be of type "string"';
    {
      node_properties: converted,
    }
  ),
  with_parameters(value):: (
    local converted = value;
    assert std.isObject(converted) : '"parameters" expected to be of type "map"';
    {
      parameters: converted,
    }
  ),
  with_platform_capabilities(value):: (
    local converted = if std.isArray(value) then value else [value];
    assert (std.isArray(converted) && std.length(std.set(converted)) == std.length(converted)) : '"platform_capabilities" expected to be of type "set"';
    {
      platform_capabilities: converted,
    }
  ),
  with_platform_capabilities_mixin(value):: (
    local converted = if std.isArray(value) then value else [value];
    assert (std.isArray(converted) && std.length(std.set(converted)) == std.length(converted)) : '"platform_capabilities" expected to be of type "set"';
    {
      platform_capabilities+: converted,
    }
  ),
  with_propagate_tags(value):: (
    local converted = value;
    assert std.isBoolean(converted) : '"propagate_tags" expected to be of type "bool"';
    {
      propagate_tags: converted,
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
  with_revision(value):: (
    local converted = value;
    assert std.isNumber(converted) : '"revision" expected to be of type "number"';
    {
      revision: converted,
    }
  ),
  with_scheduling_priority(value):: (
    local converted = value;
    assert std.isNumber(converted) : '"scheduling_priority" expected to be of type "number"';
    {
      scheduling_priority: converted,
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
  eks_properties:: {
    local block = self,
    new():: (
      {}
    ),
    pod_properties:: {
      local block = self,
      new():: (
        {}
      ),
      with_dns_policy(value):: (
        local converted = value;
        assert std.isString(converted) : '"dns_policy" expected to be of type "string"';
        {
          dns_policy: converted,
        }
      ),
      with_host_network(value):: (
        local converted = value;
        assert std.isBoolean(converted) : '"host_network" expected to be of type "bool"';
        {
          host_network: converted,
        }
      ),
      with_service_account_name(value):: (
        local converted = value;
        assert std.isString(converted) : '"service_account_name" expected to be of type "string"';
        {
          service_account_name: converted,
        }
      ),
      with_share_process_namespace(value):: (
        local converted = value;
        assert std.isBoolean(converted) : '"share_process_namespace" expected to be of type "bool"';
        {
          share_process_namespace: converted,
        }
      ),
      containers:: {
        local block = self,
        new(image):: (
          {}
          + block.with_image(image)
        ),
        with_args(value):: (
          local converted = if std.isArray(value) then value else [value];
          assert std.isArray(converted) : '"args" expected to be of type "list"';
          {
            args: converted,
          }
        ),
        with_args_mixin(value):: (
          local converted = if std.isArray(value) then value else [value];
          assert std.isArray(converted) : '"args" expected to be of type "list"';
          {
            args+: converted,
          }
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
        with_image(value):: (
          local converted = value;
          assert std.isString(converted) : '"image" expected to be of type "string"';
          {
            image: converted,
          }
        ),
        with_image_pull_policy(value):: (
          local converted = value;
          assert std.isString(converted) : '"image_pull_policy" expected to be of type "string"';
          {
            image_pull_policy: converted,
          }
        ),
        with_name(value):: (
          local converted = value;
          assert std.isString(converted) : '"name" expected to be of type "string"';
          {
            name: converted,
          }
        ),
        env:: {
          local block = self,
          new(name, value):: (
            {}
            + block.with_name(name)
            + block.with_value(value)
          ),
          with_name(value):: (
            local converted = value;
            assert std.isString(converted) : '"name" expected to be of type "string"';
            {
              name: converted,
            }
          ),
          with_value(value):: (
            local converted = value;
            assert std.isString(converted) : '"value" expected to be of type "string"';
            {
              value: converted,
            }
          ),
        },
        resources:: {
          local block = self,
          new():: (
            {}
          ),
          with_limits(value):: (
            local converted = value;
            assert std.isObject(converted) : '"limits" expected to be of type "map"';
            {
              limits: converted,
            }
          ),
          with_requests(value):: (
            local converted = value;
            assert std.isObject(converted) : '"requests" expected to be of type "map"';
            {
              requests: converted,
            }
          ),
        },
        security_context:: {
          local block = self,
          new():: (
            {}
          ),
          with_privileged(value):: (
            local converted = value;
            assert std.isBoolean(converted) : '"privileged" expected to be of type "bool"';
            {
              privileged: converted,
            }
          ),
          with_read_only_root_file_system(value):: (
            local converted = value;
            assert std.isBoolean(converted) : '"read_only_root_file_system" expected to be of type "bool"';
            {
              read_only_root_file_system: converted,
            }
          ),
          with_run_as_group(value):: (
            local converted = value;
            assert std.isNumber(converted) : '"run_as_group" expected to be of type "number"';
            {
              run_as_group: converted,
            }
          ),
          with_run_as_non_root(value):: (
            local converted = value;
            assert std.isBoolean(converted) : '"run_as_non_root" expected to be of type "bool"';
            {
              run_as_non_root: converted,
            }
          ),
          with_run_as_user(value):: (
            local converted = value;
            assert std.isNumber(converted) : '"run_as_user" expected to be of type "number"';
            {
              run_as_user: converted,
            }
          ),
        },
        volume_mounts:: {
          local block = self,
          new(mount_path, name):: (
            {}
            + block.with_mount_path(mount_path)
            + block.with_name(name)
          ),
          with_mount_path(value):: (
            local converted = value;
            assert std.isString(converted) : '"mount_path" expected to be of type "string"';
            {
              mount_path: converted,
            }
          ),
          with_name(value):: (
            local converted = value;
            assert std.isString(converted) : '"name" expected to be of type "string"';
            {
              name: converted,
            }
          ),
          with_read_only(value):: (
            local converted = value;
            assert std.isBoolean(converted) : '"read_only" expected to be of type "bool"';
            {
              read_only: converted,
            }
          ),
        },
        with_env(value):: (
          local converted = if std.isArray(value) then value else [value];
          {
            env: value,
          }
        ),
        with_resources(value):: (
          local converted = if std.isArray(value) then value else [value];
          {
            resources: value,
          }
        ),
        with_security_context(value):: (
          local converted = if std.isArray(value) then value else [value];
          {
            security_context: value,
          }
        ),
        with_volume_mounts(value):: (
          local converted = if std.isArray(value) then value else [value];
          {
            volume_mounts: value,
          }
        ),
        with_env_mixin(value):: (
          local converted = if std.isArray(value) then value else [value];
          {
            env+: converted,
          }
        ),
        with_resources_mixin(value):: (
          local converted = if std.isArray(value) then value else [value];
          {
            resources+: converted,
          }
        ),
        with_security_context_mixin(value):: (
          local converted = if std.isArray(value) then value else [value];
          {
            security_context+: converted,
          }
        ),
        with_volume_mounts_mixin(value):: (
          local converted = if std.isArray(value) then value else [value];
          {
            volume_mounts+: converted,
          }
        ),
      },
      image_pull_secret:: {
        local block = self,
        new(name):: (
          {}
          + block.with_name(name)
        ),
        with_name(value):: (
          local converted = value;
          assert std.isString(converted) : '"name" expected to be of type "string"';
          {
            name: converted,
          }
        ),
      },
      init_containers:: {
        local block = self,
        new(image):: (
          {}
          + block.with_image(image)
        ),
        with_args(value):: (
          local converted = if std.isArray(value) then value else [value];
          assert std.isArray(converted) : '"args" expected to be of type "list"';
          {
            args: converted,
          }
        ),
        with_args_mixin(value):: (
          local converted = if std.isArray(value) then value else [value];
          assert std.isArray(converted) : '"args" expected to be of type "list"';
          {
            args+: converted,
          }
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
        with_image(value):: (
          local converted = value;
          assert std.isString(converted) : '"image" expected to be of type "string"';
          {
            image: converted,
          }
        ),
        with_image_pull_policy(value):: (
          local converted = value;
          assert std.isString(converted) : '"image_pull_policy" expected to be of type "string"';
          {
            image_pull_policy: converted,
          }
        ),
        with_name(value):: (
          local converted = value;
          assert std.isString(converted) : '"name" expected to be of type "string"';
          {
            name: converted,
          }
        ),
        env:: {
          local block = self,
          new(name, value):: (
            {}
            + block.with_name(name)
            + block.with_value(value)
          ),
          with_name(value):: (
            local converted = value;
            assert std.isString(converted) : '"name" expected to be of type "string"';
            {
              name: converted,
            }
          ),
          with_value(value):: (
            local converted = value;
            assert std.isString(converted) : '"value" expected to be of type "string"';
            {
              value: converted,
            }
          ),
        },
        resources:: {
          local block = self,
          new():: (
            {}
          ),
          with_limits(value):: (
            local converted = value;
            assert std.isObject(converted) : '"limits" expected to be of type "map"';
            {
              limits: converted,
            }
          ),
          with_requests(value):: (
            local converted = value;
            assert std.isObject(converted) : '"requests" expected to be of type "map"';
            {
              requests: converted,
            }
          ),
        },
        security_context:: {
          local block = self,
          new():: (
            {}
          ),
          with_privileged(value):: (
            local converted = value;
            assert std.isBoolean(converted) : '"privileged" expected to be of type "bool"';
            {
              privileged: converted,
            }
          ),
          with_read_only_root_file_system(value):: (
            local converted = value;
            assert std.isBoolean(converted) : '"read_only_root_file_system" expected to be of type "bool"';
            {
              read_only_root_file_system: converted,
            }
          ),
          with_run_as_group(value):: (
            local converted = value;
            assert std.isNumber(converted) : '"run_as_group" expected to be of type "number"';
            {
              run_as_group: converted,
            }
          ),
          with_run_as_non_root(value):: (
            local converted = value;
            assert std.isBoolean(converted) : '"run_as_non_root" expected to be of type "bool"';
            {
              run_as_non_root: converted,
            }
          ),
          with_run_as_user(value):: (
            local converted = value;
            assert std.isNumber(converted) : '"run_as_user" expected to be of type "number"';
            {
              run_as_user: converted,
            }
          ),
        },
        volume_mounts:: {
          local block = self,
          new(mount_path, name):: (
            {}
            + block.with_mount_path(mount_path)
            + block.with_name(name)
          ),
          with_mount_path(value):: (
            local converted = value;
            assert std.isString(converted) : '"mount_path" expected to be of type "string"';
            {
              mount_path: converted,
            }
          ),
          with_name(value):: (
            local converted = value;
            assert std.isString(converted) : '"name" expected to be of type "string"';
            {
              name: converted,
            }
          ),
          with_read_only(value):: (
            local converted = value;
            assert std.isBoolean(converted) : '"read_only" expected to be of type "bool"';
            {
              read_only: converted,
            }
          ),
        },
        with_env(value):: (
          local converted = if std.isArray(value) then value else [value];
          {
            env: value,
          }
        ),
        with_resources(value):: (
          local converted = if std.isArray(value) then value else [value];
          {
            resources: value,
          }
        ),
        with_security_context(value):: (
          local converted = if std.isArray(value) then value else [value];
          {
            security_context: value,
          }
        ),
        with_volume_mounts(value):: (
          local converted = if std.isArray(value) then value else [value];
          {
            volume_mounts: value,
          }
        ),
        with_env_mixin(value):: (
          local converted = if std.isArray(value) then value else [value];
          {
            env+: converted,
          }
        ),
        with_resources_mixin(value):: (
          local converted = if std.isArray(value) then value else [value];
          {
            resources+: converted,
          }
        ),
        with_security_context_mixin(value):: (
          local converted = if std.isArray(value) then value else [value];
          {
            security_context+: converted,
          }
        ),
        with_volume_mounts_mixin(value):: (
          local converted = if std.isArray(value) then value else [value];
          {
            volume_mounts+: converted,
          }
        ),
      },
      metadata:: {
        local block = self,
        new():: (
          {}
        ),
        with_labels(value):: (
          local converted = value;
          assert std.isObject(converted) : '"labels" expected to be of type "map"';
          {
            labels: converted,
          }
        ),
      },
      volumes:: {
        local block = self,
        new():: (
          {}
        ),
        with_name(value):: (
          local converted = value;
          assert std.isString(converted) : '"name" expected to be of type "string"';
          {
            name: converted,
          }
        ),
        empty_dir:: {
          local block = self,
          new(size_limit):: (
            {}
            + block.with_size_limit(size_limit)
          ),
          with_medium(value):: (
            local converted = value;
            assert std.isString(converted) : '"medium" expected to be of type "string"';
            {
              medium: converted,
            }
          ),
          with_size_limit(value):: (
            local converted = value;
            assert std.isString(converted) : '"size_limit" expected to be of type "string"';
            {
              size_limit: converted,
            }
          ),
        },
        host_path:: {
          local block = self,
          new(path):: (
            {}
            + block.with_path(path)
          ),
          with_path(value):: (
            local converted = value;
            assert std.isString(converted) : '"path" expected to be of type "string"';
            {
              path: converted,
            }
          ),
        },
        secret:: {
          local block = self,
          new(secret_name):: (
            {}
            + block.with_secret_name(secret_name)
          ),
          with_optional(value):: (
            local converted = value;
            assert std.isBoolean(converted) : '"optional" expected to be of type "bool"';
            {
              optional: converted,
            }
          ),
          with_secret_name(value):: (
            local converted = value;
            assert std.isString(converted) : '"secret_name" expected to be of type "string"';
            {
              secret_name: converted,
            }
          ),
        },
        with_empty_dir(value):: (
          local converted = if std.isArray(value) then value else [value];
          {
            empty_dir: value,
          }
        ),
        with_host_path(value):: (
          local converted = if std.isArray(value) then value else [value];
          {
            host_path: value,
          }
        ),
        with_secret(value):: (
          local converted = if std.isArray(value) then value else [value];
          {
            secret: value,
          }
        ),
        with_empty_dir_mixin(value):: (
          local converted = if std.isArray(value) then value else [value];
          {
            empty_dir+: converted,
          }
        ),
        with_host_path_mixin(value):: (
          local converted = if std.isArray(value) then value else [value];
          {
            host_path+: converted,
          }
        ),
        with_secret_mixin(value):: (
          local converted = if std.isArray(value) then value else [value];
          {
            secret+: converted,
          }
        ),
      },
      with_containers(value):: (
        local converted = if std.isArray(value) then value else [value];
        {
          containers: value,
        }
      ),
      with_image_pull_secret(value):: (
        local converted = if std.isArray(value) then value else [value];
        {
          image_pull_secret: value,
        }
      ),
      with_init_containers(value):: (
        local converted = if std.isArray(value) then value else [value];
        {
          init_containers: value,
        }
      ),
      with_metadata(value):: (
        local converted = if std.isArray(value) then value else [value];
        {
          metadata: value,
        }
      ),
      with_volumes(value):: (
        local converted = if std.isArray(value) then value else [value];
        {
          volumes: value,
        }
      ),
      with_containers_mixin(value):: (
        local converted = if std.isArray(value) then value else [value];
        {
          containers+: converted,
        }
      ),
      with_image_pull_secret_mixin(value):: (
        local converted = if std.isArray(value) then value else [value];
        {
          image_pull_secret+: converted,
        }
      ),
      with_init_containers_mixin(value):: (
        local converted = if std.isArray(value) then value else [value];
        {
          init_containers+: converted,
        }
      ),
      with_metadata_mixin(value):: (
        local converted = if std.isArray(value) then value else [value];
        {
          metadata+: converted,
        }
      ),
      with_volumes_mixin(value):: (
        local converted = if std.isArray(value) then value else [value];
        {
          volumes+: converted,
        }
      ),
    },
    with_pod_properties(value):: (
      local converted = if std.isArray(value) then value else [value];
      {
        pod_properties: value,
      }
    ),
    with_pod_properties_mixin(value):: (
      local converted = if std.isArray(value) then value else [value];
      {
        pod_properties+: converted,
      }
    ),
  },
  retry_strategy:: {
    local block = self,
    new():: (
      {}
    ),
    with_attempts(value):: (
      local converted = value;
      assert std.isNumber(converted) : '"attempts" expected to be of type "number"';
      {
        attempts: converted,
      }
    ),
    evaluate_on_exit:: {
      local block = self,
      new(action):: (
        {}
        + block.with_action(action)
      ),
      with_action(value):: (
        local converted = value;
        assert std.isString(converted) : '"action" expected to be of type "string"';
        {
          action: converted,
        }
      ),
      with_on_exit_code(value):: (
        local converted = value;
        assert std.isString(converted) : '"on_exit_code" expected to be of type "string"';
        {
          on_exit_code: converted,
        }
      ),
      with_on_reason(value):: (
        local converted = value;
        assert std.isString(converted) : '"on_reason" expected to be of type "string"';
        {
          on_reason: converted,
        }
      ),
      with_on_status_reason(value):: (
        local converted = value;
        assert std.isString(converted) : '"on_status_reason" expected to be of type "string"';
        {
          on_status_reason: converted,
        }
      ),
    },
    with_evaluate_on_exit(value):: (
      local converted = if std.isArray(value) then value else [value];
      {
        evaluate_on_exit: value,
      }
    ),
    with_evaluate_on_exit_mixin(value):: (
      local converted = if std.isArray(value) then value else [value];
      {
        evaluate_on_exit+: converted,
      }
    ),
  },
  timeout:: {
    local block = self,
    new():: (
      {}
    ),
    with_attempt_duration_seconds(value):: (
      local converted = value;
      assert std.isNumber(converted) : '"attempt_duration_seconds" expected to be of type "number"';
      {
        attempt_duration_seconds: converted,
      }
    ),
  },
  with_eks_properties(value):: (
    local converted = if std.isArray(value) then value else [value];
    {
      eks_properties: value,
    }
  ),
  with_retry_strategy(value):: (
    local converted = if std.isArray(value) then value else [value];
    {
      retry_strategy: value,
    }
  ),
  with_timeout(value):: (
    local converted = if std.isArray(value) then value else [value];
    {
      timeout: value,
    }
  ),
  with_eks_properties_mixin(value):: (
    local converted = if std.isArray(value) then value else [value];
    {
      eks_properties+: converted,
    }
  ),
  with_retry_strategy_mixin(value):: (
    local converted = if std.isArray(value) then value else [value];
    {
      retry_strategy+: converted,
    }
  ),
  with_timeout_mixin(value):: (
    local converted = if std.isArray(value) then value else [value];
    {
      timeout+: converted,
    }
  ),
}
