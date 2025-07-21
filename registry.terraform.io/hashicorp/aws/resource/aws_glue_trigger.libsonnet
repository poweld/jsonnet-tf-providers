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
  with_description(value):: (
    local converted = value;
    assert std.isString(converted) : '"description" expected to be of type "string"';
    {
      description: converted,
    }
  ),
  with_enabled(value):: (
    local converted = value;
    assert std.isBoolean(converted) : '"enabled" expected to be of type "bool"';
    {
      enabled: converted,
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
  with_schedule(value):: (
    local converted = value;
    assert std.isString(converted) : '"schedule" expected to be of type "string"';
    {
      schedule: converted,
    }
  ),
  with_start_on_creation(value):: (
    local converted = value;
    assert std.isBoolean(converted) : '"start_on_creation" expected to be of type "bool"';
    {
      start_on_creation: converted,
    }
  ),
  with_state(value):: (
    local converted = value;
    assert std.isString(converted) : '"state" expected to be of type "string"';
    {
      state: converted,
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
  with_workflow_name(value):: (
    local converted = value;
    assert std.isString(converted) : '"workflow_name" expected to be of type "string"';
    {
      workflow_name: converted,
    }
  ),
  actions:: {
    local block = self,
    new():: (
      {}
    ),
    with_arguments(value):: (
      local converted = value;
      assert std.isObject(converted) : '"arguments" expected to be of type "map"';
      {
        arguments: converted,
      }
    ),
    with_crawler_name(value):: (
      local converted = value;
      assert std.isString(converted) : '"crawler_name" expected to be of type "string"';
      {
        crawler_name: converted,
      }
    ),
    with_job_name(value):: (
      local converted = value;
      assert std.isString(converted) : '"job_name" expected to be of type "string"';
      {
        job_name: converted,
      }
    ),
    with_security_configuration(value):: (
      local converted = value;
      assert std.isString(converted) : '"security_configuration" expected to be of type "string"';
      {
        security_configuration: converted,
      }
    ),
    with_timeout(value):: (
      local converted = value;
      assert std.isNumber(converted) : '"timeout" expected to be of type "number"';
      {
        timeout: converted,
      }
    ),
    notification_property:: {
      local block = self,
      new():: (
        {}
      ),
      with_notify_delay_after(value):: (
        local converted = value;
        assert std.isNumber(converted) : '"notify_delay_after" expected to be of type "number"';
        {
          notify_delay_after: converted,
        }
      ),
    },
    with_notification_property(value):: (
      local converted = if std.isArray(value) then value else [value];
      {
        notification_property: value,
      }
    ),
    with_notification_property_mixin(value):: (
      local converted = if std.isArray(value) then value else [value];
      {
        notification_property+: converted,
      }
    ),
  },
  event_batching_condition:: {
    local block = self,
    new(batch_size):: (
      {}
      + block.with_batch_size(batch_size)
    ),
    with_batch_size(value):: (
      local converted = value;
      assert std.isNumber(converted) : '"batch_size" expected to be of type "number"';
      {
        batch_size: converted,
      }
    ),
    with_batch_window(value):: (
      local converted = value;
      assert std.isNumber(converted) : '"batch_window" expected to be of type "number"';
      {
        batch_window: converted,
      }
    ),
  },
  predicate:: {
    local block = self,
    new():: (
      {}
    ),
    with_logical(value):: (
      local converted = value;
      assert std.isString(converted) : '"logical" expected to be of type "string"';
      {
        logical: converted,
      }
    ),
    conditions:: {
      local block = self,
      new():: (
        {}
      ),
      with_crawl_state(value):: (
        local converted = value;
        assert std.isString(converted) : '"crawl_state" expected to be of type "string"';
        {
          crawl_state: converted,
        }
      ),
      with_crawler_name(value):: (
        local converted = value;
        assert std.isString(converted) : '"crawler_name" expected to be of type "string"';
        {
          crawler_name: converted,
        }
      ),
      with_job_name(value):: (
        local converted = value;
        assert std.isString(converted) : '"job_name" expected to be of type "string"';
        {
          job_name: converted,
        }
      ),
      with_logical_operator(value):: (
        local converted = value;
        assert std.isString(converted) : '"logical_operator" expected to be of type "string"';
        {
          logical_operator: converted,
        }
      ),
      with_state(value):: (
        local converted = value;
        assert std.isString(converted) : '"state" expected to be of type "string"';
        {
          state: converted,
        }
      ),
    },
    with_conditions(value):: (
      local converted = if std.isArray(value) then value else [value];
      {
        conditions: value,
      }
    ),
    with_conditions_mixin(value):: (
      local converted = if std.isArray(value) then value else [value];
      {
        conditions+: converted,
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
  with_actions(value):: (
    local converted = if std.isArray(value) then value else [value];
    {
      actions: value,
    }
  ),
  with_event_batching_condition(value):: (
    local converted = if std.isArray(value) then value else [value];
    {
      event_batching_condition: value,
    }
  ),
  with_predicate(value):: (
    local converted = if std.isArray(value) then value else [value];
    {
      predicate: value,
    }
  ),
  with_timeouts(value):: (
    local converted = value;
    {
      timeouts: value,
    }
  ),
  with_actions_mixin(value):: (
    local converted = if std.isArray(value) then value else [value];
    {
      actions+: converted,
    }
  ),
  with_event_batching_condition_mixin(value):: (
    local converted = if std.isArray(value) then value else [value];
    {
      event_batching_condition+: converted,
    }
  ),
  with_predicate_mixin(value):: (
    local converted = if std.isArray(value) then value else [value];
    {
      predicate+: converted,
    }
  ),
}
