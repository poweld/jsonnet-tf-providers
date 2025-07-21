{
  local block = self,
  new(config_rule_name, target_id, target_type):: (
    {}
    + block.with_config_rule_name(config_rule_name)
    + block.with_target_id(target_id)
    + block.with_target_type(target_type)
  ),
  with_arn(value):: (
    local converted = value;
    assert std.isString(converted) : '"arn" expected to be of type "string"';
    {
      arn: converted,
    }
  ),
  with_automatic(value):: (
    local converted = value;
    assert std.isBoolean(converted) : '"automatic" expected to be of type "bool"';
    {
      automatic: converted,
    }
  ),
  with_config_rule_name(value):: (
    local converted = value;
    assert std.isString(converted) : '"config_rule_name" expected to be of type "string"';
    {
      config_rule_name: converted,
    }
  ),
  with_id(value):: (
    local converted = value;
    assert std.isString(converted) : '"id" expected to be of type "string"';
    {
      id: converted,
    }
  ),
  with_maximum_automatic_attempts(value):: (
    local converted = value;
    assert std.isNumber(converted) : '"maximum_automatic_attempts" expected to be of type "number"';
    {
      maximum_automatic_attempts: converted,
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
  with_resource_type(value):: (
    local converted = value;
    assert std.isString(converted) : '"resource_type" expected to be of type "string"';
    {
      resource_type: converted,
    }
  ),
  with_retry_attempt_seconds(value):: (
    local converted = value;
    assert std.isNumber(converted) : '"retry_attempt_seconds" expected to be of type "number"';
    {
      retry_attempt_seconds: converted,
    }
  ),
  with_target_id(value):: (
    local converted = value;
    assert std.isString(converted) : '"target_id" expected to be of type "string"';
    {
      target_id: converted,
    }
  ),
  with_target_type(value):: (
    local converted = value;
    assert std.isString(converted) : '"target_type" expected to be of type "string"';
    {
      target_type: converted,
    }
  ),
  with_target_version(value):: (
    local converted = value;
    assert std.isString(converted) : '"target_version" expected to be of type "string"';
    {
      target_version: converted,
    }
  ),
  execution_controls:: {
    local block = self,
    new():: (
      {}
    ),
    ssm_controls:: {
      local block = self,
      new():: (
        {}
      ),
      with_concurrent_execution_rate_percentage(value):: (
        local converted = value;
        assert std.isNumber(converted) : '"concurrent_execution_rate_percentage" expected to be of type "number"';
        {
          concurrent_execution_rate_percentage: converted,
        }
      ),
      with_error_percentage(value):: (
        local converted = value;
        assert std.isNumber(converted) : '"error_percentage" expected to be of type "number"';
        {
          error_percentage: converted,
        }
      ),
    },
    with_ssm_controls(value):: (
      local converted = if std.isArray(value) then value else [value];
      {
        ssm_controls: value,
      }
    ),
    with_ssm_controls_mixin(value):: (
      local converted = if std.isArray(value) then value else [value];
      {
        ssm_controls+: converted,
      }
    ),
  },
  parameter:: {
    local block = self,
    new(name):: (
      {}
      + block.with_name(name)
    ),
    with_name(value):: (
      local converted = value;
      assert std.isString(converted) : '"name" expected to be of type "string"';
      {
        name: converted,
      }
    ),
    with_resource_value(value):: (
      local converted = value;
      assert std.isString(converted) : '"resource_value" expected to be of type "string"';
      {
        resource_value: converted,
      }
    ),
    with_static_value(value):: (
      local converted = value;
      assert std.isString(converted) : '"static_value" expected to be of type "string"';
      {
        static_value: converted,
      }
    ),
    with_static_values(value):: (
      local converted = if std.isArray(value) then value else [value];
      assert std.isArray(converted) : '"static_values" expected to be of type "list"';
      {
        static_values: converted,
      }
    ),
    with_static_values_mixin(value):: (
      local converted = if std.isArray(value) then value else [value];
      assert std.isArray(converted) : '"static_values" expected to be of type "list"';
      {
        static_values+: converted,
      }
    ),
  },
  with_execution_controls(value):: (
    local converted = if std.isArray(value) then value else [value];
    {
      execution_controls: value,
    }
  ),
  with_parameter(value):: (
    local converted = if std.isArray(value) then value else [value];
    {
      parameter: value,
    }
  ),
  with_execution_controls_mixin(value):: (
    local converted = if std.isArray(value) then value else [value];
    {
      execution_controls+: converted,
    }
  ),
  with_parameter_mixin(value):: (
    local converted = if std.isArray(value) then value else [value];
    {
      parameter+: converted,
    }
  ),
}
