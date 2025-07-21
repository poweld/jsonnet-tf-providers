{
  local block = self,
  new(compatibility, data_format, schema_definition, schema_name):: (
    {}
    + block.with_compatibility(compatibility)
    + block.with_data_format(data_format)
    + block.with_schema_definition(schema_definition)
    + block.with_schema_name(schema_name)
  ),
  with_arn(value):: (
    local converted = value;
    assert std.isString(converted) : '"arn" expected to be of type "string"';
    {
      arn: converted,
    }
  ),
  with_compatibility(value):: (
    local converted = value;
    assert std.isString(converted) : '"compatibility" expected to be of type "string"';
    {
      compatibility: converted,
    }
  ),
  with_data_format(value):: (
    local converted = value;
    assert std.isString(converted) : '"data_format" expected to be of type "string"';
    {
      data_format: converted,
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
  with_latest_schema_version(value):: (
    local converted = value;
    assert std.isNumber(converted) : '"latest_schema_version" expected to be of type "number"';
    {
      latest_schema_version: converted,
    }
  ),
  with_next_schema_version(value):: (
    local converted = value;
    assert std.isNumber(converted) : '"next_schema_version" expected to be of type "number"';
    {
      next_schema_version: converted,
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
  with_registry_arn(value):: (
    local converted = value;
    assert std.isString(converted) : '"registry_arn" expected to be of type "string"';
    {
      registry_arn: converted,
    }
  ),
  with_registry_name(value):: (
    local converted = value;
    assert std.isString(converted) : '"registry_name" expected to be of type "string"';
    {
      registry_name: converted,
    }
  ),
  with_schema_checkpoint(value):: (
    local converted = value;
    assert std.isNumber(converted) : '"schema_checkpoint" expected to be of type "number"';
    {
      schema_checkpoint: converted,
    }
  ),
  with_schema_definition(value):: (
    local converted = value;
    assert std.isString(converted) : '"schema_definition" expected to be of type "string"';
    {
      schema_definition: converted,
    }
  ),
  with_schema_name(value):: (
    local converted = value;
    assert std.isString(converted) : '"schema_name" expected to be of type "string"';
    {
      schema_name: converted,
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
