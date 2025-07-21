{
  local block = self,
  new(name):: (
    {}
    + block.with_name(name)
  ),
  with_access_token(value):: (
    local converted = value;
    assert std.isString(converted) : '"access_token" expected to be of type "string"';
    {
      access_token: converted,
    }
  ),
  with_arn(value):: (
    local converted = value;
    assert std.isString(converted) : '"arn" expected to be of type "string"';
    {
      arn: converted,
    }
  ),
  with_auto_branch_creation_patterns(value):: (
    local converted = if std.isArray(value) then value else [value];
    assert (std.isArray(converted) && std.length(std.set(converted)) == std.length(converted)) : '"auto_branch_creation_patterns" expected to be of type "set"';
    {
      auto_branch_creation_patterns: converted,
    }
  ),
  with_auto_branch_creation_patterns_mixin(value):: (
    local converted = if std.isArray(value) then value else [value];
    assert (std.isArray(converted) && std.length(std.set(converted)) == std.length(converted)) : '"auto_branch_creation_patterns" expected to be of type "set"';
    {
      auto_branch_creation_patterns+: converted,
    }
  ),
  with_basic_auth_credentials(value):: (
    local converted = value;
    assert std.isString(converted) : '"basic_auth_credentials" expected to be of type "string"';
    {
      basic_auth_credentials: converted,
    }
  ),
  with_build_spec(value):: (
    local converted = value;
    assert std.isString(converted) : '"build_spec" expected to be of type "string"';
    {
      build_spec: converted,
    }
  ),
  with_compute_role_arn(value):: (
    local converted = value;
    assert std.isString(converted) : '"compute_role_arn" expected to be of type "string"';
    {
      compute_role_arn: converted,
    }
  ),
  with_custom_headers(value):: (
    local converted = value;
    assert std.isString(converted) : '"custom_headers" expected to be of type "string"';
    {
      custom_headers: converted,
    }
  ),
  with_default_domain(value):: (
    local converted = value;
    assert std.isString(converted) : '"default_domain" expected to be of type "string"';
    {
      default_domain: converted,
    }
  ),
  with_description(value):: (
    local converted = value;
    assert std.isString(converted) : '"description" expected to be of type "string"';
    {
      description: converted,
    }
  ),
  with_enable_auto_branch_creation(value):: (
    local converted = value;
    assert std.isBoolean(converted) : '"enable_auto_branch_creation" expected to be of type "bool"';
    {
      enable_auto_branch_creation: converted,
    }
  ),
  with_enable_basic_auth(value):: (
    local converted = value;
    assert std.isBoolean(converted) : '"enable_basic_auth" expected to be of type "bool"';
    {
      enable_basic_auth: converted,
    }
  ),
  with_enable_branch_auto_build(value):: (
    local converted = value;
    assert std.isBoolean(converted) : '"enable_branch_auto_build" expected to be of type "bool"';
    {
      enable_branch_auto_build: converted,
    }
  ),
  with_enable_branch_auto_deletion(value):: (
    local converted = value;
    assert std.isBoolean(converted) : '"enable_branch_auto_deletion" expected to be of type "bool"';
    {
      enable_branch_auto_deletion: converted,
    }
  ),
  with_environment_variables(value):: (
    local converted = value;
    assert std.isObject(converted) : '"environment_variables" expected to be of type "map"';
    {
      environment_variables: converted,
    }
  ),
  with_iam_service_role_arn(value):: (
    local converted = value;
    assert std.isString(converted) : '"iam_service_role_arn" expected to be of type "string"';
    {
      iam_service_role_arn: converted,
    }
  ),
  with_id(value):: (
    local converted = value;
    assert std.isString(converted) : '"id" expected to be of type "string"';
    {
      id: converted,
    }
  ),
  with_name(value):: (
    local converted = value;
    assert std.isString(converted) : '"name" expected to be of type "string"';
    {
      name: converted,
    }
  ),
  with_oauth_token(value):: (
    local converted = value;
    assert std.isString(converted) : '"oauth_token" expected to be of type "string"';
    {
      oauth_token: converted,
    }
  ),
  with_platform(value):: (
    local converted = value;
    assert std.isString(converted) : '"platform" expected to be of type "string"';
    {
      platform: converted,
    }
  ),
  with_production_branch(value):: (
    local converted = if std.isArray(value) then value else [value];
    assert std.isArray(converted) : '"production_branch" expected to be of type "list"';
    {
      production_branch: converted,
    }
  ),
  with_production_branch_mixin(value):: (
    local converted = if std.isArray(value) then value else [value];
    assert std.isArray(converted) : '"production_branch" expected to be of type "list"';
    {
      production_branch+: converted,
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
  with_repository(value):: (
    local converted = value;
    assert std.isString(converted) : '"repository" expected to be of type "string"';
    {
      repository: converted,
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
  auto_branch_creation_config:: {
    local block = self,
    new():: (
      {}
    ),
    with_basic_auth_credentials(value):: (
      local converted = value;
      assert std.isString(converted) : '"basic_auth_credentials" expected to be of type "string"';
      {
        basic_auth_credentials: converted,
      }
    ),
    with_build_spec(value):: (
      local converted = value;
      assert std.isString(converted) : '"build_spec" expected to be of type "string"';
      {
        build_spec: converted,
      }
    ),
    with_enable_auto_build(value):: (
      local converted = value;
      assert std.isBoolean(converted) : '"enable_auto_build" expected to be of type "bool"';
      {
        enable_auto_build: converted,
      }
    ),
    with_enable_basic_auth(value):: (
      local converted = value;
      assert std.isBoolean(converted) : '"enable_basic_auth" expected to be of type "bool"';
      {
        enable_basic_auth: converted,
      }
    ),
    with_enable_performance_mode(value):: (
      local converted = value;
      assert std.isBoolean(converted) : '"enable_performance_mode" expected to be of type "bool"';
      {
        enable_performance_mode: converted,
      }
    ),
    with_enable_pull_request_preview(value):: (
      local converted = value;
      assert std.isBoolean(converted) : '"enable_pull_request_preview" expected to be of type "bool"';
      {
        enable_pull_request_preview: converted,
      }
    ),
    with_environment_variables(value):: (
      local converted = value;
      assert std.isObject(converted) : '"environment_variables" expected to be of type "map"';
      {
        environment_variables: converted,
      }
    ),
    with_framework(value):: (
      local converted = value;
      assert std.isString(converted) : '"framework" expected to be of type "string"';
      {
        framework: converted,
      }
    ),
    with_pull_request_environment_name(value):: (
      local converted = value;
      assert std.isString(converted) : '"pull_request_environment_name" expected to be of type "string"';
      {
        pull_request_environment_name: converted,
      }
    ),
    with_stage(value):: (
      local converted = value;
      assert std.isString(converted) : '"stage" expected to be of type "string"';
      {
        stage: converted,
      }
    ),
  },
  cache_config:: {
    local block = self,
    new(type):: (
      {}
      + block.with_type(type)
    ),
    with_type(value):: (
      local converted = value;
      assert std.isString(converted) : '"type" expected to be of type "string"';
      {
        type: converted,
      }
    ),
  },
  custom_rule:: {
    local block = self,
    new(source, target):: (
      {}
      + block.with_source(source)
      + block.with_target(target)
    ),
    with_condition(value):: (
      local converted = value;
      assert std.isString(converted) : '"condition" expected to be of type "string"';
      {
        condition: converted,
      }
    ),
    with_source(value):: (
      local converted = value;
      assert std.isString(converted) : '"source" expected to be of type "string"';
      {
        source: converted,
      }
    ),
    with_status(value):: (
      local converted = value;
      assert std.isString(converted) : '"status" expected to be of type "string"';
      {
        status: converted,
      }
    ),
    with_target(value):: (
      local converted = value;
      assert std.isString(converted) : '"target" expected to be of type "string"';
      {
        target: converted,
      }
    ),
  },
  job_config:: {
    local block = self,
    new():: (
      {}
    ),
    with_build_compute_type(value):: (
      local converted = value;
      assert std.isString(converted) : '"build_compute_type" expected to be of type "string"';
      {
        build_compute_type: converted,
      }
    ),
  },
  with_auto_branch_creation_config(value):: (
    local converted = if std.isArray(value) then value else [value];
    {
      auto_branch_creation_config: value,
    }
  ),
  with_cache_config(value):: (
    local converted = if std.isArray(value) then value else [value];
    {
      cache_config: value,
    }
  ),
  with_custom_rule(value):: (
    local converted = if std.isArray(value) then value else [value];
    {
      custom_rule: value,
    }
  ),
  with_job_config(value):: (
    local converted = if std.isArray(value) then value else [value];
    {
      job_config: value,
    }
  ),
  with_auto_branch_creation_config_mixin(value):: (
    local converted = if std.isArray(value) then value else [value];
    {
      auto_branch_creation_config+: converted,
    }
  ),
  with_cache_config_mixin(value):: (
    local converted = if std.isArray(value) then value else [value];
    {
      cache_config+: converted,
    }
  ),
  with_custom_rule_mixin(value):: (
    local converted = if std.isArray(value) then value else [value];
    {
      custom_rule+: converted,
    }
  ),
  with_job_config_mixin(value):: (
    local converted = if std.isArray(value) then value else [value];
    {
      job_config+: converted,
    }
  ),
}
