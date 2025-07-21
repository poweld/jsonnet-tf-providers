{
  local block = self,
  new(name, project):: (
    {}
    + block.with_name(name)
    + block.with_project(project)
  ),
  with_arn(value):: (
    local converted = value;
    assert std.isString(converted) : '"arn" expected to be of type "string"';
    {
      arn: converted,
    }
  ),
  with_created_time(value):: (
    local converted = value;
    assert std.isString(converted) : '"created_time" expected to be of type "string"';
    {
      created_time: converted,
    }
  ),
  with_description(value):: (
    local converted = value;
    assert std.isString(converted) : '"description" expected to be of type "string"';
    {
      description: converted,
    }
  ),
  with_execution(value):: (
    local converted = if std.isArray(value) then value else [value];
    assert std.isArray(converted) : '"execution" expected to be of type "list"';
    {
      execution: converted,
    }
  ),
  with_execution_mixin(value):: (
    local converted = if std.isArray(value) then value else [value];
    assert std.isArray(converted) : '"execution" expected to be of type "list"';
    {
      execution+: converted,
    }
  ),
  with_id(value):: (
    local converted = value;
    assert std.isString(converted) : '"id" expected to be of type "string"';
    {
      id: converted,
    }
  ),
  with_last_updated_time(value):: (
    local converted = value;
    assert std.isString(converted) : '"last_updated_time" expected to be of type "string"';
    {
      last_updated_time: converted,
    }
  ),
  with_name(value):: (
    local converted = value;
    assert std.isString(converted) : '"name" expected to be of type "string"';
    {
      name: converted,
    }
  ),
  with_project(value):: (
    local converted = value;
    assert std.isString(converted) : '"project" expected to be of type "string"';
    {
      project: converted,
    }
  ),
  with_randomization_salt(value):: (
    local converted = value;
    assert std.isString(converted) : '"randomization_salt" expected to be of type "string"';
    {
      randomization_salt: converted,
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
    local converted = value;
    assert std.isString(converted) : '"status" expected to be of type "string"';
    {
      status: converted,
    }
  ),
  with_status_reason(value):: (
    local converted = value;
    assert std.isString(converted) : '"status_reason" expected to be of type "string"';
    {
      status_reason: converted,
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
  groups:: {
    local block = self,
    new(feature, name, variation):: (
      {}
      + block.with_feature(feature)
      + block.with_name(name)
      + block.with_variation(variation)
    ),
    with_description(value):: (
      local converted = value;
      assert std.isString(converted) : '"description" expected to be of type "string"';
      {
        description: converted,
      }
    ),
    with_feature(value):: (
      local converted = value;
      assert std.isString(converted) : '"feature" expected to be of type "string"';
      {
        feature: converted,
      }
    ),
    with_name(value):: (
      local converted = value;
      assert std.isString(converted) : '"name" expected to be of type "string"';
      {
        name: converted,
      }
    ),
    with_variation(value):: (
      local converted = value;
      assert std.isString(converted) : '"variation" expected to be of type "string"';
      {
        variation: converted,
      }
    ),
  },
  metric_monitors:: {
    local block = self,
    new():: (
      {}
    ),
    metric_definition:: {
      local block = self,
      new(entity_id_key, name, value_key):: (
        {}
        + block.with_entity_id_key(entity_id_key)
        + block.with_name(name)
        + block.with_value_key(value_key)
      ),
      with_entity_id_key(value):: (
        local converted = value;
        assert std.isString(converted) : '"entity_id_key" expected to be of type "string"';
        {
          entity_id_key: converted,
        }
      ),
      with_event_pattern(value):: (
        local converted = value;
        assert std.isString(converted) : '"event_pattern" expected to be of type "string"';
        {
          event_pattern: converted,
        }
      ),
      with_name(value):: (
        local converted = value;
        assert std.isString(converted) : '"name" expected to be of type "string"';
        {
          name: converted,
        }
      ),
      with_unit_label(value):: (
        local converted = value;
        assert std.isString(converted) : '"unit_label" expected to be of type "string"';
        {
          unit_label: converted,
        }
      ),
      with_value_key(value):: (
        local converted = value;
        assert std.isString(converted) : '"value_key" expected to be of type "string"';
        {
          value_key: converted,
        }
      ),
    },
    with_metric_definition(value):: (
      local converted = if std.isArray(value) then value else [value];
      {
        metric_definition: value,
      }
    ),
    with_metric_definition_mixin(value):: (
      local converted = if std.isArray(value) then value else [value];
      {
        metric_definition+: converted,
      }
    ),
  },
  scheduled_splits_config:: {
    local block = self,
    new():: (
      {}
    ),
    steps:: {
      local block = self,
      new(group_weights, start_time):: (
        {}
        + block.with_group_weights(group_weights)
        + block.with_start_time(start_time)
      ),
      with_group_weights(value):: (
        local converted = value;
        assert std.isObject(converted) : '"group_weights" expected to be of type "map"';
        {
          group_weights: converted,
        }
      ),
      with_start_time(value):: (
        local converted = value;
        assert std.isString(converted) : '"start_time" expected to be of type "string"';
        {
          start_time: converted,
        }
      ),
      segment_overrides:: {
        local block = self,
        new(evaluation_order, segment, weights):: (
          {}
          + block.with_evaluation_order(evaluation_order)
          + block.with_segment(segment)
          + block.with_weights(weights)
        ),
        with_evaluation_order(value):: (
          local converted = value;
          assert std.isNumber(converted) : '"evaluation_order" expected to be of type "number"';
          {
            evaluation_order: converted,
          }
        ),
        with_segment(value):: (
          local converted = value;
          assert std.isString(converted) : '"segment" expected to be of type "string"';
          {
            segment: converted,
          }
        ),
        with_weights(value):: (
          local converted = value;
          assert std.isObject(converted) : '"weights" expected to be of type "map"';
          {
            weights: converted,
          }
        ),
      },
      with_segment_overrides(value):: (
        local converted = if std.isArray(value) then value else [value];
        {
          segment_overrides: value,
        }
      ),
      with_segment_overrides_mixin(value):: (
        local converted = if std.isArray(value) then value else [value];
        {
          segment_overrides+: converted,
        }
      ),
    },
    with_steps(value):: (
      local converted = if std.isArray(value) then value else [value];
      {
        steps: value,
      }
    ),
    with_steps_mixin(value):: (
      local converted = if std.isArray(value) then value else [value];
      {
        steps+: converted,
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
  with_groups(value):: (
    local converted = if std.isArray(value) then value else [value];
    {
      groups: value,
    }
  ),
  with_metric_monitors(value):: (
    local converted = if std.isArray(value) then value else [value];
    {
      metric_monitors: value,
    }
  ),
  with_scheduled_splits_config(value):: (
    local converted = if std.isArray(value) then value else [value];
    {
      scheduled_splits_config: value,
    }
  ),
  with_timeouts(value):: (
    local converted = value;
    {
      timeouts: value,
    }
  ),
  with_groups_mixin(value):: (
    local converted = if std.isArray(value) then value else [value];
    {
      groups+: converted,
    }
  ),
  with_metric_monitors_mixin(value):: (
    local converted = if std.isArray(value) then value else [value];
    {
      metric_monitors+: converted,
    }
  ),
  with_scheduled_splits_config_mixin(value):: (
    local converted = if std.isArray(value) then value else [value];
    {
      scheduled_splits_config+: converted,
    }
  ),
}
