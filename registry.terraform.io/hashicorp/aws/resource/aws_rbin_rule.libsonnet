{
  local block = self,
  new(resource_type):: (
    {}
    + block.with_resource_type(resource_type)
  ),
  with_arn(value):: (
    local converted = value;
    assert std.isString(converted) : '"arn" expected to be of type "string"';
    {
      arn: converted,
    }
  ),
  with_description(value):: (
    local converted = value;
    assert std.isString(converted) : '"description" expected to be of type "string"';
    {
      description: converted,
    }
  ),
  with_id(value):: (
    local converted = value;
    assert std.isString(converted) : '"id" expected to be of type "string"';
    {
      id: converted,
    }
  ),
  with_lock_end_time(value):: (
    local converted = value;
    assert std.isString(converted) : '"lock_end_time" expected to be of type "string"';
    {
      lock_end_time: converted,
    }
  ),
  with_lock_state(value):: (
    local converted = value;
    assert std.isString(converted) : '"lock_state" expected to be of type "string"';
    {
      lock_state: converted,
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
  with_resource_type(value):: (
    local converted = value;
    assert std.isString(converted) : '"resource_type" expected to be of type "string"';
    {
      resource_type: converted,
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
  exclude_resource_tags:: {
    local block = self,
    new(resource_tag_key):: (
      {}
      + block.with_resource_tag_key(resource_tag_key)
    ),
    with_resource_tag_key(value):: (
      local converted = value;
      assert std.isString(converted) : '"resource_tag_key" expected to be of type "string"';
      {
        resource_tag_key: converted,
      }
    ),
    with_resource_tag_value(value):: (
      local converted = value;
      assert std.isString(converted) : '"resource_tag_value" expected to be of type "string"';
      {
        resource_tag_value: converted,
      }
    ),
  },
  lock_configuration:: {
    local block = self,
    new():: (
      {}
    ),
    unlock_delay:: {
      local block = self,
      new(unlock_delay_unit, unlock_delay_value):: (
        {}
        + block.with_unlock_delay_unit(unlock_delay_unit)
        + block.with_unlock_delay_value(unlock_delay_value)
      ),
      with_unlock_delay_unit(value):: (
        local converted = value;
        assert std.isString(converted) : '"unlock_delay_unit" expected to be of type "string"';
        {
          unlock_delay_unit: converted,
        }
      ),
      with_unlock_delay_value(value):: (
        local converted = value;
        assert std.isNumber(converted) : '"unlock_delay_value" expected to be of type "number"';
        {
          unlock_delay_value: converted,
        }
      ),
    },
    with_unlock_delay(value):: (
      local converted = if std.isArray(value) then value else [value];
      {
        unlock_delay: value,
      }
    ),
    with_unlock_delay_mixin(value):: (
      local converted = if std.isArray(value) then value else [value];
      {
        unlock_delay+: converted,
      }
    ),
  },
  resource_tags:: {
    local block = self,
    new(resource_tag_key):: (
      {}
      + block.with_resource_tag_key(resource_tag_key)
    ),
    with_resource_tag_key(value):: (
      local converted = value;
      assert std.isString(converted) : '"resource_tag_key" expected to be of type "string"';
      {
        resource_tag_key: converted,
      }
    ),
    with_resource_tag_value(value):: (
      local converted = value;
      assert std.isString(converted) : '"resource_tag_value" expected to be of type "string"';
      {
        resource_tag_value: converted,
      }
    ),
  },
  retention_period:: {
    local block = self,
    new(retention_period_unit, retention_period_value):: (
      {}
      + block.with_retention_period_unit(retention_period_unit)
      + block.with_retention_period_value(retention_period_value)
    ),
    with_retention_period_unit(value):: (
      local converted = value;
      assert std.isString(converted) : '"retention_period_unit" expected to be of type "string"';
      {
        retention_period_unit: converted,
      }
    ),
    with_retention_period_value(value):: (
      local converted = value;
      assert std.isNumber(converted) : '"retention_period_value" expected to be of type "number"';
      {
        retention_period_value: converted,
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
  with_exclude_resource_tags(value):: (
    local converted = if std.isArray(value) then value else [value];
    {
      exclude_resource_tags: value,
    }
  ),
  with_lock_configuration(value):: (
    local converted = if std.isArray(value) then value else [value];
    {
      lock_configuration: value,
    }
  ),
  with_resource_tags(value):: (
    local converted = if std.isArray(value) then value else [value];
    {
      resource_tags: value,
    }
  ),
  with_retention_period(value):: (
    local converted = if std.isArray(value) then value else [value];
    {
      retention_period: value,
    }
  ),
  with_timeouts(value):: (
    local converted = value;
    {
      timeouts: value,
    }
  ),
  with_exclude_resource_tags_mixin(value):: (
    local converted = if std.isArray(value) then value else [value];
    {
      exclude_resource_tags+: converted,
    }
  ),
  with_lock_configuration_mixin(value):: (
    local converted = if std.isArray(value) then value else [value];
    {
      lock_configuration+: converted,
    }
  ),
  with_resource_tags_mixin(value):: (
    local converted = if std.isArray(value) then value else [value];
    {
      resource_tags+: converted,
    }
  ),
  with_retention_period_mixin(value):: (
    local converted = if std.isArray(value) then value else [value];
    {
      retention_period+: converted,
    }
  ),
}
