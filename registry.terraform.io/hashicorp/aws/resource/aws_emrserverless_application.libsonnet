{
  local block = self,
  new(name, release_label, type):: (
    {}
    + block.with_name(name)
    + block.with_release_label(release_label)
    + block.with_type(type)
  ),
  with_architecture(value):: (
    local converted = value;
    assert std.isString(converted) : '"architecture" expected to be of type "string"';
    {
      architecture: converted,
    }
  ),
  with_arn(value):: (
    local converted = value;
    assert std.isString(converted) : '"arn" expected to be of type "string"';
    {
      arn: converted,
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
  auto_start_configuration:: {
    local block = self,
    new():: (
      {}
    ),
    with_enabled(value):: (
      local converted = value;
      assert std.isBoolean(converted) : '"enabled" expected to be of type "bool"';
      {
        enabled: converted,
      }
    ),
  },
  auto_stop_configuration:: {
    local block = self,
    new():: (
      {}
    ),
    with_enabled(value):: (
      local converted = value;
      assert std.isBoolean(converted) : '"enabled" expected to be of type "bool"';
      {
        enabled: converted,
      }
    ),
    with_idle_timeout_minutes(value):: (
      local converted = value;
      assert std.isNumber(converted) : '"idle_timeout_minutes" expected to be of type "number"';
      {
        idle_timeout_minutes: converted,
      }
    ),
  },
  image_configuration:: {
    local block = self,
    new(image_uri):: (
      {}
      + block.with_image_uri(image_uri)
    ),
    with_image_uri(value):: (
      local converted = value;
      assert std.isString(converted) : '"image_uri" expected to be of type "string"';
      {
        image_uri: converted,
      }
    ),
  },
  initial_capacity:: {
    local block = self,
    new(initial_capacity_type):: (
      {}
      + block.with_initial_capacity_type(initial_capacity_type)
    ),
    with_initial_capacity_type(value):: (
      local converted = value;
      assert std.isString(converted) : '"initial_capacity_type" expected to be of type "string"';
      {
        initial_capacity_type: converted,
      }
    ),
    initial_capacity_config:: {
      local block = self,
      new(worker_count):: (
        {}
        + block.with_worker_count(worker_count)
      ),
      with_worker_count(value):: (
        local converted = value;
        assert std.isNumber(converted) : '"worker_count" expected to be of type "number"';
        {
          worker_count: converted,
        }
      ),
      worker_configuration:: {
        local block = self,
        new(cpu, memory):: (
          {}
          + block.with_cpu(cpu)
          + block.with_memory(memory)
        ),
        with_cpu(value):: (
          local converted = value;
          assert std.isString(converted) : '"cpu" expected to be of type "string"';
          {
            cpu: converted,
          }
        ),
        with_disk(value):: (
          local converted = value;
          assert std.isString(converted) : '"disk" expected to be of type "string"';
          {
            disk: converted,
          }
        ),
        with_memory(value):: (
          local converted = value;
          assert std.isString(converted) : '"memory" expected to be of type "string"';
          {
            memory: converted,
          }
        ),
      },
      with_worker_configuration(value):: (
        local converted = if std.isArray(value) then value else [value];
        {
          worker_configuration: value,
        }
      ),
      with_worker_configuration_mixin(value):: (
        local converted = if std.isArray(value) then value else [value];
        {
          worker_configuration+: converted,
        }
      ),
    },
    with_initial_capacity_config(value):: (
      local converted = if std.isArray(value) then value else [value];
      {
        initial_capacity_config: value,
      }
    ),
    with_initial_capacity_config_mixin(value):: (
      local converted = if std.isArray(value) then value else [value];
      {
        initial_capacity_config+: converted,
      }
    ),
  },
  interactive_configuration:: {
    local block = self,
    new():: (
      {}
    ),
    with_livy_endpoint_enabled(value):: (
      local converted = value;
      assert std.isBoolean(converted) : '"livy_endpoint_enabled" expected to be of type "bool"';
      {
        livy_endpoint_enabled: converted,
      }
    ),
    with_studio_enabled(value):: (
      local converted = value;
      assert std.isBoolean(converted) : '"studio_enabled" expected to be of type "bool"';
      {
        studio_enabled: converted,
      }
    ),
  },
  maximum_capacity:: {
    local block = self,
    new(cpu, memory):: (
      {}
      + block.with_cpu(cpu)
      + block.with_memory(memory)
    ),
    with_cpu(value):: (
      local converted = value;
      assert std.isString(converted) : '"cpu" expected to be of type "string"';
      {
        cpu: converted,
      }
    ),
    with_disk(value):: (
      local converted = value;
      assert std.isString(converted) : '"disk" expected to be of type "string"';
      {
        disk: converted,
      }
    ),
    with_memory(value):: (
      local converted = value;
      assert std.isString(converted) : '"memory" expected to be of type "string"';
      {
        memory: converted,
      }
    ),
  },
  network_configuration:: {
    local block = self,
    new():: (
      {}
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
  },
  with_auto_start_configuration(value):: (
    local converted = if std.isArray(value) then value else [value];
    {
      auto_start_configuration: value,
    }
  ),
  with_auto_stop_configuration(value):: (
    local converted = if std.isArray(value) then value else [value];
    {
      auto_stop_configuration: value,
    }
  ),
  with_image_configuration(value):: (
    local converted = if std.isArray(value) then value else [value];
    {
      image_configuration: value,
    }
  ),
  with_initial_capacity(value):: (
    local converted = if std.isArray(value) then value else [value];
    {
      initial_capacity: value,
    }
  ),
  with_interactive_configuration(value):: (
    local converted = if std.isArray(value) then value else [value];
    {
      interactive_configuration: value,
    }
  ),
  with_maximum_capacity(value):: (
    local converted = if std.isArray(value) then value else [value];
    {
      maximum_capacity: value,
    }
  ),
  with_network_configuration(value):: (
    local converted = if std.isArray(value) then value else [value];
    {
      network_configuration: value,
    }
  ),
  with_auto_start_configuration_mixin(value):: (
    local converted = if std.isArray(value) then value else [value];
    {
      auto_start_configuration+: converted,
    }
  ),
  with_auto_stop_configuration_mixin(value):: (
    local converted = if std.isArray(value) then value else [value];
    {
      auto_stop_configuration+: converted,
    }
  ),
  with_image_configuration_mixin(value):: (
    local converted = if std.isArray(value) then value else [value];
    {
      image_configuration+: converted,
    }
  ),
  with_initial_capacity_mixin(value):: (
    local converted = if std.isArray(value) then value else [value];
    {
      initial_capacity+: converted,
    }
  ),
  with_interactive_configuration_mixin(value):: (
    local converted = if std.isArray(value) then value else [value];
    {
      interactive_configuration+: converted,
    }
  ),
  with_maximum_capacity_mixin(value):: (
    local converted = if std.isArray(value) then value else [value];
    {
      maximum_capacity+: converted,
    }
  ),
  with_network_configuration_mixin(value):: (
    local converted = if std.isArray(value) then value else [value];
    {
      network_configuration+: converted,
    }
  ),
}
