{
  local block = self,
  new(name, type):: (
    {}
    + block.with_name(name)
    + block.with_type(type)
  ),
  with_allowed_pattern(value):: (
    local converted = value;
    assert std.isString(converted) : '"allowed_pattern" expected to be of type "string"';
    {
      allowed_pattern: converted,
    }
  ),
  with_arn(value):: (
    local converted = value;
    assert std.isString(converted) : '"arn" expected to be of type "string"';
    {
      arn: converted,
    }
  ),
  with_data_type(value):: (
    local converted = value;
    assert std.isString(converted) : '"data_type" expected to be of type "string"';
    {
      data_type: converted,
    }
  ),
  with_description(value):: (
    local converted = value;
    assert std.isString(converted) : '"description" expected to be of type "string"';
    {
      description: converted,
    }
  ),
  with_has_value_wo(value):: (
    local converted = value;
    assert std.isBoolean(converted) : '"has_value_wo" expected to be of type "bool"';
    {
      has_value_wo: converted,
    }
  ),
  with_id(value):: (
    local converted = value;
    assert std.isString(converted) : '"id" expected to be of type "string"';
    {
      id: converted,
    }
  ),
  with_insecure_value(value):: (
    local converted = value;
    assert std.isString(converted) : '"insecure_value" expected to be of type "string"';
    {
      insecure_value: converted,
    }
  ),
  with_key_id(value):: (
    local converted = value;
    assert std.isString(converted) : '"key_id" expected to be of type "string"';
    {
      key_id: converted,
    }
  ),
  with_name(value):: (
    local converted = value;
    assert std.isString(converted) : '"name" expected to be of type "string"';
    {
      name: converted,
    }
  ),
  with_overwrite(value):: (
    local converted = value;
    assert std.isBoolean(converted) : '"overwrite" expected to be of type "bool"';
    {
      overwrite: converted,
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
  with_tier(value):: (
    local converted = value;
    assert std.isString(converted) : '"tier" expected to be of type "string"';
    {
      tier: converted,
    }
  ),
  with_type(value):: (
    local converted = value;
    assert std.isString(converted) : '"type" expected to be of type "string"';
    {
      type: converted,
    }
  ),
  with_value(value):: (
    local converted = value;
    assert std.isString(converted) : '"value" expected to be of type "string"';
    {
      value: converted,
    }
  ),
  with_value_wo(value):: (
    local converted = value;
    assert std.isString(converted) : '"value_wo" expected to be of type "string"';
    {
      value_wo: converted,
    }
  ),
  with_value_wo_version(value):: (
    local converted = value;
    assert std.isNumber(converted) : '"value_wo_version" expected to be of type "number"';
    {
      value_wo_version: converted,
    }
  ),
  with_version(value):: (
    local converted = value;
    assert std.isNumber(converted) : '"version" expected to be of type "number"';
    {
      version: converted,
    }
  ),
}
