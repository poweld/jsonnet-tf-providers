{
  local block = self,
  new(hosted_zone_id, name, traffic_policy_id, traffic_policy_version, ttl):: (
    {}
    + block.with_hosted_zone_id(hosted_zone_id)
    + block.with_name(name)
    + block.with_traffic_policy_id(traffic_policy_id)
    + block.with_traffic_policy_version(traffic_policy_version)
    + block.with_ttl(ttl)
  ),
  with_arn(value):: (
    local converted = value;
    assert std.isString(converted) : '"arn" expected to be of type "string"';
    {
      arn: converted,
    }
  ),
  with_hosted_zone_id(value):: (
    local converted = value;
    assert std.isString(converted) : '"hosted_zone_id" expected to be of type "string"';
    {
      hosted_zone_id: converted,
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
  with_traffic_policy_id(value):: (
    local converted = value;
    assert std.isString(converted) : '"traffic_policy_id" expected to be of type "string"';
    {
      traffic_policy_id: converted,
    }
  ),
  with_traffic_policy_version(value):: (
    local converted = value;
    assert std.isNumber(converted) : '"traffic_policy_version" expected to be of type "number"';
    {
      traffic_policy_version: converted,
    }
  ),
  with_ttl(value):: (
    local converted = value;
    assert std.isNumber(converted) : '"ttl" expected to be of type "number"';
    {
      ttl: converted,
    }
  ),
}
