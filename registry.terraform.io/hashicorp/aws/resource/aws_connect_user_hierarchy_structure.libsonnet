{
  local block = self,
  new(instance_id):: (
    {}
    + block.with_instance_id(instance_id)
  ),
  with_id(value):: (
    local converted = value;
    assert std.isString(converted) : '"id" expected to be of type "string"';
    {
      id: converted,
    }
  ),
  with_instance_id(value):: (
    local converted = value;
    assert std.isString(converted) : '"instance_id" expected to be of type "string"';
    {
      instance_id: converted,
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
  hierarchy_structure:: {
    local block = self,
    new():: (
      {}
    ),
    level_five:: {
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
    },
    level_four:: {
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
    },
    level_one:: {
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
    },
    level_three:: {
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
    },
    level_two:: {
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
    },
    with_level_five(value):: (
      local converted = if std.isArray(value) then value else [value];
      {
        level_five: value,
      }
    ),
    with_level_four(value):: (
      local converted = if std.isArray(value) then value else [value];
      {
        level_four: value,
      }
    ),
    with_level_one(value):: (
      local converted = if std.isArray(value) then value else [value];
      {
        level_one: value,
      }
    ),
    with_level_three(value):: (
      local converted = if std.isArray(value) then value else [value];
      {
        level_three: value,
      }
    ),
    with_level_two(value):: (
      local converted = if std.isArray(value) then value else [value];
      {
        level_two: value,
      }
    ),
    with_level_five_mixin(value):: (
      local converted = if std.isArray(value) then value else [value];
      {
        level_five+: converted,
      }
    ),
    with_level_four_mixin(value):: (
      local converted = if std.isArray(value) then value else [value];
      {
        level_four+: converted,
      }
    ),
    with_level_one_mixin(value):: (
      local converted = if std.isArray(value) then value else [value];
      {
        level_one+: converted,
      }
    ),
    with_level_three_mixin(value):: (
      local converted = if std.isArray(value) then value else [value];
      {
        level_three+: converted,
      }
    ),
    with_level_two_mixin(value):: (
      local converted = if std.isArray(value) then value else [value];
      {
        level_two+: converted,
      }
    ),
  },
  with_hierarchy_structure(value):: (
    local converted = if std.isArray(value) then value else [value];
    {
      hierarchy_structure: value,
    }
  ),
  with_hierarchy_structure_mixin(value):: (
    local converted = if std.isArray(value) then value else [value];
    {
      hierarchy_structure+: converted,
    }
  ),
}
