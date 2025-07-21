{
  local block = self,
  new(readiness_check_name, resource_set_name):: (
    {}
    + block.with_readiness_check_name(readiness_check_name)
    + block.with_resource_set_name(resource_set_name)
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
  with_readiness_check_name(value):: (
    local converted = value;
    assert std.isString(converted) : '"readiness_check_name" expected to be of type "string"';
    {
      readiness_check_name: converted,
    }
  ),
  with_resource_set_name(value):: (
    local converted = value;
    assert std.isString(converted) : '"resource_set_name" expected to be of type "string"';
    {
      resource_set_name: converted,
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
  timeouts:: {
    local block = self,
    new():: (
      {}
    ),
    with_delete(value):: (
      local converted = value;
      assert std.isString(converted) : '"delete" expected to be of type "string"';
      {
        delete: converted,
      }
    ),
  },
  with_timeouts(value):: (
    local converted = value;
    {
      timeouts: value,
    }
  ),
}
