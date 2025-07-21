{
  local block = self,
  new(app_id, branch_name):: (
    {}
    + block.with_app_id(app_id)
    + block.with_branch_name(branch_name)
  ),
  with_app_id(value):: (
    local converted = value;
    assert std.isString(converted) : '"app_id" expected to be of type "string"';
    {
      app_id: converted,
    }
  ),
  with_arn(value):: (
    local converted = value;
    assert std.isString(converted) : '"arn" expected to be of type "string"';
    {
      arn: converted,
    }
  ),
  with_associated_resources(value):: (
    local converted = if std.isArray(value) then value else [value];
    assert std.isArray(converted) : '"associated_resources" expected to be of type "list"';
    {
      associated_resources: converted,
    }
  ),
  with_associated_resources_mixin(value):: (
    local converted = if std.isArray(value) then value else [value];
    assert std.isArray(converted) : '"associated_resources" expected to be of type "list"';
    {
      associated_resources+: converted,
    }
  ),
  with_backend_environment_arn(value):: (
    local converted = value;
    assert std.isString(converted) : '"backend_environment_arn" expected to be of type "string"';
    {
      backend_environment_arn: converted,
    }
  ),
  with_basic_auth_credentials(value):: (
    local converted = value;
    assert std.isString(converted) : '"basic_auth_credentials" expected to be of type "string"';
    {
      basic_auth_credentials: converted,
    }
  ),
  with_branch_name(value):: (
    local converted = value;
    assert std.isString(converted) : '"branch_name" expected to be of type "string"';
    {
      branch_name: converted,
    }
  ),
  with_custom_domains(value):: (
    local converted = if std.isArray(value) then value else [value];
    assert std.isArray(converted) : '"custom_domains" expected to be of type "list"';
    {
      custom_domains: converted,
    }
  ),
  with_custom_domains_mixin(value):: (
    local converted = if std.isArray(value) then value else [value];
    assert std.isArray(converted) : '"custom_domains" expected to be of type "list"';
    {
      custom_domains+: converted,
    }
  ),
  with_description(value):: (
    local converted = value;
    assert std.isString(converted) : '"description" expected to be of type "string"';
    {
      description: converted,
    }
  ),
  with_destination_branch(value):: (
    local converted = value;
    assert std.isString(converted) : '"destination_branch" expected to be of type "string"';
    {
      destination_branch: converted,
    }
  ),
  with_display_name(value):: (
    local converted = value;
    assert std.isString(converted) : '"display_name" expected to be of type "string"';
    {
      display_name: converted,
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
  with_enable_notification(value):: (
    local converted = value;
    assert std.isBoolean(converted) : '"enable_notification" expected to be of type "bool"';
    {
      enable_notification: converted,
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
  with_enable_skew_protection(value):: (
    local converted = value;
    assert std.isBoolean(converted) : '"enable_skew_protection" expected to be of type "bool"';
    {
      enable_skew_protection: converted,
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
  with_id(value):: (
    local converted = value;
    assert std.isString(converted) : '"id" expected to be of type "string"';
    {
      id: converted,
    }
  ),
  with_pull_request_environment_name(value):: (
    local converted = value;
    assert std.isString(converted) : '"pull_request_environment_name" expected to be of type "string"';
    {
      pull_request_environment_name: converted,
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
  with_source_branch(value):: (
    local converted = value;
    assert std.isString(converted) : '"source_branch" expected to be of type "string"';
    {
      source_branch: converted,
    }
  ),
  with_stage(value):: (
    local converted = value;
    assert std.isString(converted) : '"stage" expected to be of type "string"';
    {
      stage: converted,
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
  with_ttl(value):: (
    local converted = value;
    assert std.isString(converted) : '"ttl" expected to be of type "string"';
    {
      ttl: converted,
    }
  ),
}
