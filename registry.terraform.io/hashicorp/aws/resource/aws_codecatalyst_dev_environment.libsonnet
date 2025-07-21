{
  local block = self,
  new(instance_type, project_name, space_name):: (
    {}
    + block.with_instance_type(instance_type)
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
  with_id(value):: (
    local converted = value;
    assert std.isString(converted) : '"id" expected to be of type "string"';
    {
      id: converted,
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
  ides:: {
    local block = self,
    new():: (
      {}
    ),
    with_name(value):: (
      local converted = value;
      assert std.isString(converted) : '"name" expected to be of type "string"';
      {
        name: converted,
      }
    ),
    with_runtime(value):: (
      local converted = value;
      assert std.isString(converted) : '"runtime" expected to be of type "string"';
      {
        runtime: converted,
      }
    ),
  },
  persistent_storage:: {
    local block = self,
    new(size):: (
      {}
      + block.with_size(size)
    ),
    with_size(value):: (
      local converted = value;
      assert std.isNumber(converted) : '"size" expected to be of type "number"';
      {
        size: converted,
      }
    ),
  },
  repositories:: {
    local block = self,
    new(repository_name):: (
      {}
      + block.with_repository_name(repository_name)
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
  timeouts:: {
    local block = self,
    new():: (
      {}
    ),
    with_create(value):: (
      local converted = value;
      assert std.isString(converted) : '"create" expected to be of type "string"';
      {
        create: converted,
      }
    ),
    with_delete(value):: (
      local converted = value;
      assert std.isString(converted) : '"delete" expected to be of type "string"';
      {
        delete: converted,
      }
    ),
    with_update(value):: (
      local converted = value;
      assert std.isString(converted) : '"update" expected to be of type "string"';
      {
        update: converted,
      }
    ),
  },
  with_ides(value):: (
    local converted = if std.isArray(value) then value else [value];
    {
      ides: value,
    }
  ),
  with_persistent_storage(value):: (
    local converted = if std.isArray(value) then value else [value];
    {
      persistent_storage: value,
    }
  ),
  with_repositories(value):: (
    local converted = if std.isArray(value) then value else [value];
    {
      repositories: value,
    }
  ),
  with_timeouts(value):: (
    local converted = value;
    {
      timeouts: value,
    }
  ),
  with_ides_mixin(value):: (
    local converted = if std.isArray(value) then value else [value];
    {
      ides+: converted,
    }
  ),
  with_persistent_storage_mixin(value):: (
    local converted = if std.isArray(value) then value else [value];
    {
      persistent_storage+: converted,
    }
  ),
  with_repositories_mixin(value):: (
    local converted = if std.isArray(value) then value else [value];
    {
      repositories+: converted,
    }
  ),
}
