{
  local block = self,
  new(id):: (
    {}
    + block.with_id(id)
  ),
  with_arn(value):: (
    local converted = value;
    assert std.isString(converted) : '"arn" expected to be of type "string"';
    {
      arn: converted,
    }
  ),
  with_athena_properties(value):: (
    local converted = value;
    assert std.isObject(converted) : '"athena_properties" expected to be of type "map"';
    {
      athena_properties: converted,
    }
  ),
  with_catalog_id(value):: (
    local converted = value;
    assert std.isString(converted) : '"catalog_id" expected to be of type "string"';
    {
      catalog_id: converted,
    }
  ),
  with_connection_properties(value):: (
    local converted = value;
    assert std.isObject(converted) : '"connection_properties" expected to be of type "map"';
    {
      connection_properties: converted,
    }
  ),
  with_connection_type(value):: (
    local converted = value;
    assert std.isString(converted) : '"connection_type" expected to be of type "string"';
    {
      connection_type: converted,
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
  with_match_criteria(value):: (
    local converted = if std.isArray(value) then value else [value];
    assert std.isArray(converted) : '"match_criteria" expected to be of type "list"';
    {
      match_criteria: converted,
    }
  ),
  with_match_criteria_mixin(value):: (
    local converted = if std.isArray(value) then value else [value];
    assert std.isArray(converted) : '"match_criteria" expected to be of type "list"';
    {
      match_criteria+: converted,
    }
  ),
  with_name(value):: (
    local converted = value;
    assert std.isString(converted) : '"name" expected to be of type "string"';
    {
      name: converted,
    }
  ),
  with_physical_connection_requirements(value):: (
    local converted = if std.isArray(value) then value else [value];
    assert std.isArray(converted) : '"physical_connection_requirements" expected to be of type "list"';
    {
      physical_connection_requirements: converted,
    }
  ),
  with_physical_connection_requirements_mixin(value):: (
    local converted = if std.isArray(value) then value else [value];
    assert std.isArray(converted) : '"physical_connection_requirements" expected to be of type "list"';
    {
      physical_connection_requirements+: converted,
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
}
