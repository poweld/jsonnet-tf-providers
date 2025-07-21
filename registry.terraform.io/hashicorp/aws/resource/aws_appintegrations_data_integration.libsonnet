{
  local block = self,
  new(kms_key, name, source_uri):: (
    {}
    + block.with_kms_key(kms_key)
    + block.with_name(name)
    + block.with_source_uri(source_uri)
  ),
  with_arn(value):: (
    local converted = value;
    assert std.isString(converted) : '"arn" expected to be of type "string"';
    {
      arn: converted,
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
  with_kms_key(value):: (
    local converted = value;
    assert std.isString(converted) : '"kms_key" expected to be of type "string"';
    {
      kms_key: converted,
    }
  ),
  with_name(value):: (
    local converted = value;
    assert std.isString(converted) : '"name" expected to be of type "string"';
    {
      name: converted,
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
  with_source_uri(value):: (
    local converted = value;
    assert std.isString(converted) : '"source_uri" expected to be of type "string"';
    {
      source_uri: converted,
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
  schedule_config:: {
    local block = self,
    new(first_execution_from, object, schedule_expression):: (
      {}
      + block.with_first_execution_from(first_execution_from)
      + block.with_object(object)
      + block.with_schedule_expression(schedule_expression)
    ),
    with_first_execution_from(value):: (
      local converted = value;
      assert std.isString(converted) : '"first_execution_from" expected to be of type "string"';
      {
        first_execution_from: converted,
      }
    ),
    with_object(value):: (
      local converted = value;
      assert std.isString(converted) : '"object" expected to be of type "string"';
      {
        object: converted,
      }
    ),
    with_schedule_expression(value):: (
      local converted = value;
      assert std.isString(converted) : '"schedule_expression" expected to be of type "string"';
      {
        schedule_expression: converted,
      }
    ),
  },
  with_schedule_config(value):: (
    local converted = if std.isArray(value) then value else [value];
    {
      schedule_config: value,
    }
  ),
  with_schedule_config_mixin(value):: (
    local converted = if std.isArray(value) then value else [value];
    {
      schedule_config+: converted,
    }
  ),
}
