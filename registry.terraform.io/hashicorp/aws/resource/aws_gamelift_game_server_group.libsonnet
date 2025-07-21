{
  local block = self,
  new(game_server_group_name, max_size, min_size, role_arn):: (
    {}
    + block.with_game_server_group_name(game_server_group_name)
    + block.with_max_size(max_size)
    + block.with_min_size(min_size)
    + block.with_role_arn(role_arn)
  ),
  with_arn(value):: (
    local converted = value;
    assert std.isString(converted) : '"arn" expected to be of type "string"';
    {
      arn: converted,
    }
  ),
  with_auto_scaling_group_arn(value):: (
    local converted = value;
    assert std.isString(converted) : '"auto_scaling_group_arn" expected to be of type "string"';
    {
      auto_scaling_group_arn: converted,
    }
  ),
  with_balancing_strategy(value):: (
    local converted = value;
    assert std.isString(converted) : '"balancing_strategy" expected to be of type "string"';
    {
      balancing_strategy: converted,
    }
  ),
  with_game_server_group_name(value):: (
    local converted = value;
    assert std.isString(converted) : '"game_server_group_name" expected to be of type "string"';
    {
      game_server_group_name: converted,
    }
  ),
  with_game_server_protection_policy(value):: (
    local converted = value;
    assert std.isString(converted) : '"game_server_protection_policy" expected to be of type "string"';
    {
      game_server_protection_policy: converted,
    }
  ),
  with_id(value):: (
    local converted = value;
    assert std.isString(converted) : '"id" expected to be of type "string"';
    {
      id: converted,
    }
  ),
  with_max_size(value):: (
    local converted = value;
    assert std.isNumber(converted) : '"max_size" expected to be of type "number"';
    {
      max_size: converted,
    }
  ),
  with_min_size(value):: (
    local converted = value;
    assert std.isNumber(converted) : '"min_size" expected to be of type "number"';
    {
      min_size: converted,
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
  with_role_arn(value):: (
    local converted = value;
    assert std.isString(converted) : '"role_arn" expected to be of type "string"';
    {
      role_arn: converted,
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
  with_vpc_subnets(value):: (
    local converted = if std.isArray(value) then value else [value];
    assert (std.isArray(converted) && std.length(std.set(converted)) == std.length(converted)) : '"vpc_subnets" expected to be of type "set"';
    {
      vpc_subnets: converted,
    }
  ),
  with_vpc_subnets_mixin(value):: (
    local converted = if std.isArray(value) then value else [value];
    assert (std.isArray(converted) && std.length(std.set(converted)) == std.length(converted)) : '"vpc_subnets" expected to be of type "set"';
    {
      vpc_subnets+: converted,
    }
  ),
  auto_scaling_policy:: {
    local block = self,
    new():: (
      {}
    ),
    with_estimated_instance_warmup(value):: (
      local converted = value;
      assert std.isNumber(converted) : '"estimated_instance_warmup" expected to be of type "number"';
      {
        estimated_instance_warmup: converted,
      }
    ),
    target_tracking_configuration:: {
      local block = self,
      new(target_value):: (
        {}
        + block.with_target_value(target_value)
      ),
      with_target_value(value):: (
        local converted = value;
        assert std.isNumber(converted) : '"target_value" expected to be of type "number"';
        {
          target_value: converted,
        }
      ),
    },
    with_target_tracking_configuration(value):: (
      local converted = if std.isArray(value) then value else [value];
      {
        target_tracking_configuration: value,
      }
    ),
    with_target_tracking_configuration_mixin(value):: (
      local converted = if std.isArray(value) then value else [value];
      {
        target_tracking_configuration+: converted,
      }
    ),
  },
  instance_definition:: {
    local block = self,
    new(instance_type):: (
      {}
      + block.with_instance_type(instance_type)
    ),
    with_instance_type(value):: (
      local converted = value;
      assert std.isString(converted) : '"instance_type" expected to be of type "string"';
      {
        instance_type: converted,
      }
    ),
    with_weighted_capacity(value):: (
      local converted = value;
      assert std.isString(converted) : '"weighted_capacity" expected to be of type "string"';
      {
        weighted_capacity: converted,
      }
    ),
  },
  launch_template:: {
    local block = self,
    new():: (
      {}
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
    with_version(value):: (
      local converted = value;
      assert std.isString(converted) : '"version" expected to be of type "string"';
      {
        version: converted,
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
  },
  with_auto_scaling_policy(value):: (
    local converted = if std.isArray(value) then value else [value];
    {
      auto_scaling_policy: value,
    }
  ),
  with_instance_definition(value):: (
    local converted = if std.isArray(value) then value else [value];
    {
      instance_definition: value,
    }
  ),
  with_launch_template(value):: (
    local converted = if std.isArray(value) then value else [value];
    {
      launch_template: value,
    }
  ),
  with_timeouts(value):: (
    local converted = value;
    {
      timeouts: value,
    }
  ),
  with_auto_scaling_policy_mixin(value):: (
    local converted = if std.isArray(value) then value else [value];
    {
      auto_scaling_policy+: converted,
    }
  ),
  with_instance_definition_mixin(value):: (
    local converted = if std.isArray(value) then value else [value];
    {
      instance_definition+: converted,
    }
  ),
  with_launch_template_mixin(value):: (
    local converted = if std.isArray(value) then value else [value];
    {
      launch_template+: converted,
    }
  ),
}
