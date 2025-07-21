{
  local block = self,
  new(name):: (
    {}
    + block.with_name(name)
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
  auto_scaling_group_provider:: {
    local block = self,
    new(auto_scaling_group_arn):: (
      {}
      + block.with_auto_scaling_group_arn(auto_scaling_group_arn)
    ),
    with_auto_scaling_group_arn(value):: (
      local converted = value;
      assert std.isString(converted) : '"auto_scaling_group_arn" expected to be of type "string"';
      {
        auto_scaling_group_arn: converted,
      }
    ),
    with_managed_draining(value):: (
      local converted = value;
      assert std.isString(converted) : '"managed_draining" expected to be of type "string"';
      {
        managed_draining: converted,
      }
    ),
    with_managed_termination_protection(value):: (
      local converted = value;
      assert std.isString(converted) : '"managed_termination_protection" expected to be of type "string"';
      {
        managed_termination_protection: converted,
      }
    ),
    managed_scaling:: {
      local block = self,
      new():: (
        {}
      ),
      with_instance_warmup_period(value):: (
        local converted = value;
        assert std.isNumber(converted) : '"instance_warmup_period" expected to be of type "number"';
        {
          instance_warmup_period: converted,
        }
      ),
      with_maximum_scaling_step_size(value):: (
        local converted = value;
        assert std.isNumber(converted) : '"maximum_scaling_step_size" expected to be of type "number"';
        {
          maximum_scaling_step_size: converted,
        }
      ),
      with_minimum_scaling_step_size(value):: (
        local converted = value;
        assert std.isNumber(converted) : '"minimum_scaling_step_size" expected to be of type "number"';
        {
          minimum_scaling_step_size: converted,
        }
      ),
      with_status(value):: (
        local converted = value;
        assert std.isString(converted) : '"status" expected to be of type "string"';
        {
          status: converted,
        }
      ),
      with_target_capacity(value):: (
        local converted = value;
        assert std.isNumber(converted) : '"target_capacity" expected to be of type "number"';
        {
          target_capacity: converted,
        }
      ),
    },
    with_managed_scaling(value):: (
      local converted = if std.isArray(value) then value else [value];
      {
        managed_scaling: value,
      }
    ),
    with_managed_scaling_mixin(value):: (
      local converted = if std.isArray(value) then value else [value];
      {
        managed_scaling+: converted,
      }
    ),
  },
  with_auto_scaling_group_provider(value):: (
    local converted = if std.isArray(value) then value else [value];
    {
      auto_scaling_group_provider: value,
    }
  ),
  with_auto_scaling_group_provider_mixin(value):: (
    local converted = if std.isArray(value) then value else [value];
    {
      auto_scaling_group_provider+: converted,
    }
  ),
}
