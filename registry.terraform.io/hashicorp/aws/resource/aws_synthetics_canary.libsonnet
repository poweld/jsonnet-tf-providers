{
  local block = self,
  new(artifact_s3_location, execution_role_arn, handler, name, runtime_version):: (
    {}
    + block.with_artifact_s3_location(artifact_s3_location)
    + block.with_execution_role_arn(execution_role_arn)
    + block.with_handler(handler)
    + block.with_name(name)
    + block.with_runtime_version(runtime_version)
  ),
  with_arn(value):: (
    local converted = value;
    assert std.isString(converted) : '"arn" expected to be of type "string"';
    {
      arn: converted,
    }
  ),
  with_artifact_s3_location(value):: (
    local converted = value;
    assert std.isString(converted) : '"artifact_s3_location" expected to be of type "string"';
    {
      artifact_s3_location: converted,
    }
  ),
  with_delete_lambda(value):: (
    local converted = value;
    assert std.isBoolean(converted) : '"delete_lambda" expected to be of type "bool"';
    {
      delete_lambda: converted,
    }
  ),
  with_engine_arn(value):: (
    local converted = value;
    assert std.isString(converted) : '"engine_arn" expected to be of type "string"';
    {
      engine_arn: converted,
    }
  ),
  with_execution_role_arn(value):: (
    local converted = value;
    assert std.isString(converted) : '"execution_role_arn" expected to be of type "string"';
    {
      execution_role_arn: converted,
    }
  ),
  with_failure_retention_period(value):: (
    local converted = value;
    assert std.isNumber(converted) : '"failure_retention_period" expected to be of type "number"';
    {
      failure_retention_period: converted,
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
  with_runtime_version(value):: (
    local converted = value;
    assert std.isString(converted) : '"runtime_version" expected to be of type "string"';
    {
      runtime_version: converted,
    }
  ),
  with_s3_bucket(value):: (
    local converted = value;
    assert std.isString(converted) : '"s3_bucket" expected to be of type "string"';
    {
      s3_bucket: converted,
    }
  ),
  with_s3_key(value):: (
    local converted = value;
    assert std.isString(converted) : '"s3_key" expected to be of type "string"';
    {
      s3_key: converted,
    }
  ),
  with_s3_version(value):: (
    local converted = value;
    assert std.isString(converted) : '"s3_version" expected to be of type "string"';
    {
      s3_version: converted,
    }
  ),
  with_source_location_arn(value):: (
    local converted = value;
    assert std.isString(converted) : '"source_location_arn" expected to be of type "string"';
    {
      source_location_arn: converted,
    }
  ),
  with_start_canary(value):: (
    local converted = value;
    assert std.isBoolean(converted) : '"start_canary" expected to be of type "bool"';
    {
      start_canary: converted,
    }
  ),
  with_status(value):: (
    local converted = value;
    assert std.isString(converted) : '"status" expected to be of type "string"';
    {
      status: converted,
    }
  ),
  with_success_retention_period(value):: (
    local converted = value;
    assert std.isNumber(converted) : '"success_retention_period" expected to be of type "number"';
    {
      success_retention_period: converted,
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
  with_timeline(value):: (
    local converted = if std.isArray(value) then value else [value];
    assert std.isArray(converted) : '"timeline" expected to be of type "list"';
    {
      timeline: converted,
    }
  ),
  with_timeline_mixin(value):: (
    local converted = if std.isArray(value) then value else [value];
    assert std.isArray(converted) : '"timeline" expected to be of type "list"';
    {
      timeline+: converted,
    }
  ),
  with_zip_file(value):: (
    local converted = value;
    assert std.isString(converted) : '"zip_file" expected to be of type "string"';
    {
      zip_file: converted,
    }
  ),
  artifact_config:: {
    local block = self,
    new():: (
      {}
    ),
    s3_encryption:: {
      local block = self,
      new():: (
        {}
      ),
      with_encryption_mode(value):: (
        local converted = value;
        assert std.isString(converted) : '"encryption_mode" expected to be of type "string"';
        {
          encryption_mode: converted,
        }
      ),
      with_kms_key_arn(value):: (
        local converted = value;
        assert std.isString(converted) : '"kms_key_arn" expected to be of type "string"';
        {
          kms_key_arn: converted,
        }
      ),
    },
    with_s3_encryption(value):: (
      local converted = if std.isArray(value) then value else [value];
      {
        s3_encryption: value,
      }
    ),
    with_s3_encryption_mixin(value):: (
      local converted = if std.isArray(value) then value else [value];
      {
        s3_encryption+: converted,
      }
    ),
  },
  run_config:: {
    local block = self,
    new():: (
      {}
    ),
    with_active_tracing(value):: (
      local converted = value;
      assert std.isBoolean(converted) : '"active_tracing" expected to be of type "bool"';
      {
        active_tracing: converted,
      }
    ),
    with_environment_variables(value):: (
      local converted = value;
      assert std.isObject(converted) : '"environment_variables" expected to be of type "map"';
      {
        environment_variables: converted,
      }
    ),
    with_memory_in_mb(value):: (
      local converted = value;
      assert std.isNumber(converted) : '"memory_in_mb" expected to be of type "number"';
      {
        memory_in_mb: converted,
      }
    ),
    with_timeout_in_seconds(value):: (
      local converted = value;
      assert std.isNumber(converted) : '"timeout_in_seconds" expected to be of type "number"';
      {
        timeout_in_seconds: converted,
      }
    ),
  },
  schedule:: {
    local block = self,
    new(expression):: (
      {}
      + block.with_expression(expression)
    ),
    with_duration_in_seconds(value):: (
      local converted = value;
      assert std.isNumber(converted) : '"duration_in_seconds" expected to be of type "number"';
      {
        duration_in_seconds: converted,
      }
    ),
    with_expression(value):: (
      local converted = value;
      assert std.isString(converted) : '"expression" expected to be of type "string"';
      {
        expression: converted,
      }
    ),
  },
  vpc_config:: {
    local block = self,
    new():: (
      {}
    ),
    with_security_group_ids(value):: (
      local converted = if std.isArray(value) then value else [value];
      assert (std.isArray(converted) && std.length(std.set(converted)) == std.length(converted)) : '"security_group_ids" expected to be of type "set"';
      {
        security_group_ids: converted,
      }
    ),
    with_security_group_ids_mixin(value):: (
      local converted = if std.isArray(value) then value else [value];
      assert (std.isArray(converted) && std.length(std.set(converted)) == std.length(converted)) : '"security_group_ids" expected to be of type "set"';
      {
        security_group_ids+: converted,
      }
    ),
    with_subnet_ids(value):: (
      local converted = if std.isArray(value) then value else [value];
      assert (std.isArray(converted) && std.length(std.set(converted)) == std.length(converted)) : '"subnet_ids" expected to be of type "set"';
      {
        subnet_ids: converted,
      }
    ),
    with_subnet_ids_mixin(value):: (
      local converted = if std.isArray(value) then value else [value];
      assert (std.isArray(converted) && std.length(std.set(converted)) == std.length(converted)) : '"subnet_ids" expected to be of type "set"';
      {
        subnet_ids+: converted,
      }
    ),
    with_vpc_id(value):: (
      local converted = value;
      assert std.isString(converted) : '"vpc_id" expected to be of type "string"';
      {
        vpc_id: converted,
      }
    ),
  },
  with_artifact_config(value):: (
    local converted = if std.isArray(value) then value else [value];
    {
      artifact_config: value,
    }
  ),
  with_run_config(value):: (
    local converted = if std.isArray(value) then value else [value];
    {
      run_config: value,
    }
  ),
  with_schedule(value):: (
    local converted = if std.isArray(value) then value else [value];
    {
      schedule: value,
    }
  ),
  with_vpc_config(value):: (
    local converted = if std.isArray(value) then value else [value];
    {
      vpc_config: value,
    }
  ),
  with_artifact_config_mixin(value):: (
    local converted = if std.isArray(value) then value else [value];
    {
      artifact_config+: converted,
    }
  ),
  with_run_config_mixin(value):: (
    local converted = if std.isArray(value) then value else [value];
    {
      run_config+: converted,
    }
  ),
  with_schedule_mixin(value):: (
    local converted = if std.isArray(value) then value else [value];
    {
      schedule+: converted,
    }
  ),
  with_vpc_config_mixin(value):: (
    local converted = if std.isArray(value) then value else [value];
    {
      vpc_config+: converted,
    }
  ),
}
