{
  local block = self,
  new(api_id, data_source, name):: (
    {}
    + block.with_api_id(api_id)
    + block.with_data_source(data_source)
    + block.with_name(name)
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
  with_description(value):: (
    local converted = value;
    assert std.isString(converted) : '"description" expected to be of type "string"';
    {
      description: converted,
    }
  ),
  with_function_id(value):: (
    local converted = value;
    assert std.isString(converted) : '"function_id" expected to be of type "string"';
    {
      function_id: converted,
    }
  ),
  with_function_version(value):: (
    local converted = value;
    assert std.isString(converted) : '"function_version" expected to be of type "string"';
    {
      function_version: converted,
    }
  ),
  with_id(value):: (
    local converted = value;
    assert std.isString(converted) : '"id" expected to be of type "string"';
    {
      id: converted,
    }
  ),
  with_max_batch_size(value):: (
    local converted = value;
    assert std.isNumber(converted) : '"max_batch_size" expected to be of type "number"';
    {
      max_batch_size: converted,
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
  with_request_mapping_template(value):: (
    local converted = value;
    assert std.isString(converted) : '"request_mapping_template" expected to be of type "string"';
    {
      request_mapping_template: converted,
    }
  ),
  with_response_mapping_template(value):: (
    local converted = value;
    assert std.isString(converted) : '"response_mapping_template" expected to be of type "string"';
    {
      response_mapping_template: converted,
    }
  ),
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
