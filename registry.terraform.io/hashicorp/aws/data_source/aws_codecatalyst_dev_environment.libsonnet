{
  local block = self,
  new(env_id, project_name, space_name):: (
    {}
    + block.with_env_id(env_id)
    + block.with_project_name(project_name)
    + block.with_space_name(space_name)
  ),
  with_alias(value):: (
    local converted = value;
    assert std.isString(converted) : '"alias" expected to be of type "string"';
    {
      alias: converted,
    }
  ),
  with_creator_id(value):: (
    local converted = value;
    assert std.isString(converted) : '"creator_id" expected to be of type "string"';
    {
      creator_id: converted,
    }
  ),
  with_env_id(value):: (
    local converted = value;
    assert std.isString(converted) : '"env_id" expected to be of type "string"';
    {
      env_id: converted,
    }
  ),
  with_id(value):: (
    local converted = value;
    assert std.isString(converted) : '"id" expected to be of type "string"';
    {
      id: converted,
    }
  ),
  with_ides(value):: (
    local converted = if std.isArray(value) then value else [value];
    assert std.isArray(converted) : '"ides" expected to be of type "list"';
    {
      ides: converted,
    }
  ),
  with_ides_mixin(value):: (
    local converted = if std.isArray(value) then value else [value];
    assert std.isArray(converted) : '"ides" expected to be of type "list"';
    {
      ides+: converted,
    }
  ),
  with_inactivity_timeout_minutes(value):: (
    local converted = value;
    assert std.isNumber(converted) : '"inactivity_timeout_minutes" expected to be of type "number"';
    {
      inactivity_timeout_minutes: converted,
    }
  ),
  with_instance_type(value):: (
    local converted = value;
    assert std.isString(converted) : '"instance_type" expected to be of type "string"';
    {
      instance_type: converted,
    }
  ),
  with_last_updated_time(value):: (
    local converted = value;
    assert std.isString(converted) : '"last_updated_time" expected to be of type "string"';
    {
      last_updated_time: converted,
    }
  ),
  with_persistent_storage(value):: (
    local converted = if std.isArray(value) then value else [value];
    assert std.isArray(converted) : '"persistent_storage" expected to be of type "list"';
    {
      persistent_storage: converted,
    }
  ),
  with_persistent_storage_mixin(value):: (
    local converted = if std.isArray(value) then value else [value];
    assert std.isArray(converted) : '"persistent_storage" expected to be of type "list"';
    {
      persistent_storage+: converted,
    }
  ),
  with_project_name(value):: (
    local converted = value;
    assert std.isString(converted) : '"project_name" expected to be of type "string"';
    {
      project_name: converted,
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
  with_space_name(value):: (
    local converted = value;
    assert std.isString(converted) : '"space_name" expected to be of type "string"';
    {
      space_name: converted,
    }
  ),
  with_status(value):: (
    local converted = value;
    assert std.isString(converted) : '"status" expected to be of type "string"';
    {
      status: converted,
    }
  ),
  with_status_reason(value):: (
    local converted = value;
    assert std.isString(converted) : '"status_reason" expected to be of type "string"';
    {
      status_reason: converted,
    }
  ),
  with_tags(value):: (
    local converted = value;
    assert std.isObject(converted) : '"tags" expected to be of type "map"';
    {
      tags: converted,
    }
  ),
  repositories:: {
    local block = self,
    new():: (
      {}
    ),
    with_branch_name(value):: (
      local converted = value;
      assert std.isString(converted) : '"branch_name" expected to be of type "string"';
      {
        branch_name: converted,
      }
    ),
    with_repository_name(value):: (
      local converted = value;
      assert std.isString(converted) : '"repository_name" expected to be of type "string"';
      {
        repository_name: converted,
      }
    ),
  },
  with_repositories(value):: (
    local converted = if std.isArray(value) then value else [value];
    {
      repositories: value,
    }
  ),
  with_repositories_mixin(value):: (
    local converted = if std.isArray(value) then value else [value];
    {
      repositories+: converted,
    }
  ),
}
