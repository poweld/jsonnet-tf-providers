{
  local block = self,
  new(monitor_type, name):: (
    {}
    + block.with_monitor_type(monitor_type)
    + block.with_name(name)
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
  with_monitor_dimension(value):: (
    local converted = value;
    assert std.isString(converted) : '"monitor_dimension" expected to be of type "string"';
    {
      monitor_dimension: converted,
    }
  ),
  with_monitor_specification(value):: (
    local converted = value;
    assert std.isString(converted) : '"monitor_specification" expected to be of type "string"';
    {
      monitor_specification: converted,
    }
  ),
  with_monitor_type(value):: (
    local converted = value;
    assert std.isString(converted) : '"monitor_type" expected to be of type "string"';
    {
      monitor_type: converted,
    }
  ),
  with_name(value):: (
    local converted = value;
    assert std.isString(converted) : '"name" expected to be of type "string"';
    {
      name: converted,
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
}
