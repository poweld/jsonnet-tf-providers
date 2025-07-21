{
  local block = self,
  new(base_capacity, compute_type, environment_type, name):: (
    {}
    + block.with_base_capacity(base_capacity)
    + block.with_compute_type(compute_type)
    + block.with_environment_type(environment_type)
    + block.with_name(name)
  ),
  with_arn(value):: (
    local converted = value;
    assert std.isString(converted) : '"arn" expected to be of type "string"';
    {
      arn: converted,
    }
  ),
  with_base_capacity(value):: (
    local converted = value;
    assert std.isNumber(converted) : '"base_capacity" expected to be of type "number"';
    {
      base_capacity: converted,
    }
  ),
  with_compute_type(value):: (
    local converted = value;
    assert std.isString(converted) : '"compute_type" expected to be of type "string"';
    {
      compute_type: converted,
    }
  ),
  with_created(value):: (
    local converted = value;
    assert std.isString(converted) : '"created" expected to be of type "string"';
    {
      created: converted,
    }
  ),
  with_environment_type(value):: (
    local converted = value;
    assert std.isString(converted) : '"environment_type" expected to be of type "string"';
    {
      environment_type: converted,
    }
  ),
  with_fleet_service_role(value):: (
    local converted = value;
    assert std.isString(converted) : '"fleet_service_role" expected to be of type "string"';
    {
      fleet_service_role: converted,
    }
  ),
  with_id(value):: (
    local converted = value;
    assert std.isString(converted) : '"id" expected to be of type "string"';
    {
      id: converted,
    }
  ),
  with_image_id(value):: (
    local converted = value;
    assert std.isString(converted) : '"image_id" expected to be of type "string"';
    {
      image_id: converted,
    }
  ),
  with_last_modified(value):: (
    local converted = value;
    assert std.isString(converted) : '"last_modified" expected to be of type "string"';
    {
      last_modified: converted,
    }
  ),
  with_name(value):: (
    local converted = value;
    assert std.isString(converted) : '"name" expected to be of type "string"';
    {
      name: converted,
    }
  ),
  with_overflow_behavior(value):: (
    local converted = value;
    assert std.isString(converted) : '"overflow_behavior" expected to be of type "string"';
    {
      overflow_behavior: converted,
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
  with_status(value):: (
    local converted = if std.isArray(value) then value else [value];
    assert (std.isArray(converted) && std.length(std.set(converted)) == std.length(converted)) : '"status" expected to be of type "set"';
    {
      status: converted,
    }
  ),
  with_status_mixin(value):: (
    local converted = if std.isArray(value) then value else [value];
    assert (std.isArray(converted) && std.length(std.set(converted)) == std.length(converted)) : '"status" expected to be of type "set"';
    {
      status+: converted,
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
  compute_configuration:: {
    local block = self,
    new():: (
      {}
    ),
    with_disk(value):: (
      local converted = value;
      assert std.isNumber(converted) : '"disk" expected to be of type "number"';
      {
        disk: converted,
      }
    ),
    with_machine_type(value):: (
      local converted = value;
      assert std.isString(converted) : '"machine_type" expected to be of type "string"';
      {
        machine_type: converted,
      }
    ),
    with_memory(value):: (
      local converted = value;
      assert std.isNumber(converted) : '"memory" expected to be of type "number"';
      {
        memory: converted,
      }
    ),
    with_vcpu(value):: (
      local converted = value;
      assert std.isNumber(converted) : '"vcpu" expected to be of type "number"';
      {
        vcpu: converted,
      }
    ),
  },
  scaling_configuration:: {
    local block = self,
    new():: (
      {}
    ),
    with_desired_capacity(value):: (
      local converted = value;
      assert std.isNumber(converted) : '"desired_capacity" expected to be of type "number"';
      {
        desired_capacity: converted,
      }
    ),
    with_max_capacity(value):: (
      local converted = value;
      assert std.isNumber(converted) : '"max_capacity" expected to be of type "number"';
      {
        max_capacity: converted,
      }
    ),
    with_scaling_type(value):: (
      local converted = value;
      assert std.isString(converted) : '"scaling_type" expected to be of type "string"';
      {
        scaling_type: converted,
      }
    ),
    target_tracking_scaling_configs:: {
      local block = self,
      new():: (
        {}
      ),
      with_metric_type(value):: (
        local converted = value;
        assert std.isString(converted) : '"metric_type" expected to be of type "string"';
        {
          metric_type: converted,
        }
      ),
      with_target_value(value):: (
        local converted = value;
        assert std.isNumber(converted) : '"target_value" expected to be of type "number"';
        {
          target_value: converted,
        }
      ),
    },
    with_target_tracking_scaling_configs(value):: (
      local converted = if std.isArray(value) then value else [value];
      {
        target_tracking_scaling_configs: value,
      }
    ),
    with_target_tracking_scaling_configs_mixin(value):: (
      local converted = if std.isArray(value) then value else [value];
      {
        target_tracking_scaling_configs+: converted,
      }
    ),
  },
  vpc_config:: {
    local block = self,
    new(security_group_ids, subnets, vpc_id):: (
      {}
      + block.with_security_group_ids(security_group_ids)
      + block.with_subnets(subnets)
      + block.with_vpc_id(vpc_id)
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
    with_vpc_id(value):: (
      local converted = value;
      assert std.isString(converted) : '"vpc_id" expected to be of type "string"';
      {
        vpc_id: converted,
      }
    ),
  },
  with_compute_configuration(value):: (
    local converted = if std.isArray(value) then value else [value];
    {
      compute_configuration: value,
    }
  ),
  with_scaling_configuration(value):: (
    local converted = if std.isArray(value) then value else [value];
    {
      scaling_configuration: value,
    }
  ),
  with_vpc_config(value):: (
    local converted = if std.isArray(value) then value else [value];
    {
      vpc_config: value,
    }
  ),
  with_compute_configuration_mixin(value):: (
    local converted = if std.isArray(value) then value else [value];
    {
      compute_configuration+: converted,
    }
  ),
  with_scaling_configuration_mixin(value):: (
    local converted = if std.isArray(value) then value else [value];
    {
      scaling_configuration+: converted,
    }
  ),
  with_vpc_config_mixin(value):: (
    local converted = if std.isArray(value) then value else [value];
    {
      vpc_config+: converted,
    }
  ),
}
