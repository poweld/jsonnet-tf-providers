{
  local block = self,
  new(name, role_arn):: (
    {}
    + block.with_name(name)
    + block.with_role_arn(role_arn)
  ),
  with_arn(value):: (
    local converted = value;
    assert std.isString(converted) : '"arn" expected to be of type "string"';
    {
      arn: converted,
    }
  ),
  with_connections(value):: (
    local converted = if std.isArray(value) then value else [value];
    assert std.isArray(converted) : '"connections" expected to be of type "list"';
    {
      connections: converted,
    }
  ),
  with_connections_mixin(value):: (
    local converted = if std.isArray(value) then value else [value];
    assert std.isArray(converted) : '"connections" expected to be of type "list"';
    {
      connections+: converted,
    }
  ),
  with_default_arguments(value):: (
    local converted = value;
    assert std.isObject(converted) : '"default_arguments" expected to be of type "map"';
    {
      default_arguments: converted,
    }
  ),
  with_description(value):: (
    local converted = value;
    assert std.isString(converted) : '"description" expected to be of type "string"';
    {
      description: converted,
    }
  ),
  with_execution_class(value):: (
    local converted = value;
    assert std.isString(converted) : '"execution_class" expected to be of type "string"';
    {
      execution_class: converted,
    }
  ),
  with_glue_version(value):: (
    local converted = value;
    assert std.isString(converted) : '"glue_version" expected to be of type "string"';
    {
      glue_version: converted,
    }
  ),
  with_id(value):: (
    local converted = value;
    assert std.isString(converted) : '"id" expected to be of type "string"';
    {
      id: converted,
    }
  ),
  with_job_mode(value):: (
    local converted = value;
    assert std.isString(converted) : '"job_mode" expected to be of type "string"';
    {
      job_mode: converted,
    }
  ),
  with_job_run_queuing_enabled(value):: (
    local converted = value;
    assert std.isBoolean(converted) : '"job_run_queuing_enabled" expected to be of type "bool"';
    {
      job_run_queuing_enabled: converted,
    }
  ),
  with_maintenance_window(value):: (
    local converted = value;
    assert std.isString(converted) : '"maintenance_window" expected to be of type "string"';
    {
      maintenance_window: converted,
    }
  ),
  with_max_capacity(value):: (
    local converted = value;
    assert std.isNumber(converted) : '"max_capacity" expected to be of type "number"';
    {
      max_capacity: converted,
    }
  ),
  with_max_retries(value):: (
    local converted = value;
    assert std.isNumber(converted) : '"max_retries" expected to be of type "number"';
    {
      max_retries: converted,
    }
  ),
  with_name(value):: (
    local converted = value;
    assert std.isString(converted) : '"name" expected to be of type "string"';
    {
      name: converted,
    }
  ),
  with_non_overridable_arguments(value):: (
    local converted = value;
    assert std.isObject(converted) : '"non_overridable_arguments" expected to be of type "map"';
    {
      non_overridable_arguments: converted,
    }
  ),
  with_number_of_workers(value):: (
    local converted = value;
    assert std.isNumber(converted) : '"number_of_workers" expected to be of type "number"';
    {
      number_of_workers: converted,
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
  with_role_arn(value):: (
    local converted = value;
    assert std.isString(converted) : '"role_arn" expected to be of type "string"';
    {
      role_arn: converted,
    }
  ),
  with_security_configuration(value):: (
    local converted = value;
    assert std.isString(converted) : '"security_configuration" expected to be of type "string"';
    {
      security_configuration: converted,
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
  with_timeout(value):: (
    local converted = value;
    assert std.isNumber(converted) : '"timeout" expected to be of type "number"';
    {
      timeout: converted,
    }
  ),
  with_worker_type(value):: (
    local converted = value;
    assert std.isString(converted) : '"worker_type" expected to be of type "string"';
    {
      worker_type: converted,
    }
  ),
  command:: {
    local block = self,
    new(script_location):: (
      {}
      + block.with_script_location(script_location)
    ),
    with_name(value):: (
      local converted = value;
      assert std.isString(converted) : '"name" expected to be of type "string"';
      {
        name: converted,
      }
    ),
    with_python_version(value):: (
      local converted = value;
      assert std.isString(converted) : '"python_version" expected to be of type "string"';
      {
        python_version: converted,
      }
    ),
    with_runtime(value):: (
      local converted = value;
      assert std.isString(converted) : '"runtime" expected to be of type "string"';
      {
        runtime: converted,
      }
    ),
    with_script_location(value):: (
      local converted = value;
      assert std.isString(converted) : '"script_location" expected to be of type "string"';
      {
        script_location: converted,
      }
    ),
  },
  execution_property:: {
    local block = self,
    new():: (
      {}
    ),
    with_max_concurrent_runs(value):: (
      local converted = value;
      assert std.isNumber(converted) : '"max_concurrent_runs" expected to be of type "number"';
      {
        max_concurrent_runs: converted,
      }
    ),
  },
  notification_property:: {
    local block = self,
    new():: (
      {}
    ),
    with_notify_delay_after(value):: (
      local converted = value;
      assert std.isNumber(converted) : '"notify_delay_after" expected to be of type "number"';
      {
        notify_delay_after: converted,
      }
    ),
  },
  source_control_details:: {
    local block = self,
    new():: (
      {}
    ),
    with_auth_strategy(value):: (
      local converted = value;
      assert std.isString(converted) : '"auth_strategy" expected to be of type "string"';
      {
        auth_strategy: converted,
      }
    ),
    with_auth_token(value):: (
      local converted = value;
      assert std.isString(converted) : '"auth_token" expected to be of type "string"';
      {
        auth_token: converted,
      }
    ),
    with_branch(value):: (
      local converted = value;
      assert std.isString(converted) : '"branch" expected to be of type "string"';
      {
        branch: converted,
      }
    ),
    with_folder(value):: (
      local converted = value;
      assert std.isString(converted) : '"folder" expected to be of type "string"';
      {
        folder: converted,
      }
    ),
    with_last_commit_id(value):: (
      local converted = value;
      assert std.isString(converted) : '"last_commit_id" expected to be of type "string"';
      {
        last_commit_id: converted,
      }
    ),
    with_owner(value):: (
      local converted = value;
      assert std.isString(converted) : '"owner" expected to be of type "string"';
      {
        owner: converted,
      }
    ),
    with_provider(value):: (
      local converted = value;
      assert std.isString(converted) : '"provider" expected to be of type "string"';
      {
        provider: converted,
      }
    ),
    with_repository(value):: (
      local converted = value;
      assert std.isString(converted) : '"repository" expected to be of type "string"';
      {
        repository: converted,
      }
    ),
  },
  with_command(value):: (
    local converted = if std.isArray(value) then value else [value];
    {
      command: value,
    }
  ),
  with_execution_property(value):: (
    local converted = if std.isArray(value) then value else [value];
    {
      execution_property: value,
    }
  ),
  with_notification_property(value):: (
    local converted = if std.isArray(value) then value else [value];
    {
      notification_property: value,
    }
  ),
  with_source_control_details(value):: (
    local converted = if std.isArray(value) then value else [value];
    {
      source_control_details: value,
    }
  ),
  with_command_mixin(value):: (
    local converted = if std.isArray(value) then value else [value];
    {
      command+: converted,
    }
  ),
  with_execution_property_mixin(value):: (
    local converted = if std.isArray(value) then value else [value];
    {
      execution_property+: converted,
    }
  ),
  with_notification_property_mixin(value):: (
    local converted = if std.isArray(value) then value else [value];
    {
      notification_property+: converted,
    }
  ),
  with_source_control_details_mixin(value):: (
    local converted = if std.isArray(value) then value else [value];
    {
      source_control_details+: converted,
    }
  ),
}
