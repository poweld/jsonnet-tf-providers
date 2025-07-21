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
  physical_connection_requirements:: {
    local block = self,
    new():: (
      {}
    ),
    with_availability_zone(value):: (
      local converted = value;
      assert std.isString(converted) : '"availability_zone" expected to be of type "string"';
      {
        availability_zone: converted,
      }
    ),
    with_security_group_id_list(value):: (
      local converted = if std.isArray(value) then value else [value];
      assert (std.isArray(converted) && std.length(std.set(converted)) == std.length(converted)) : '"security_group_id_list" expected to be of type "set"';
      {
        security_group_id_list: converted,
      }
    ),
    with_security_group_id_list_mixin(value):: (
      local converted = if std.isArray(value) then value else [value];
      assert (std.isArray(converted) && std.length(std.set(converted)) == std.length(converted)) : '"security_group_id_list" expected to be of type "set"';
      {
        security_group_id_list+: converted,
      }
    ),
    with_subnet_id(value):: (
      local converted = value;
      assert std.isString(converted) : '"subnet_id" expected to be of type "string"';
      {
        subnet_id: converted,
      }
    ),
  },
  with_physical_connection_requirements(value):: (
    local converted = if std.isArray(value) then value else [value];
    {
      physical_connection_requirements: value,
    }
  ),
  with_physical_connection_requirements_mixin(value):: (
    local converted = if std.isArray(value) then value else [value];
    {
      physical_connection_requirements+: converted,
    }
  ),
}
