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
  with_created_time(value):: (
    local converted = value;
    assert std.isString(converted) : '"created_time" expected to be of type "string"';
    {
      created_time: converted,
    }
  ),
  with_id(value):: (
    local converted = value;
    assert std.isString(converted) : '"id" expected to be of type "string"';
    {
      id: converted,
    }
  ),
  with_last_modified_time(value):: (
    local converted = value;
    assert std.isString(converted) : '"last_modified_time" expected to be of type "string"';
    {
      last_modified_time: converted,
    }
  ),
  with_name(value):: (
    local converted = value;
    assert std.isString(converted) : '"name" expected to be of type "string"';
    {
      name: converted,
    }
  ),
  with_principals(value):: (
    local converted = if std.isArray(value) then value else [value];
    assert (std.isArray(converted) && std.length(std.set(converted)) == std.length(converted)) : '"principals" expected to be of type "set"';
    {
      principals: converted,
    }
  ),
  with_principals_mixin(value):: (
    local converted = if std.isArray(value) then value else [value];
    assert (std.isArray(converted) && std.length(std.set(converted)) == std.length(converted)) : '"principals" expected to be of type "set"';
    {
      principals+: converted,
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
  resource:: {
    local block = self,
    new():: (
      {}
    ),
    with_cidr_block(value):: (
      local converted = value;
      assert std.isString(converted) : '"cidr_block" expected to be of type "string"';
      {
        cidr_block: converted,
      }
    ),
    with_endpoint_id(value):: (
      local converted = value;
      assert std.isString(converted) : '"endpoint_id" expected to be of type "string"';
      {
        endpoint_id: converted,
      }
    ),
    with_region(value):: (
      local converted = value;
      assert std.isString(converted) : '"region" expected to be of type "string"';
      {
        region: converted,
      }
    ),
  },
  with_resource(value):: (
    local converted = if std.isArray(value) then value else [value];
    {
      resource: value,
    }
  ),
  with_resource_mixin(value):: (
    local converted = if std.isArray(value) then value else [value];
    {
      resource+: converted,
    }
  ),
}
