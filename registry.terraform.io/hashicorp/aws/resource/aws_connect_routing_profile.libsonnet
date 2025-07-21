{
  local block = self,
  new(default_outbound_queue_id, description, instance_id, name):: (
    {}
    + block.with_default_outbound_queue_id(default_outbound_queue_id)
    + block.with_description(description)
    + block.with_instance_id(instance_id)
    + block.with_name(name)
  ),
  with_arn(value):: (
    local converted = value;
    assert std.isString(converted) : '"arn" expected to be of type "string"';
    {
      arn: converted,
    }
  ),
  with_default_outbound_queue_id(value):: (
    local converted = value;
    assert std.isString(converted) : '"default_outbound_queue_id" expected to be of type "string"';
    {
      default_outbound_queue_id: converted,
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
  with_instance_id(value):: (
    local converted = value;
    assert std.isString(converted) : '"instance_id" expected to be of type "string"';
    {
      instance_id: converted,
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
  with_routing_profile_id(value):: (
    local converted = value;
    assert std.isString(converted) : '"routing_profile_id" expected to be of type "string"';
    {
      routing_profile_id: converted,
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
  media_concurrencies:: {
    local block = self,
    new(channel, concurrency):: (
      {}
      + block.with_channel(channel)
      + block.with_concurrency(concurrency)
    ),
    with_channel(value):: (
      local converted = value;
      assert std.isString(converted) : '"channel" expected to be of type "string"';
      {
        channel: converted,
      }
    ),
    with_concurrency(value):: (
      local converted = value;
      assert std.isNumber(converted) : '"concurrency" expected to be of type "number"';
      {
        concurrency: converted,
      }
    ),
  },
  queue_configs:: {
    local block = self,
    new(channel, delay, priority, queue_id):: (
      {}
      + block.with_channel(channel)
      + block.with_delay(delay)
      + block.with_priority(priority)
      + block.with_queue_id(queue_id)
    ),
    with_channel(value):: (
      local converted = value;
      assert std.isString(converted) : '"channel" expected to be of type "string"';
      {
        channel: converted,
      }
    ),
    with_delay(value):: (
      local converted = value;
      assert std.isNumber(converted) : '"delay" expected to be of type "number"';
      {
        delay: converted,
      }
    ),
    with_priority(value):: (
      local converted = value;
      assert std.isNumber(converted) : '"priority" expected to be of type "number"';
      {
        priority: converted,
      }
    ),
    with_queue_arn(value):: (
      local converted = value;
      assert std.isString(converted) : '"queue_arn" expected to be of type "string"';
      {
        queue_arn: converted,
      }
    ),
    with_queue_id(value):: (
      local converted = value;
      assert std.isString(converted) : '"queue_id" expected to be of type "string"';
      {
        queue_id: converted,
      }
    ),
    with_queue_name(value):: (
      local converted = value;
      assert std.isString(converted) : '"queue_name" expected to be of type "string"';
      {
        queue_name: converted,
      }
    ),
  },
  with_media_concurrencies(value):: (
    local converted = if std.isArray(value) then value else [value];
    {
      media_concurrencies: value,
    }
  ),
  with_queue_configs(value):: (
    local converted = if std.isArray(value) then value else [value];
    {
      queue_configs: value,
    }
  ),
  with_media_concurrencies_mixin(value):: (
    local converted = if std.isArray(value) then value else [value];
    {
      media_concurrencies+: converted,
    }
  ),
  with_queue_configs_mixin(value):: (
    local converted = if std.isArray(value) then value else [value];
    {
      queue_configs+: converted,
    }
  ),
}
