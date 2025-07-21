{
  local block = self,
  new(cluster_arn, name):: (
    {}
    + block.with_cluster_arn(cluster_arn)
    + block.with_name(name)
  ),
  with_arn(value):: (
    local converted = value;
    assert std.isString(converted) : '"arn" expected to be of type "string"';
    {
      arn: converted,
    }
  ),
  with_cluster_arn(value):: (
    local converted = value;
    assert std.isString(converted) : '"cluster_arn" expected to be of type "string"';
    {
      cluster_arn: converted,
    }
  ),
  with_default_control_panel(value):: (
    local converted = value;
    assert std.isBoolean(converted) : '"default_control_panel" expected to be of type "bool"';
    {
      default_control_panel: converted,
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
  with_routing_control_count(value):: (
    local converted = value;
    assert std.isNumber(converted) : '"routing_control_count" expected to be of type "number"';
    {
      routing_control_count: converted,
    }
  ),
  with_status(value):: (
    local converted = value;
    assert std.isString(converted) : '"status" expected to be of type "string"';
    {
      status: converted,
    }
  ),
}
