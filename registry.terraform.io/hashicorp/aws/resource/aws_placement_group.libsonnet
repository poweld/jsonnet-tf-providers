{
  local block = self,
  new(name, strategy):: (
    {}
    + block.with_name(name)
    + block.with_strategy(strategy)
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
  with_name(value):: (
    local converted = value;
    assert std.isString(converted) : '"name" expected to be of type "string"';
    {
      name: converted,
    }
  ),
  with_partition_count(value):: (
    local converted = value;
    assert std.isNumber(converted) : '"partition_count" expected to be of type "number"';
    {
      partition_count: converted,
    }
  ),
  with_placement_group_id(value):: (
    local converted = value;
    assert std.isString(converted) : '"placement_group_id" expected to be of type "string"';
    {
      placement_group_id: converted,
    }
  ),
  '#with_region':: 'Region where this resource will be [managed](https://docs.aws.amazon.com/general/latest/gr/rande.html#regional-endpoints). Defaults to the Region set in the [provider configuration](https://registry.terraform.io/providers/hashicorp/aws/latest/docs#aws-configuration-reference).',
  with_region(value):: (
    local converted = value;
    assert std.isString(converted) : '"region" expected to be of type "string"';
    {
      region: converted,
    }
  ),
  with_spread_level(value):: (
    local converted = value;
    assert std.isString(converted) : '"spread_level" expected to be of type "string"';
    {
      spread_level: converted,
    }
  ),
  with_strategy(value):: (
    local converted = value;
    assert std.isString(converted) : '"strategy" expected to be of type "string"';
    {
      strategy: converted,
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
