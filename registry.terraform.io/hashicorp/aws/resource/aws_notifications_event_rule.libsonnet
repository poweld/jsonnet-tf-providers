{
  local block = self,
  new(event_type, notification_configuration_arn, regions, source):: (
    {}
    + block.with_event_type(event_type)
    + block.with_notification_configuration_arn(notification_configuration_arn)
    + block.with_regions(regions)
    + block.with_source(source)
  ),
  with_arn(value):: (
    local converted = value;
    assert std.isString(converted) : '"arn" expected to be of type "string"';
    {
      arn: converted,
    }
  ),
  with_event_pattern(value):: (
    local converted = value;
    assert std.isString(converted) : '"event_pattern" expected to be of type "string"';
    {
      event_pattern: converted,
    }
  ),
  with_event_type(value):: (
    local converted = value;
    assert std.isString(converted) : '"event_type" expected to be of type "string"';
    {
      event_type: converted,
    }
  ),
  with_notification_configuration_arn(value):: (
    local converted = value;
    assert std.isString(converted) : '"notification_configuration_arn" expected to be of type "string"';
    {
      notification_configuration_arn: converted,
    }
  ),
  with_regions(value):: (
    local converted = if std.isArray(value) then value else [value];
    assert (std.isArray(converted) && std.length(std.set(converted)) == std.length(converted)) : '"regions" expected to be of type "set"';
    {
      regions: converted,
    }
  ),
  with_regions_mixin(value):: (
    local converted = if std.isArray(value) then value else [value];
    assert (std.isArray(converted) && std.length(std.set(converted)) == std.length(converted)) : '"regions" expected to be of type "set"';
    {
      regions+: converted,
    }
  ),
  with_source(value):: (
    local converted = value;
    assert std.isString(converted) : '"source" expected to be of type "string"';
    {
      source: converted,
    }
  ),
}
