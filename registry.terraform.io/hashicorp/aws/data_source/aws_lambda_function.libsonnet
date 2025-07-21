{
  local block = self,
  new(function_name):: (
    {}
    + block.with_function_name(function_name)
  ),
  with_architectures(value):: (
    local converted = if std.isArray(value) then value else [value];
    assert std.isArray(converted) : '"architectures" expected to be of type "list"';
    {
      architectures: converted,
    }
  ),
  with_architectures_mixin(value):: (
    local converted = if std.isArray(value) then value else [value];
    assert std.isArray(converted) : '"architectures" expected to be of type "list"';
    {
      architectures+: converted,
    }
  ),
  with_arn(value):: (
    local converted = value;
    assert std.isString(converted) : '"arn" expected to be of type "string"';
    {
      arn: converted,
    }
  ),
  with_code_sha256(value):: (
    local converted = value;
    assert std.isString(converted) : '"code_sha256" expected to be of type "string"';
    {
      code_sha256: converted,
    }
  ),
  with_code_signing_config_arn(value):: (
    local converted = value;
    assert std.isString(converted) : '"code_signing_config_arn" expected to be of type "string"';
    {
      code_signing_config_arn: converted,
    }
  ),
  with_dead_letter_config(value):: (
    local converted = if std.isArray(value) then value else [value];
    assert std.isArray(converted) : '"dead_letter_config" expected to be of type "list"';
    {
      dead_letter_config: converted,
    }
  ),
  with_dead_letter_config_mixin(value):: (
    local converted = if std.isArray(value) then value else [value];
    assert std.isArray(converted) : '"dead_letter_config" expected to be of type "list"';
    {
      dead_letter_config+: converted,
    }
  ),
  with_description(value):: (
    local converted = value;
    assert std.isString(converted) : '"description" expected to be of type "string"';
    {
      description: converted,
    }
  ),
  with_environment(value):: (
    local converted = if std.isArray(value) then value else [value];
    assert std.isArray(converted) : '"environment" expected to be of type "list"';
    {
      environment: converted,
    }
  ),
  with_environment_mixin(value):: (
    local converted = if std.isArray(value) then value else [value];
    assert std.isArray(converted) : '"environment" expected to be of type "list"';
    {
      environment+: converted,
    }
  ),
  with_ephemeral_storage(value):: (
    local converted = if std.isArray(value) then value else [value];
    assert std.isArray(converted) : '"ephemeral_storage" expected to be of type "list"';
    {
      ephemeral_storage: converted,
    }
  ),
  with_ephemeral_storage_mixin(value):: (
    local converted = if std.isArray(value) then value else [value];
    assert std.isArray(converted) : '"ephemeral_storage" expected to be of type "list"';
    {
      ephemeral_storage+: converted,
    }
  ),
  with_file_system_config(value):: (
    local converted = if std.isArray(value) then value else [value];
    assert std.isArray(converted) : '"file_system_config" expected to be of type "list"';
    {
      file_system_config: converted,
    }
  ),
  with_file_system_config_mixin(value):: (
    local converted = if std.isArray(value) then value else [value];
    assert std.isArray(converted) : '"file_system_config" expected to be of type "list"';
    {
      file_system_config+: converted,
    }
  ),
  with_function_name(value):: (
    local converted = value;
    assert std.isString(converted) : '"function_name" expected to be of type "string"';
    {
      function_name: converted,
    }
  ),
  with_handler(value):: (
    local converted = value;
    assert std.isString(converted) : '"handler" expected to be of type "string"';
    {
      handler: converted,
    }
  ),
  with_id(value):: (
    local converted = value;
    assert std.isString(converted) : '"id" expected to be of type "string"';
    {
      id: converted,
    }
  ),
  with_image_uri(value):: (
    local converted = value;
    assert std.isString(converted) : '"image_uri" expected to be of type "string"';
    {
      image_uri: converted,
    }
  ),
  with_invoke_arn(value):: (
    local converted = value;
    assert std.isString(converted) : '"invoke_arn" expected to be of type "string"';
    {
      invoke_arn: converted,
    }
  ),
  with_kms_key_arn(value):: (
    local converted = value;
    assert std.isString(converted) : '"kms_key_arn" expected to be of type "string"';
    {
      kms_key_arn: converted,
    }
  ),
  with_last_modified(value):: (
    local converted = value;
    assert std.isString(converted) : '"last_modified" expected to be of type "string"';
    {
      last_modified: converted,
    }
  ),
  with_layers(value):: (
    local converted = if std.isArray(value) then value else [value];
    assert std.isArray(converted) : '"layers" expected to be of type "list"';
    {
      layers: converted,
    }
  ),
  with_layers_mixin(value):: (
    local converted = if std.isArray(value) then value else [value];
    assert std.isArray(converted) : '"layers" expected to be of type "list"';
    {
      layers+: converted,
    }
  ),
  with_logging_config(value):: (
    local converted = if std.isArray(value) then value else [value];
    assert std.isArray(converted) : '"logging_config" expected to be of type "list"';
    {
      logging_config: converted,
    }
  ),
  with_logging_config_mixin(value):: (
    local converted = if std.isArray(value) then value else [value];
    assert std.isArray(converted) : '"logging_config" expected to be of type "list"';
    {
      logging_config+: converted,
    }
  ),
  with_memory_size(value):: (
    local converted = value;
    assert std.isNumber(converted) : '"memory_size" expected to be of type "number"';
    {
      memory_size: converted,
    }
  ),
  with_qualified_arn(value):: (
    local converted = value;
    assert std.isString(converted) : '"qualified_arn" expected to be of type "string"';
    {
      qualified_arn: converted,
    }
  ),
  with_qualified_invoke_arn(value):: (
    local converted = value;
    assert std.isString(converted) : '"qualified_invoke_arn" expected to be of type "string"';
    {
      qualified_invoke_arn: converted,
    }
  ),
  with_qualifier(value):: (
    local converted = value;
    assert std.isString(converted) : '"qualifier" expected to be of type "string"';
    {
      qualifier: converted,
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
  with_reserved_concurrent_executions(value):: (
    local converted = value;
    assert std.isNumber(converted) : '"reserved_concurrent_executions" expected to be of type "number"';
    {
      reserved_concurrent_executions: converted,
    }
  ),
  with_role(value):: (
    local converted = value;
    assert std.isString(converted) : '"role" expected to be of type "string"';
    {
      role: converted,
    }
  ),
  with_runtime(value):: (
    local converted = value;
    assert std.isString(converted) : '"runtime" expected to be of type "string"';
    {
      runtime: converted,
    }
  ),
  with_signing_job_arn(value):: (
    local converted = value;
    assert std.isString(converted) : '"signing_job_arn" expected to be of type "string"';
    {
      signing_job_arn: converted,
    }
  ),
  with_signing_profile_version_arn(value):: (
    local converted = value;
    assert std.isString(converted) : '"signing_profile_version_arn" expected to be of type "string"';
    {
      signing_profile_version_arn: converted,
    }
  ),
  with_source_code_hash(value):: (
    local converted = value;
    assert std.isString(converted) : '"source_code_hash" expected to be of type "string"';
    {
      source_code_hash: converted,
    }
  ),
  with_source_code_size(value):: (
    local converted = value;
    assert std.isNumber(converted) : '"source_code_size" expected to be of type "number"';
    {
      source_code_size: converted,
    }
  ),
  with_tags(value):: (
    local converted = value;
    assert std.isObject(converted) : '"tags" expected to be of type "map"';
    {
      tags: converted,
    }
  ),
  with_timeout(value):: (
    local converted = value;
    assert std.isNumber(converted) : '"timeout" expected to be of type "number"';
    {
      timeout: converted,
    }
  ),
  with_tracing_config(value):: (
    local converted = if std.isArray(value) then value else [value];
    assert std.isArray(converted) : '"tracing_config" expected to be of type "list"';
    {
      tracing_config: converted,
    }
  ),
  with_tracing_config_mixin(value):: (
    local converted = if std.isArray(value) then value else [value];
    assert std.isArray(converted) : '"tracing_config" expected to be of type "list"';
    {
      tracing_config+: converted,
    }
  ),
  with_version(value):: (
    local converted = value;
    assert std.isString(converted) : '"version" expected to be of type "string"';
    {
      version: converted,
    }
  ),
  with_vpc_config(value):: (
    local converted = if std.isArray(value) then value else [value];
    assert std.isArray(converted) : '"vpc_config" expected to be of type "list"';
    {
      vpc_config: converted,
    }
  ),
  with_vpc_config_mixin(value):: (
    local converted = if std.isArray(value) then value else [value];
    assert std.isArray(converted) : '"vpc_config" expected to be of type "list"';
    {
      vpc_config+: converted,
    }
  ),
}
