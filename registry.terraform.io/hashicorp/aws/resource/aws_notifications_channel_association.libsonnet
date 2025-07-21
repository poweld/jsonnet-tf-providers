{
  local block = self,
  new(arn, notification_configuration_arn):: (
    {}
    + block.with_arn(arn)
    + block.with_notification_configuration_arn(notification_configuration_arn)
  ),
  with_arn(value):: (
    local converted = value;
    assert std.isString(converted) : '"arn" expected to be of type "string"';
    {
      arn: converted,
    }
  ),
  with_notification_configuration_arn(value):: (
    local converted = value;
    assert std.isString(converted) : '"notification_configuration_arn" expected to be of type "string"';
    {
      notification_configuration_arn: converted,
    }
  ),
}
