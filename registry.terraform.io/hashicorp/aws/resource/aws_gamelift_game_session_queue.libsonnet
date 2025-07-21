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
  with_custom_event_data(value):: (
    local converted = value;
    assert std.isString(converted) : '"custom_event_data" expected to be of type "string"';
    {
      custom_event_data: converted,
    }
  ),
  with_destinations(value):: (
    local converted = if std.isArray(value) then value else [value];
    assert std.isArray(converted) : '"destinations" expected to be of type "list"';
    {
      destinations: converted,
    }
  ),
  with_destinations_mixin(value):: (
    local converted = if std.isArray(value) then value else [value];
    assert std.isArray(converted) : '"destinations" expected to be of type "list"';
    {
      destinations+: converted,
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
  with_notification_target(value):: (
    local converted = value;
    assert std.isString(converted) : '"notification_target" expected to be of type "string"';
    {
      notification_target: converted,
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
  with_timeout_in_seconds(value):: (
    local converted = value;
    assert std.isNumber(converted) : '"timeout_in_seconds" expected to be of type "number"';
    {
      timeout_in_seconds: converted,
    }
  ),
  player_latency_policy:: {
    local block = self,
    new(maximum_individual_player_latency_milliseconds):: (
      {}
      + block.with_maximum_individual_player_latency_milliseconds(maximum_individual_player_latency_milliseconds)
    ),
    with_maximum_individual_player_latency_milliseconds(value):: (
      local converted = value;
      assert std.isNumber(converted) : '"maximum_individual_player_latency_milliseconds" expected to be of type "number"';
      {
        maximum_individual_player_latency_milliseconds: converted,
      }
    ),
    with_policy_duration_seconds(value):: (
      local converted = value;
      assert std.isNumber(converted) : '"policy_duration_seconds" expected to be of type "number"';
      {
        policy_duration_seconds: converted,
      }
    ),
  },
  with_player_latency_policy(value):: (
    local converted = if std.isArray(value) then value else [value];
    {
      player_latency_policy: value,
    }
  ),
  with_player_latency_policy_mixin(value):: (
    local converted = if std.isArray(value) then value else [value];
    {
      player_latency_policy+: converted,
    }
  ),
}
