{
  local block = self,
  new(deployment_id, rest_api_id, stage_name):: (
    {}
    + block.with_deployment_id(deployment_id)
    + block.with_rest_api_id(rest_api_id)
    + block.with_stage_name(stage_name)
  ),
  with_arn(value):: (
    local converted = value;
    assert std.isString(converted) : '"arn" expected to be of type "string"';
    {
      arn: converted,
    }
  ),
  with_cache_cluster_enabled(value):: (
    local converted = value;
    assert std.isBoolean(converted) : '"cache_cluster_enabled" expected to be of type "bool"';
    {
      cache_cluster_enabled: converted,
    }
  ),
  with_cache_cluster_size(value):: (
    local converted = value;
    assert std.isString(converted) : '"cache_cluster_size" expected to be of type "string"';
    {
      cache_cluster_size: converted,
    }
  ),
  with_client_certificate_id(value):: (
    local converted = value;
    assert std.isString(converted) : '"client_certificate_id" expected to be of type "string"';
    {
      client_certificate_id: converted,
    }
  ),
  with_deployment_id(value):: (
    local converted = value;
    assert std.isString(converted) : '"deployment_id" expected to be of type "string"';
    {
      deployment_id: converted,
    }
  ),
  with_description(value):: (
    local converted = value;
    assert std.isString(converted) : '"description" expected to be of type "string"';
    {
      description: converted,
    }
  ),
  with_documentation_version(value):: (
    local converted = value;
    assert std.isString(converted) : '"documentation_version" expected to be of type "string"';
    {
      documentation_version: converted,
    }
  ),
  with_execution_arn(value):: (
    local converted = value;
    assert std.isString(converted) : '"execution_arn" expected to be of type "string"';
    {
      execution_arn: converted,
    }
  ),
  with_id(value):: (
    local converted = value;
    assert std.isString(converted) : '"id" expected to be of type "string"';
    {
      id: converted,
    }
  ),
  with_invoke_url(value):: (
    local converted = value;
    assert std.isString(converted) : '"invoke_url" expected to be of type "string"';
    {
      invoke_url: converted,
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
  with_rest_api_id(value):: (
    local converted = value;
    assert std.isString(converted) : '"rest_api_id" expected to be of type "string"';
    {
      rest_api_id: converted,
    }
  ),
  with_stage_name(value):: (
    local converted = value;
    assert std.isString(converted) : '"stage_name" expected to be of type "string"';
    {
      stage_name: converted,
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
  with_variables(value):: (
    local converted = value;
    assert std.isObject(converted) : '"variables" expected to be of type "map"';
    {
      variables: converted,
    }
  ),
  with_web_acl_arn(value):: (
    local converted = value;
    assert std.isString(converted) : '"web_acl_arn" expected to be of type "string"';
    {
      web_acl_arn: converted,
    }
  ),
  with_xray_tracing_enabled(value):: (
    local converted = value;
    assert std.isBoolean(converted) : '"xray_tracing_enabled" expected to be of type "bool"';
    {
      xray_tracing_enabled: converted,
    }
  ),
  access_log_settings:: {
    local block = self,
    new(destination_arn, format):: (
      {}
      + block.with_destination_arn(destination_arn)
      + block.with_format(format)
    ),
    with_destination_arn(value):: (
      local converted = value;
      assert std.isString(converted) : '"destination_arn" expected to be of type "string"';
      {
        destination_arn: converted,
      }
    ),
    with_format(value):: (
      local converted = value;
      assert std.isString(converted) : '"format" expected to be of type "string"';
      {
        format: converted,
      }
    ),
  },
  canary_settings:: {
    local block = self,
    new(deployment_id):: (
      {}
      + block.with_deployment_id(deployment_id)
    ),
    with_deployment_id(value):: (
      local converted = value;
      assert std.isString(converted) : '"deployment_id" expected to be of type "string"';
      {
        deployment_id: converted,
      }
    ),
    with_percent_traffic(value):: (
      local converted = value;
      assert std.isNumber(converted) : '"percent_traffic" expected to be of type "number"';
      {
        percent_traffic: converted,
      }
    ),
    with_stage_variable_overrides(value):: (
      local converted = value;
      assert std.isObject(converted) : '"stage_variable_overrides" expected to be of type "map"';
      {
        stage_variable_overrides: converted,
      }
    ),
    with_use_stage_cache(value):: (
      local converted = value;
      assert std.isBoolean(converted) : '"use_stage_cache" expected to be of type "bool"';
      {
        use_stage_cache: converted,
      }
    ),
  },
  with_access_log_settings(value):: (
    local converted = if std.isArray(value) then value else [value];
    {
      access_log_settings: value,
    }
  ),
  with_canary_settings(value):: (
    local converted = if std.isArray(value) then value else [value];
    {
      canary_settings: value,
    }
  ),
  with_access_log_settings_mixin(value):: (
    local converted = if std.isArray(value) then value else [value];
    {
      access_log_settings+: converted,
    }
  ),
  with_canary_settings_mixin(value):: (
    local converted = if std.isArray(value) then value else [value];
    {
      canary_settings+: converted,
    }
  ),
}
