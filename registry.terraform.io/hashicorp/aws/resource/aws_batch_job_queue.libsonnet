{
  local block = self,
  new(name, priority, state):: (
    {}
    + block.with_name(name)
    + block.with_priority(priority)
    + block.with_state(state)
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
  with_priority(value):: (
    local converted = value;
    assert std.isNumber(converted) : '"priority" expected to be of type "number"';
    {
      priority: converted,
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
  with_scheduling_policy_arn(value):: (
    local converted = value;
    assert std.isString(converted) : '"scheduling_policy_arn" expected to be of type "string"';
    {
      scheduling_policy_arn: converted,
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
  compute_environment_order:: {
    local block = self,
    new(compute_environment, order):: (
      {}
      + block.with_compute_environment(compute_environment)
      + block.with_order(order)
    ),
    with_compute_environment(value):: (
      local converted = value;
      assert std.isString(converted) : '"compute_environment" expected to be of type "string"';
      {
        compute_environment: converted,
      }
    ),
    with_order(value):: (
      local converted = value;
      assert std.isNumber(converted) : '"order" expected to be of type "number"';
      {
        order: converted,
      }
    ),
  },
  job_state_time_limit_action:: {
    local block = self,
    new(action, max_time_seconds, reason, state):: (
      {}
      + block.with_action(action)
      + block.with_max_time_seconds(max_time_seconds)
      + block.with_reason(reason)
      + block.with_state(state)
    ),
    with_action(value):: (
      local converted = value;
      assert std.isString(converted) : '"action" expected to be of type "string"';
      {
        action: converted,
      }
    ),
    with_max_time_seconds(value):: (
      local converted = value;
      assert std.isNumber(converted) : '"max_time_seconds" expected to be of type "number"';
      {
        max_time_seconds: converted,
      }
    ),
    with_reason(value):: (
      local converted = value;
      assert std.isString(converted) : '"reason" expected to be of type "string"';
      {
        reason: converted,
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
  timeouts:: {
    local block = self,
    new():: (
      {}
    ),
    '#with_create':: "A string that can be [parsed as a duration](https://pkg.go.dev/time#ParseDuration) consisting of numbers and unit suffixes, such as '30s' or '2h45m'. Valid time units are 's' (seconds), 'm' (minutes), 'h' (hours).",
    with_create(value):: (
      local converted = value;
      assert std.isString(converted) : '"create" expected to be of type "string"';
      {
        create: converted,
      }
    ),
    '#with_delete':: "A string that can be [parsed as a duration](https://pkg.go.dev/time#ParseDuration) consisting of numbers and unit suffixes, such as '30s' or '2h45m'. Valid time units are 's' (seconds), 'm' (minutes), 'h' (hours). Setting a timeout for a Delete operation is only applicable if changes are saved into state before the destroy operation occurs.",
    with_delete(value):: (
      local converted = value;
      assert std.isString(converted) : '"delete" expected to be of type "string"';
      {
        delete: converted,
      }
    ),
    '#with_update':: "A string that can be [parsed as a duration](https://pkg.go.dev/time#ParseDuration) consisting of numbers and unit suffixes, such as '30s' or '2h45m'. Valid time units are 's' (seconds), 'm' (minutes), 'h' (hours).",
    with_update(value):: (
      local converted = value;
      assert std.isString(converted) : '"update" expected to be of type "string"';
      {
        update: converted,
      }
    ),
  },
  with_compute_environment_order(value):: (
    local converted = if std.isArray(value) then value else [value];
    {
      compute_environment_order: value,
    }
  ),
  with_job_state_time_limit_action(value):: (
    local converted = if std.isArray(value) then value else [value];
    {
      job_state_time_limit_action: value,
    }
  ),
  with_timeouts(value):: (
    local converted = value;
    {
      timeouts: value,
    }
  ),
  with_compute_environment_order_mixin(value):: (
    local converted = if std.isArray(value) then value else [value];
    {
      compute_environment_order+: converted,
    }
  ),
  with_job_state_time_limit_action_mixin(value):: (
    local converted = if std.isArray(value) then value else [value];
    {
      job_state_time_limit_action+: converted,
    }
  ),
}
