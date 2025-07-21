{
  local block = self,
  new(health_check_arn, shield_protection_id):: (
    {}
    + block.with_health_check_arn(health_check_arn)
    + block.with_shield_protection_id(shield_protection_id)
  ),
  with_health_check_arn(value):: (
    local converted = value;
    assert std.isString(converted) : '"health_check_arn" expected to be of type "string"';
    {
      health_check_arn: converted,
    }
  ),
  with_id(value):: (
    local converted = value;
    assert std.isString(converted) : '"id" expected to be of type "string"';
    {
      id: converted,
    }
  ),
  with_shield_protection_id(value):: (
    local converted = value;
    assert std.isString(converted) : '"shield_protection_id" expected to be of type "string"';
    {
      shield_protection_id: converted,
    }
  ),
}
