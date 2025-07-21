{
  local block = self,
  new(cluster, service, task_definition):: (
    {}
    + block.with_cluster(cluster)
    + block.with_service(service)
    + block.with_task_definition(task_definition)
  ),
  with_arn(value):: (
    local converted = value;
    assert std.isString(converted) : '"arn" expected to be of type "string"';
    {
      arn: converted,
    }
  ),
  with_cluster(value):: (
    local converted = value;
    assert std.isString(converted) : '"cluster" expected to be of type "string"';
    {
      cluster: converted,
    }
  ),
  with_external_id(value):: (
    local converted = value;
    assert std.isString(converted) : '"external_id" expected to be of type "string"';
    {
      external_id: converted,
    }
  ),
  with_force_delete(value):: (
    local converted = value;
    assert std.isBoolean(converted) : '"force_delete" expected to be of type "bool"';
    {
      force_delete: converted,
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
  '#with_region':: 'Region where this resource will be [managed](https://docs.aws.amazon.com/general/latest/gr/rande.html#regional-endpoints). Defaults to the Region set in the [provider configuration](https://registry.terraform.io/providers/hashicorp/aws/latest/docs#aws-configuration-reference).',
  with_region(value):: (
    local converted = value;
    assert std.isString(converted) : '"region" expected to be of type "string"';
    {
      region: converted,
    }
  ),
  with_service(value):: (
    local converted = value;
    assert std.isString(converted) : '"service" expected to be of type "string"';
    {
      service: converted,
    }
  ),
  with_stability_status(value):: (
    local converted = value;
    assert std.isString(converted) : '"stability_status" expected to be of type "string"';
    {
      stability_status: converted,
    }
  ),
  with_status(value):: (
    local converted = value;
    assert std.isString(converted) : '"status" expected to be of type "string"';
    {
      status: converted,
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
  with_task_definition(value):: (
    local converted = value;
    assert std.isString(converted) : '"task_definition" expected to be of type "string"';
    {
      task_definition: converted,
    }
  ),
  with_task_set_id(value):: (
    local converted = value;
    assert std.isString(converted) : '"task_set_id" expected to be of type "string"';
    {
      task_set_id: converted,
    }
  ),
  with_wait_until_stable(value):: (
    local converted = value;
    assert std.isBoolean(converted) : '"wait_until_stable" expected to be of type "bool"';
    {
      wait_until_stable: converted,
    }
  ),
  with_wait_until_stable_timeout(value):: (
    local converted = value;
    assert std.isString(converted) : '"wait_until_stable_timeout" expected to be of type "string"';
    {
      wait_until_stable_timeout: converted,
    }
  ),
  capacity_provider_strategy:: {
    local block = self,
    new(capacity_provider, weight):: (
      {}
      + block.with_capacity_provider(capacity_provider)
      + block.with_weight(weight)
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
  load_balancer:: {
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
    with_container_port(value):: (
      local converted = value;
      assert std.isNumber(converted) : '"container_port" expected to be of type "number"';
      {
        container_port: converted,
      }
    ),
    with_load_balancer_name(value):: (
      local converted = value;
      assert std.isString(converted) : '"load_balancer_name" expected to be of type "string"';
      {
        load_balancer_name: converted,
      }
    ),
    with_target_group_arn(value):: (
      local converted = value;
      assert std.isString(converted) : '"target_group_arn" expected to be of type "string"';
      {
        target_group_arn: converted,
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
  scale:: {
    local block = self,
    new():: (
      {}
    ),
    with_unit(value):: (
      local converted = value;
      assert std.isString(converted) : '"unit" expected to be of type "string"';
      {
        unit: converted,
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
  service_registries:: {
    local block = self,
    new(registry_arn):: (
      {}
      + block.with_registry_arn(registry_arn)
    ),
    with_container_name(value):: (
      local converted = value;
      assert std.isString(converted) : '"container_name" expected to be of type "string"';
      {
        container_name: converted,
      }
    ),
    with_container_port(value):: (
      local converted = value;
      assert std.isNumber(converted) : '"container_port" expected to be of type "number"';
      {
        container_port: converted,
      }
    ),
    with_port(value):: (
      local converted = value;
      assert std.isNumber(converted) : '"port" expected to be of type "number"';
      {
        port: converted,
      }
    ),
    with_registry_arn(value):: (
      local converted = value;
      assert std.isString(converted) : '"registry_arn" expected to be of type "string"';
      {
        registry_arn: converted,
      }
    ),
  },
  with_capacity_provider_strategy(value):: (
    local converted = if std.isArray(value) then value else [value];
    {
      capacity_provider_strategy: value,
    }
  ),
  with_load_balancer(value):: (
    local converted = if std.isArray(value) then value else [value];
    {
      load_balancer: value,
    }
  ),
  with_network_configuration(value):: (
    local converted = if std.isArray(value) then value else [value];
    {
      network_configuration: value,
    }
  ),
  with_scale(value):: (
    local converted = if std.isArray(value) then value else [value];
    {
      scale: value,
    }
  ),
  with_service_registries(value):: (
    local converted = if std.isArray(value) then value else [value];
    {
      service_registries: value,
    }
  ),
  with_capacity_provider_strategy_mixin(value):: (
    local converted = if std.isArray(value) then value else [value];
    {
      capacity_provider_strategy+: converted,
    }
  ),
  with_load_balancer_mixin(value):: (
    local converted = if std.isArray(value) then value else [value];
    {
      load_balancer+: converted,
    }
  ),
  with_network_configuration_mixin(value):: (
    local converted = if std.isArray(value) then value else [value];
    {
      network_configuration+: converted,
    }
  ),
  with_scale_mixin(value):: (
    local converted = if std.isArray(value) then value else [value];
    {
      scale+: converted,
    }
  ),
  with_service_registries_mixin(value):: (
    local converted = if std.isArray(value) then value else [value];
    {
      service_registries+: converted,
    }
  ),
}
