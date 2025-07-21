{
  local block = self,
  new(bucket):: (
    {}
    + block.with_bucket(bucket)
  ),
  with_bucket(value):: (
    local converted = value;
    assert std.isString(converted) : '"bucket" expected to be of type "string"';
    {
      bucket: converted,
    }
  ),
  with_eventbridge(value):: (
    local converted = value;
    assert std.isBoolean(converted) : '"eventbridge" expected to be of type "bool"';
    {
      eventbridge: converted,
    }
  ),
  with_id(value):: (
    local converted = value;
    assert std.isString(converted) : '"id" expected to be of type "string"';
    {
      id: converted,
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
  lambda_function:: {
    local block = self,
    new(events):: (
      {}
      + block.with_events(events)
    ),
    with_events(value):: (
      local converted = if std.isArray(value) then value else [value];
      assert (std.isArray(converted) && std.length(std.set(converted)) == std.length(converted)) : '"events" expected to be of type "set"';
      {
        events: converted,
      }
    ),
    with_events_mixin(value):: (
      local converted = if std.isArray(value) then value else [value];
      assert (std.isArray(converted) && std.length(std.set(converted)) == std.length(converted)) : '"events" expected to be of type "set"';
      {
        events+: converted,
      }
    ),
    with_filter_prefix(value):: (
      local converted = value;
      assert std.isString(converted) : '"filter_prefix" expected to be of type "string"';
      {
        filter_prefix: converted,
      }
    ),
    with_filter_suffix(value):: (
      local converted = value;
      assert std.isString(converted) : '"filter_suffix" expected to be of type "string"';
      {
        filter_suffix: converted,
      }
    ),
    with_id(value):: (
      local converted = value;
      assert std.isString(converted) : '"id" expected to be of type "string"';
      {
        id: converted,
      }
    ),
    with_lambda_function_arn(value):: (
      local converted = value;
      assert std.isString(converted) : '"lambda_function_arn" expected to be of type "string"';
      {
        lambda_function_arn: converted,
      }
    ),
  },
  queue:: {
    local block = self,
    new(events, queue_arn):: (
      {}
      + block.with_events(events)
      + block.with_queue_arn(queue_arn)
    ),
    with_events(value):: (
      local converted = if std.isArray(value) then value else [value];
      assert (std.isArray(converted) && std.length(std.set(converted)) == std.length(converted)) : '"events" expected to be of type "set"';
      {
        events: converted,
      }
    ),
    with_events_mixin(value):: (
      local converted = if std.isArray(value) then value else [value];
      assert (std.isArray(converted) && std.length(std.set(converted)) == std.length(converted)) : '"events" expected to be of type "set"';
      {
        events+: converted,
      }
    ),
    with_filter_prefix(value):: (
      local converted = value;
      assert std.isString(converted) : '"filter_prefix" expected to be of type "string"';
      {
        filter_prefix: converted,
      }
    ),
    with_filter_suffix(value):: (
      local converted = value;
      assert std.isString(converted) : '"filter_suffix" expected to be of type "string"';
      {
        filter_suffix: converted,
      }
    ),
    with_id(value):: (
      local converted = value;
      assert std.isString(converted) : '"id" expected to be of type "string"';
      {
        id: converted,
      }
    ),
    with_queue_arn(value):: (
      local converted = value;
      assert std.isString(converted) : '"queue_arn" expected to be of type "string"';
      {
        queue_arn: converted,
      }
    ),
  },
  topic:: {
    local block = self,
    new(events, topic_arn):: (
      {}
      + block.with_events(events)
      + block.with_topic_arn(topic_arn)
    ),
    with_events(value):: (
      local converted = if std.isArray(value) then value else [value];
      assert (std.isArray(converted) && std.length(std.set(converted)) == std.length(converted)) : '"events" expected to be of type "set"';
      {
        events: converted,
      }
    ),
    with_events_mixin(value):: (
      local converted = if std.isArray(value) then value else [value];
      assert (std.isArray(converted) && std.length(std.set(converted)) == std.length(converted)) : '"events" expected to be of type "set"';
      {
        events+: converted,
      }
    ),
    with_filter_prefix(value):: (
      local converted = value;
      assert std.isString(converted) : '"filter_prefix" expected to be of type "string"';
      {
        filter_prefix: converted,
      }
    ),
    with_filter_suffix(value):: (
      local converted = value;
      assert std.isString(converted) : '"filter_suffix" expected to be of type "string"';
      {
        filter_suffix: converted,
      }
    ),
    with_id(value):: (
      local converted = value;
      assert std.isString(converted) : '"id" expected to be of type "string"';
      {
        id: converted,
      }
    ),
    with_topic_arn(value):: (
      local converted = value;
      assert std.isString(converted) : '"topic_arn" expected to be of type "string"';
      {
        topic_arn: converted,
      }
    ),
  },
  with_lambda_function(value):: (
    local converted = if std.isArray(value) then value else [value];
    {
      lambda_function: value,
    }
  ),
  with_queue(value):: (
    local converted = if std.isArray(value) then value else [value];
    {
      queue: value,
    }
  ),
  with_topic(value):: (
    local converted = if std.isArray(value) then value else [value];
    {
      topic: value,
    }
  ),
  with_lambda_function_mixin(value):: (
    local converted = if std.isArray(value) then value else [value];
    {
      lambda_function+: converted,
    }
  ),
  with_queue_mixin(value):: (
    local converted = if std.isArray(value) then value else [value];
    {
      queue+: converted,
    }
  ),
  with_topic_mixin(value):: (
    local converted = if std.isArray(value) then value else [value];
    {
      topic+: converted,
    }
  ),
}
