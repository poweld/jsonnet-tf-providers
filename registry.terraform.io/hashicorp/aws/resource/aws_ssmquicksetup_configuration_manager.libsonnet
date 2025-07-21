{
  local block = self,
  new(name):: (
    {}
    + block.with_name(name)
  ),
  with_description(value):: (
    local converted = value;
    assert std.isString(converted) : '"description" expected to be of type "string"';
    {
      description: converted,
    }
  ),
  with_manager_arn(value):: (
    local converted = value;
    assert std.isString(converted) : '"manager_arn" expected to be of type "string"';
    {
      manager_arn: converted,
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
  with_status_summaries(value):: (
    local converted = if std.isArray(value) then value else [value];
    assert std.isArray(converted) : '"status_summaries" expected to be of type "list"';
    {
      status_summaries: converted,
    }
  ),
  with_status_summaries_mixin(value):: (
    local converted = if std.isArray(value) then value else [value];
    assert std.isArray(converted) : '"status_summaries" expected to be of type "list"';
    {
      status_summaries+: converted,
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
  configuration_definition:: {
    local block = self,
    new(parameters, type):: (
      {}
      + block.with_parameters(parameters)
      + block.with_type(type)
    ),
    with_id(value):: (
      local converted = value;
      assert std.isString(converted) : '"id" expected to be of type "string"';
      {
        id: converted,
      }
    ),
    with_local_deployment_administration_role_arn(value):: (
      local converted = value;
      assert std.isString(converted) : '"local_deployment_administration_role_arn" expected to be of type "string"';
      {
        local_deployment_administration_role_arn: converted,
      }
    ),
    with_local_deployment_execution_role_name(value):: (
      local converted = value;
      assert std.isString(converted) : '"local_deployment_execution_role_name" expected to be of type "string"';
      {
        local_deployment_execution_role_name: converted,
      }
    ),
    with_parameters(value):: (
      local converted = value;
      assert std.isObject(converted) : '"parameters" expected to be of type "map"';
      {
        parameters: converted,
      }
    ),
    with_type(value):: (
      local converted = value;
      assert std.isString(converted) : '"type" expected to be of type "string"';
      {
        type: converted,
      }
    ),
    with_type_version(value):: (
      local converted = value;
      assert std.isString(converted) : '"type_version" expected to be of type "string"';
      {
        type_version: converted,
      }
    ),
  },
  timeouts:: {
    local block = self,
    new():: (
      {}
    ),
    '#with_create':: "A string that can be [parsed as a duration](https://pkg.go.dev/time#ParseDuration) consisting of numbers and unit suffixes, such as '30s' or '2h45m'. Valid time units are 's' (seconds), 'm' (minutes), 'h' (hours).",
    with_create(value):: (
      local converted = value;
      assert std.isString(converted) : '"create" expected to be of type "string"';
      {
        create: converted,
      }
    ),
    '#with_delete':: "A string that can be [parsed as a duration](https://pkg.go.dev/time#ParseDuration) consisting of numbers and unit suffixes, such as '30s' or '2h45m'. Valid time units are 's' (seconds), 'm' (minutes), 'h' (hours). Setting a timeout for a Delete operation is only applicable if changes are saved into state before the destroy operation occurs.",
    with_delete(value):: (
      local converted = value;
      assert std.isString(converted) : '"delete" expected to be of type "string"';
      {
        delete: converted,
      }
    ),
    '#with_update':: "A string that can be [parsed as a duration](https://pkg.go.dev/time#ParseDuration) consisting of numbers and unit suffixes, such as '30s' or '2h45m'. Valid time units are 's' (seconds), 'm' (minutes), 'h' (hours).",
    with_update(value):: (
      local converted = value;
      assert std.isString(converted) : '"update" expected to be of type "string"';
      {
        update: converted,
      }
    ),
  },
  with_configuration_definition(value):: (
    local converted = if std.isArray(value) then value else [value];
    {
      configuration_definition: value,
    }
  ),
  with_timeouts(value):: (
    local converted = value;
    {
      timeouts: value,
    }
  ),
  with_configuration_definition_mixin(value):: (
    local converted = if std.isArray(value) then value else [value];
    {
      configuration_definition+: converted,
    }
  ),
}
