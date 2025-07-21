{
  local block = self,
  new(data_retention, voice_connector_id):: (
    {}
    + block.with_data_retention(data_retention)
    + block.with_voice_connector_id(voice_connector_id)
  ),
  with_data_retention(value):: (
    local converted = value;
    assert std.isNumber(converted) : '"data_retention" expected to be of type "number"';
    {
      data_retention: converted,
    }
  ),
  with_disabled(value):: (
    local converted = value;
    assert std.isBoolean(converted) : '"disabled" expected to be of type "bool"';
    {
      disabled: converted,
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
  with_streaming_notification_targets(value):: (
    local converted = if std.isArray(value) then value else [value];
    assert (std.isArray(converted) && std.length(std.set(converted)) == std.length(converted)) : '"streaming_notification_targets" expected to be of type "set"';
    {
      streaming_notification_targets: converted,
    }
  ),
  with_streaming_notification_targets_mixin(value):: (
    local converted = if std.isArray(value) then value else [value];
    assert (std.isArray(converted) && std.length(std.set(converted)) == std.length(converted)) : '"streaming_notification_targets" expected to be of type "set"';
    {
      streaming_notification_targets+: converted,
    }
  ),
  with_voice_connector_id(value):: (
    local converted = value;
    assert std.isString(converted) : '"voice_connector_id" expected to be of type "string"';
    {
      voice_connector_id: converted,
    }
  ),
  media_insights_configuration:: {
    local block = self,
    new():: (
      {}
    ),
    with_configuration_arn(value):: (
      local converted = value;
      assert std.isString(converted) : '"configuration_arn" expected to be of type "string"';
      {
        configuration_arn: converted,
      }
    ),
    with_disabled(value):: (
      local converted = value;
      assert std.isBoolean(converted) : '"disabled" expected to be of type "bool"';
      {
        disabled: converted,
      }
    ),
  },
  with_media_insights_configuration(value):: (
    local converted = if std.isArray(value) then value else [value];
    {
      media_insights_configuration: value,
    }
  ),
  with_media_insights_configuration_mixin(value):: (
    local converted = if std.isArray(value) then value else [value];
    {
      media_insights_configuration+: converted,
    }
  ),
}
