{
  local block = self,
  new(schema_handler_package, type_name):: (
    {}
    + block.with_schema_handler_package(schema_handler_package)
    + block.with_type_name(type_name)
  ),
  with_arn(value):: (
    local converted = value;
    assert std.isString(converted) : '"arn" expected to be of type "string"';
    {
      arn: converted,
    }
  ),
  with_default_version_id(value):: (
    local converted = value;
    assert std.isString(converted) : '"default_version_id" expected to be of type "string"';
    {
      default_version_id: converted,
    }
  ),
  with_deprecated_status(value):: (
    local converted = value;
    assert std.isString(converted) : '"deprecated_status" expected to be of type "string"';
    {
      deprecated_status: converted,
    }
  ),
  with_description(value):: (
    local converted = value;
    assert std.isString(converted) : '"description" expected to be of type "string"';
    {
      description: converted,
    }
  ),
  with_documentation_url(value):: (
    local converted = value;
    assert std.isString(converted) : '"documentation_url" expected to be of type "string"';
    {
      documentation_url: converted,
    }
  ),
  with_execution_role_arn(value):: (
    local converted = value;
    assert std.isString(converted) : '"execution_role_arn" expected to be of type "string"';
    {
      execution_role_arn: converted,
    }
  ),
  with_id(value):: (
    local converted = value;
    assert std.isString(converted) : '"id" expected to be of type "string"';
    {
      id: converted,
    }
  ),
  with_is_default_version(value):: (
    local converted = value;
    assert std.isBoolean(converted) : '"is_default_version" expected to be of type "bool"';
    {
      is_default_version: converted,
    }
  ),
  with_provisioning_type(value):: (
    local converted = value;
    assert std.isString(converted) : '"provisioning_type" expected to be of type "string"';
    {
      provisioning_type: converted,
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
  with_schema(value):: (
    local converted = value;
    assert std.isString(converted) : '"schema" expected to be of type "string"';
    {
      schema: converted,
    }
  ),
  with_schema_handler_package(value):: (
    local converted = value;
    assert std.isString(converted) : '"schema_handler_package" expected to be of type "string"';
    {
      schema_handler_package: converted,
    }
  ),
  with_source_url(value):: (
    local converted = value;
    assert std.isString(converted) : '"source_url" expected to be of type "string"';
    {
      source_url: converted,
    }
  ),
  with_type(value):: (
    local converted = value;
    assert std.isString(converted) : '"type" expected to be of type "string"';
    {
      type: converted,
    }
  ),
  with_type_arn(value):: (
    local converted = value;
    assert std.isString(converted) : '"type_arn" expected to be of type "string"';
    {
      type_arn: converted,
    }
  ),
  with_type_name(value):: (
    local converted = value;
    assert std.isString(converted) : '"type_name" expected to be of type "string"';
    {
      type_name: converted,
    }
  ),
  with_version_id(value):: (
    local converted = value;
    assert std.isString(converted) : '"version_id" expected to be of type "string"';
    {
      version_id: converted,
    }
  ),
  with_visibility(value):: (
    local converted = value;
    assert std.isString(converted) : '"visibility" expected to be of type "string"';
    {
      visibility: converted,
    }
  ),
  logging_config:: {
    local block = self,
    new(log_group_name, log_role_arn):: (
      {}
      + block.with_log_group_name(log_group_name)
      + block.with_log_role_arn(log_role_arn)
    ),
    with_log_group_name(value):: (
      local converted = value;
      assert std.isString(converted) : '"log_group_name" expected to be of type "string"';
      {
        log_group_name: converted,
      }
    ),
    with_log_role_arn(value):: (
      local converted = value;
      assert std.isString(converted) : '"log_role_arn" expected to be of type "string"';
      {
        log_role_arn: converted,
      }
    ),
  },
  with_logging_config(value):: (
    local converted = if std.isArray(value) then value else [value];
    {
      logging_config: value,
    }
  ),
  with_logging_config_mixin(value):: (
    local converted = if std.isArray(value) then value else [value];
    {
      logging_config+: converted,
    }
  ),
}
