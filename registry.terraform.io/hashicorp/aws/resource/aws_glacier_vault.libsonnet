{
  local block = self,
  new(name):: (
    {}
    + block.with_name(name)
  ),
  with_access_policy(value):: (
    local converted = value;
    assert std.isString(converted) : '"access_policy" expected to be of type "string"';
    {
      access_policy: converted,
    }
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
  with_location(value):: (
    local converted = value;
    assert std.isString(converted) : '"location" expected to be of type "string"';
    {
      location: converted,
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
  notification:: {
    local block = self,
    new(events, sns_topic):: (
      {}
      + block.with_events(events)
      + block.with_sns_topic(sns_topic)
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
    with_sns_topic(value):: (
      local converted = value;
      assert std.isString(converted) : '"sns_topic" expected to be of type "string"';
      {
        sns_topic: converted,
      }
    ),
  },
  with_notification(value):: (
    local converted = if std.isArray(value) then value else [value];
    {
      notification: value,
    }
  ),
  with_notification_mixin(value):: (
    local converted = if std.isArray(value) then value else [value];
    {
      notification+: converted,
    }
  ),
}
