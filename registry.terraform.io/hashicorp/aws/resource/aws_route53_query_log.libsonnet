{
  local block = self,
  new(cloudwatch_log_group_arn, zone_id):: (
    {}
    + block.with_cloudwatch_log_group_arn(cloudwatch_log_group_arn)
    + block.with_zone_id(zone_id)
  ),
  with_arn(value):: (
    local converted = value;
    assert std.isString(converted) : '"arn" expected to be of type "string"';
    {
      arn: converted,
    }
  ),
  with_cloudwatch_log_group_arn(value):: (
    local converted = value;
    assert std.isString(converted) : '"cloudwatch_log_group_arn" expected to be of type "string"';
    {
      cloudwatch_log_group_arn: converted,
    }
  ),
  with_id(value):: (
    local converted = value;
    assert std.isString(converted) : '"id" expected to be of type "string"';
    {
      id: converted,
    }
  ),
  with_zone_id(value):: (
    local converted = value;
    assert std.isString(converted) : '"zone_id" expected to be of type "string"';
    {
      zone_id: converted,
    }
  ),
}
