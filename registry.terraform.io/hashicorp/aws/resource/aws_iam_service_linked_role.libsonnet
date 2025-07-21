{
  local block = self,
  new(aws_service_name):: (
    {}
    + block.with_aws_service_name(aws_service_name)
  ),
  with_arn(value):: (
    local converted = value;
    assert std.isString(converted) : '"arn" expected to be of type "string"';
    {
      arn: converted,
    }
  ),
  with_aws_service_name(value):: (
    local converted = value;
    assert std.isString(converted) : '"aws_service_name" expected to be of type "string"';
    {
      aws_service_name: converted,
    }
  ),
  with_create_date(value):: (
    local converted = value;
    assert std.isString(converted) : '"create_date" expected to be of type "string"';
    {
      create_date: converted,
    }
  ),
  with_custom_suffix(value):: (
    local converted = value;
    assert std.isString(converted) : '"custom_suffix" expected to be of type "string"';
    {
      custom_suffix: converted,
    }
  ),
  with_description(value):: (
    local converted = value;
    assert std.isString(converted) : '"description" expected to be of type "string"';
    {
      description: converted,
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
  with_path(value):: (
    local converted = value;
    assert std.isString(converted) : '"path" expected to be of type "string"';
    {
      path: converted,
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
  with_unique_id(value):: (
    local converted = value;
    assert std.isString(converted) : '"unique_id" expected to be of type "string"';
    {
      unique_id: converted,
    }
  ),
}
