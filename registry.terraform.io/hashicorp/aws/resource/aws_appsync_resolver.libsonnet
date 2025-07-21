{
  local block = self,
  new(api_id, field, type):: (
    {}
    + block.with_api_id(api_id)
    + block.with_field(field)
    + block.with_type(type)
  ),
  with_api_id(value):: (
    local converted = value;
    assert std.isString(converted) : '"api_id" expected to be of type "string"';
    {
      api_id: converted,
    }
  ),
  with_arn(value):: (
    local converted = value;
    assert std.isString(converted) : '"arn" expected to be of type "string"';
    {
      arn: converted,
    }
  ),
  with_code(value):: (
    local converted = value;
    assert std.isString(converted) : '"code" expected to be of type "string"';
    {
      code: converted,
    }
  ),
  with_data_source(value):: (
    local converted = value;
    assert std.isString(converted) : '"data_source" expected to be of type "string"';
    {
      data_source: converted,
    }
  ),
  with_field(value):: (
    local converted = value;
    assert std.isString(converted) : '"field" expected to be of type "string"';
    {
      field: converted,
    }
  ),
  with_id(value):: (
    local converted = value;
    assert std.isString(converted) : '"id" expected to be of type "string"';
    {
      id: converted,
    }
  ),
  with_kind(value):: (
    local converted = value;
    assert std.isString(converted) : '"kind" expected to be of type "string"';
    {
      kind: converted,
    }
  ),
  with_max_batch_size(value):: (
    local converted = value;
    assert std.isNumber(converted) : '"max_batch_size" expected to be of type "number"';
    {
      max_batch_size: converted,
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
  with_request_template(value):: (
    local converted = value;
    assert std.isString(converted) : '"request_template" expected to be of type "string"';
    {
      request_template: converted,
    }
  ),
  with_response_template(value):: (
    local converted = value;
    assert std.isString(converted) : '"response_template" expected to be of type "string"';
    {
      response_template: converted,
    }
  ),
  with_type(value):: (
    local converted = value;
    assert std.isString(converted) : '"type" expected to be of type "string"';
    {
      type: converted,
    }
  ),
  caching_config:: {
    local block = self,
    new():: (
      {}
    ),
    with_caching_keys(value):: (
      local converted = if std.isArray(value) then value else [value];
      assert (std.isArray(converted) && std.length(std.set(converted)) == std.length(converted)) : '"caching_keys" expected to be of type "set"';
      {
        caching_keys: converted,
      }
    ),
    with_caching_keys_mixin(value):: (
      local converted = if std.isArray(value) then value else [value];
      assert (std.isArray(converted) && std.length(std.set(converted)) == std.length(converted)) : '"caching_keys" expected to be of type "set"';
      {
        caching_keys+: converted,
      }
    ),
    with_ttl(value):: (
      local converted = value;
      assert std.isNumber(converted) : '"ttl" expected to be of type "number"';
      {
        ttl: converted,
      }
    ),
  },
  pipeline_config:: {
    local block = self,
    new():: (
      {}
    ),
    with_functions(value):: (
      local converted = if std.isArray(value) then value else [value];
      assert std.isArray(converted) : '"functions" expected to be of type "list"';
      {
        functions: converted,
      }
    ),
    with_functions_mixin(value):: (
      local converted = if std.isArray(value) then value else [value];
      assert std.isArray(converted) : '"functions" expected to be of type "list"';
      {
        functions+: converted,
      }
    ),
  },
  runtime:: {
    local block = self,
    new(name, runtime_version):: (
      {}
      + block.with_name(name)
      + block.with_runtime_version(runtime_version)
    ),
    with_name(value):: (
      local converted = value;
      assert std.isString(converted) : '"name" expected to be of type "string"';
      {
        name: converted,
      }
    ),
    with_runtime_version(value):: (
      local converted = value;
      assert std.isString(converted) : '"runtime_version" expected to be of type "string"';
      {
        runtime_version: converted,
      }
    ),
  },
  sync_config:: {
    local block = self,
    new():: (
      {}
    ),
    with_conflict_detection(value):: (
      local converted = value;
      assert std.isString(converted) : '"conflict_detection" expected to be of type "string"';
      {
        conflict_detection: converted,
      }
    ),
    with_conflict_handler(value):: (
      local converted = value;
      assert std.isString(converted) : '"conflict_handler" expected to be of type "string"';
      {
        conflict_handler: converted,
      }
    ),
    lambda_conflict_handler_config:: {
      local block = self,
      new():: (
        {}
      ),
      with_lambda_conflict_handler_arn(value):: (
        local converted = value;
        assert std.isString(converted) : '"lambda_conflict_handler_arn" expected to be of type "string"';
        {
          lambda_conflict_handler_arn: converted,
        }
      ),
    },
    with_lambda_conflict_handler_config(value):: (
      local converted = if std.isArray(value) then value else [value];
      {
        lambda_conflict_handler_config: value,
      }
    ),
    with_lambda_conflict_handler_config_mixin(value):: (
      local converted = if std.isArray(value) then value else [value];
      {
        lambda_conflict_handler_config+: converted,
      }
    ),
  },
  with_caching_config(value):: (
    local converted = if std.isArray(value) then value else [value];
    {
      caching_config: value,
    }
  ),
  with_pipeline_config(value):: (
    local converted = if std.isArray(value) then value else [value];
    {
      pipeline_config: value,
    }
  ),
  with_runtime(value):: (
    local converted = if std.isArray(value) then value else [value];
    {
      runtime: value,
    }
  ),
  with_sync_config(value):: (
    local converted = if std.isArray(value) then value else [value];
    {
      sync_config: value,
    }
  ),
  with_caching_config_mixin(value):: (
    local converted = if std.isArray(value) then value else [value];
    {
      caching_config+: converted,
    }
  ),
  with_pipeline_config_mixin(value):: (
    local converted = if std.isArray(value) then value else [value];
    {
      pipeline_config+: converted,
    }
  ),
  with_runtime_mixin(value):: (
    local converted = if std.isArray(value) then value else [value];
    {
      runtime+: converted,
    }
  ),
  with_sync_config_mixin(value):: (
    local converted = if std.isArray(value) then value else [value];
    {
      sync_config+: converted,
    }
  ),
}
