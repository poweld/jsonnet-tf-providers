{
  local block = self,
  new(data_source, index_name):: (
    {}
    + block.with_data_source(data_source)
    + block.with_index_name(index_name)
  ),
  with_create_time(value):: (
    local converted = value;
    assert std.isString(converted) : '"create_time" expected to be of type "string"';
    {
      create_time: converted,
    }
  ),
  with_data_source(value):: (
    local converted = value;
    assert std.isString(converted) : '"data_source" expected to be of type "string"';
    {
      data_source: converted,
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
  with_index_arn(value):: (
    local converted = value;
    assert std.isString(converted) : '"index_arn" expected to be of type "string"';
    {
      index_arn: converted,
    }
  ),
  with_index_name(value):: (
    local converted = value;
    assert std.isString(converted) : '"index_name" expected to be of type "string"';
    {
      index_name: converted,
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
  with_update_time(value):: (
    local converted = value;
    assert std.isString(converted) : '"update_time" expected to be of type "string"';
    {
      update_time: converted,
    }
  ),
  data_source_configuration:: {
    local block = self,
    new():: (
      {}
    ),
    with_intended_use(value):: (
      local converted = value;
      assert std.isString(converted) : '"intended_use" expected to be of type "string"';
      {
        intended_use: converted,
      }
    ),
  },
  with_data_source_configuration(value):: (
    local converted = if std.isArray(value) then value else [value];
    {
      data_source_configuration: value,
    }
  ),
  with_data_source_configuration_mixin(value):: (
    local converted = if std.isArray(value) then value else [value];
    {
      data_source_configuration+: converted,
    }
  ),
}
