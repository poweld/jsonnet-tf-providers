{
  local block = self,
  new(map_name):: (
    {}
    + block.with_map_name(map_name)
  ),
  with_configuration(value):: (
    local converted = if std.isArray(value) then value else [value];
    assert std.isArray(converted) : '"configuration" expected to be of type "list"';
    {
      configuration: converted,
    }
  ),
  with_configuration_mixin(value):: (
    local converted = if std.isArray(value) then value else [value];
    assert std.isArray(converted) : '"configuration" expected to be of type "list"';
    {
      configuration+: converted,
    }
  ),
  with_create_time(value):: (
    local converted = value;
    assert std.isString(converted) : '"create_time" expected to be of type "string"';
    {
      create_time: converted,
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
  with_map_arn(value):: (
    local converted = value;
    assert std.isString(converted) : '"map_arn" expected to be of type "string"';
    {
      map_arn: converted,
    }
  ),
  with_map_name(value):: (
    local converted = value;
    assert std.isString(converted) : '"map_name" expected to be of type "string"';
    {
      map_name: converted,
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
  with_update_time(value):: (
    local converted = value;
    assert std.isString(converted) : '"update_time" expected to be of type "string"';
    {
      update_time: converted,
    }
  ),
}
