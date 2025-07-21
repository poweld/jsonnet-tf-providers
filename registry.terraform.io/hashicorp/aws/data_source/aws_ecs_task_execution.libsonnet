{
  local block = self,
  new(cluster, task_definition):: (
    {}
    + block.with_cluster(cluster)
    + block.with_task_definition(task_definition)
  ),
  with_client_token(value):: (
    local converted = value;
    assert std.isString(converted) : '"client_token" expected to be of type "string"';
    {
      client_token: converted,
    }
  ),
  with_cluster(value):: (
    local converted = value;
    assert std.isString(converted) : '"cluster" expected to be of type "string"';
    {
      cluster: converted,
    }
  ),
  with_desired_count(value):: (
    local converted = value;
    assert std.isNumber(converted) : '"desired_count" expected to be of type "number"';
    {
      desired_count: converted,
    }
  ),
  with_enable_ecs_managed_tags(value):: (
    local converted = value;
    assert std.isBoolean(converted) : '"enable_ecs_managed_tags" expected to be of type "bool"';
    {
      enable_ecs_managed_tags: converted,
    }
  ),
  with_enable_execute_command(value):: (
    local converted = value;
    assert std.isBoolean(converted) : '"enable_execute_command" expected to be of type "bool"';
    {
      enable_execute_command: converted,
    }
  ),
  with_group(value):: (
    local converted = value;
    assert std.isString(converted) : '"group" expected to be of type "string"';
    {
      group: converted,
    }
  ),
  with_id(value):: (
    local converted = value;
    assert std.isString(converted) : '"id" expected to be of type "string"';
    {
      id: converted,
    }
  ),
  with_launch_type(value):: (
    local converted = value;
    assert std.isString(converted) : '"launch_type" expected to be of type "string"';
    {
      launch_type: converted,
    }
  ),
  with_platform_version(value):: (
    local converted = value;
    assert std.isString(converted) : '"platform_version" expected to be of type "string"';
    {
      platform_version: converted,
    }
  ),
  with_propagate_tags(value):: (
    local converted = value;
    assert std.isString(converted) : '"propagate_tags" expected to be of type "string"';
    {
      propagate_tags: converted,
    }
  ),
  with_reference_id(value):: (
    local converted = value;
    assert std.isString(converted) : '"reference_id" expected to be of type "string"';
    {
      reference_id: converted,
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
  with_started_by(value):: (
    local converted = value;
    assert std.isString(converted) : '"started_by" expected to be of type "string"';
    {
      started_by: converted,
    }
  ),
  with_tags(value):: (
    local converted = value;
    assert std.isObject(converted) : '"tags" expected to be of type "map"';
    {
      tags: converted,
    }
  ),
  with_task_arns(value):: (
    local converted = if std.isArray(value) then value else [value];
    assert std.isArray(converted) : '"task_arns" expected to be of type "list"';
    {
      task_arns: converted,
    }
  ),
  with_task_arns_mixin(value):: (
    local converted = if std.isArray(value) then value else [value];
    assert std.isArray(converted) : '"task_arns" expected to be of type "list"';
    {
      task_arns+: converted,
    }
  ),
  with_task_definition(value):: (
    local converted = value;
    assert std.isString(converted) : '"task_definition" expected to be of type "string"';
    {
      task_definition: converted,
    }
  ),
  capacity_provider_strategy:: {
    local block = self,
    new(capacity_provider):: (
      {}
      + block.with_capacity_provider(capacity_provider)
    ),
    with_base(value):: (
      local converted = value;
      assert std.isNumber(converted) : '"base" expected to be of type "number"';
      {
        base: converted,
      }
    ),
    with_capacity_provider(value):: (
      local converted = value;
      assert std.isString(converted) : '"capacity_provider" expected to be of type "string"';
      {
        capacity_provider: converted,
      }
    ),
    with_weight(value):: (
      local converted = value;
      assert std.isNumber(converted) : '"weight" expected to be of type "number"';
      {
        weight: converted,
      }
    ),
  },
  network_configuration:: {
    local block = self,
    new(subnets):: (
      {}
      + block.with_subnets(subnets)
    ),
    with_assign_public_ip(value):: (
      local converted = value;
      assert std.isBoolean(converted) : '"assign_public_ip" expected to be of type "bool"';
      {
        assign_public_ip: converted,
      }
    ),
    with_security_groups(value):: (
      local converted = if std.isArray(value) then value else [value];
      assert (std.isArray(converted) && std.length(std.set(converted)) == std.length(converted)) : '"security_groups" expected to be of type "set"';
      {
        security_groups: converted,
      }
    ),
    with_security_groups_mixin(value):: (
      local converted = if std.isArray(value) then value else [value];
      assert (std.isArray(converted) && std.length(std.set(converted)) == std.length(converted)) : '"security_groups" expected to be of type "set"';
      {
        security_groups+: converted,
      }
    ),
    with_subnets(value):: (
      local converted = if std.isArray(value) then value else [value];
      assert (std.isArray(converted) && std.length(std.set(converted)) == std.length(converted)) : '"subnets" expected to be of type "set"';
      {
        subnets: converted,
      }
    ),
    with_subnets_mixin(value):: (
      local converted = if std.isArray(value) then value else [value];
      assert (std.isArray(converted) && std.length(std.set(converted)) == std.length(converted)) : '"subnets" expected to be of type "set"';
      {
        subnets+: converted,
      }
    ),
  },
  overrides:: {
    local block = self,
    new():: (
      {}
    ),
    with_cpu(value):: (
      local converted = value;
      assert std.isString(converted) : '"cpu" expected to be of type "string"';
      {
        cpu: converted,
      }
    ),
    with_execution_role_arn(value):: (
      local converted = value;
      assert std.isString(converted) : '"execution_role_arn" expected to be of type "string"';
      {
        execution_role_arn: converted,
      }
    ),
    with_memory(value):: (
      local converted = value;
      assert std.isString(converted) : '"memory" expected to be of type "string"';
      {
        memory: converted,
      }
    ),
    with_task_role_arn(value):: (
      local converted = value;
      assert std.isString(converted) : '"task_role_arn" expected to be of type "string"';
      {
        task_role_arn: converted,
      }
    ),
    container_overrides:: {
      local block = self,
      new(name):: (
        {}
        + block.with_name(name)
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
      with_cpu(value):: (
        local converted = value;
        assert std.isNumber(converted) : '"cpu" expected to be of type "number"';
        {
          cpu: converted,
        }
      ),
      with_memory(value):: (
        local converted = value;
        assert std.isNumber(converted) : '"memory" expected to be of type "number"';
        {
          memory: converted,
        }
      ),
      with_memory_reservation(value):: (
        local converted = value;
        assert std.isNumber(converted) : '"memory_reservation" expected to be of type "number"';
        {
          memory_reservation: converted,
        }
      ),
      with_name(value):: (
        local converted = value;
        assert std.isString(converted) : '"name" expected to be of type "string"';
        {
          name: converted,
        }
      ),
      environment:: {
        local block = self,
        new(key, value):: (
          {}
          + block.with_key(key)
          + block.with_value(value)
        ),
        with_key(value):: (
          local converted = value;
          assert std.isString(converted) : '"key" expected to be of type "string"';
          {
            key: converted,
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
      resource_requirements:: {
        local block = self,
        new(type, value):: (
          {}
          + block.with_type(type)
          + block.with_value(value)
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
          assert std.isString(converted) : '"value" expected to be of type "string"';
          {
            value: converted,
          }
        ),
      },
      with_environment(value):: (
        local converted = if std.isArray(value) then value else [value];
        {
          environment: value,
        }
      ),
      with_resource_requirements(value):: (
        local converted = if std.isArray(value) then value else [value];
        {
          resource_requirements: value,
        }
      ),
      with_environment_mixin(value):: (
        local converted = if std.isArray(value) then value else [value];
        {
          environment+: converted,
        }
      ),
      with_resource_requirements_mixin(value):: (
        local converted = if std.isArray(value) then value else [value];
        {
          resource_requirements+: converted,
        }
      ),
    },
    with_container_overrides(value):: (
      local converted = if std.isArray(value) then value else [value];
      {
        container_overrides: value,
      }
    ),
    with_container_overrides_mixin(value):: (
      local converted = if std.isArray(value) then value else [value];
      {
        container_overrides+: converted,
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
  placement_strategy:: {
    local block = self,
    new(type):: (
      {}
      + block.with_type(type)
    ),
    with_field(value):: (
      local converted = value;
      assert std.isString(converted) : '"field" expected to be of type "string"';
      {
        field: converted,
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
  with_capacity_provider_strategy(value):: (
    local converted = if std.isArray(value) then value else [value];
    {
      capacity_provider_strategy: value,
    }
  ),
  with_network_configuration(value):: (
    local converted = if std.isArray(value) then value else [value];
    {
      network_configuration: value,
    }
  ),
  with_overrides(value):: (
    local converted = if std.isArray(value) then value else [value];
    {
      overrides: value,
    }
  ),
  with_placement_constraints(value):: (
    local converted = if std.isArray(value) then value else [value];
    {
      placement_constraints: value,
    }
  ),
  with_placement_strategy(value):: (
    local converted = if std.isArray(value) then value else [value];
    {
      placement_strategy: value,
    }
  ),
  with_capacity_provider_strategy_mixin(value):: (
    local converted = if std.isArray(value) then value else [value];
    {
      capacity_provider_strategy+: converted,
    }
  ),
  with_network_configuration_mixin(value):: (
    local converted = if std.isArray(value) then value else [value];
    {
      network_configuration+: converted,
    }
  ),
  with_overrides_mixin(value):: (
    local converted = if std.isArray(value) then value else [value];
    {
      overrides+: converted,
    }
  ),
  with_placement_constraints_mixin(value):: (
    local converted = if std.isArray(value) then value else [value];
    {
      placement_constraints+: converted,
    }
  ),
  with_placement_strategy_mixin(value):: (
    local converted = if std.isArray(value) then value else [value];
    {
      placement_strategy+: converted,
    }
  ),
}
