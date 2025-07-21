{
  local block = self,
  new(lambda_function_arn, name, trigger_types):: (
    {}
    + block.with_lambda_function_arn(lambda_function_arn)
    + block.with_name(name)
    + block.with_trigger_types(trigger_types)
  ),
  with_arn(value):: (
    local converted = value;
    assert std.isString(converted) : '"arn" expected to be of type "string"';
    {
      arn: converted,
    }
  ),
  with_description(value):: (
    local converted = value;
    assert std.isString(converted) : '"description" expected to be of type "string"';
    {
      description: converted,
    }
  ),
  with_excluded_accounts(value):: (
    local converted = if std.isArray(value) then value else [value];
    assert (std.isArray(converted) && std.length(std.set(converted)) == std.length(converted)) : '"excluded_accounts" expected to be of type "set"';
    {
      excluded_accounts: converted,
    }
  ),
  with_excluded_accounts_mixin(value):: (
    local converted = if std.isArray(value) then value else [value];
    assert (std.isArray(converted) && std.length(std.set(converted)) == std.length(converted)) : '"excluded_accounts" expected to be of type "set"';
    {
      excluded_accounts+: converted,
    }
  ),
  with_id(value):: (
    local converted = value;
    assert std.isString(converted) : '"id" expected to be of type "string"';
    {
      id: converted,
    }
  ),
  with_input_parameters(value):: (
    local converted = value;
    assert std.isString(converted) : '"input_parameters" expected to be of type "string"';
    {
      input_parameters: converted,
    }
  ),
  with_lambda_function_arn(value):: (
    local converted = value;
    assert std.isString(converted) : '"lambda_function_arn" expected to be of type "string"';
    {
      lambda_function_arn: converted,
    }
  ),
  with_maximum_execution_frequency(value):: (
    local converted = value;
    assert std.isString(converted) : '"maximum_execution_frequency" expected to be of type "string"';
    {
      maximum_execution_frequency: converted,
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
  with_resource_id_scope(value):: (
    local converted = value;
    assert std.isString(converted) : '"resource_id_scope" expected to be of type "string"';
    {
      resource_id_scope: converted,
    }
  ),
  with_resource_types_scope(value):: (
    local converted = if std.isArray(value) then value else [value];
    assert (std.isArray(converted) && std.length(std.set(converted)) == std.length(converted)) : '"resource_types_scope" expected to be of type "set"';
    {
      resource_types_scope: converted,
    }
  ),
  with_resource_types_scope_mixin(value):: (
    local converted = if std.isArray(value) then value else [value];
    assert (std.isArray(converted) && std.length(std.set(converted)) == std.length(converted)) : '"resource_types_scope" expected to be of type "set"';
    {
      resource_types_scope+: converted,
    }
  ),
  with_tag_key_scope(value):: (
    local converted = value;
    assert std.isString(converted) : '"tag_key_scope" expected to be of type "string"';
    {
      tag_key_scope: converted,
    }
  ),
  with_tag_value_scope(value):: (
    local converted = value;
    assert std.isString(converted) : '"tag_value_scope" expected to be of type "string"';
    {
      tag_value_scope: converted,
    }
  ),
  with_trigger_types(value):: (
    local converted = if std.isArray(value) then value else [value];
    assert (std.isArray(converted) && std.length(std.set(converted)) == std.length(converted)) : '"trigger_types" expected to be of type "set"';
    {
      trigger_types: converted,
    }
  ),
  with_trigger_types_mixin(value):: (
    local converted = if std.isArray(value) then value else [value];
    assert (std.isArray(converted) && std.length(std.set(converted)) == std.length(converted)) : '"trigger_types" expected to be of type "set"';
    {
      trigger_types+: converted,
    }
  ),
  timeouts:: {
    local block = self,
    new():: (
      {}
    ),
    with_create(value):: (
      local converted = value;
      assert std.isString(converted) : '"create" expected to be of type "string"';
      {
        create: converted,
      }
    ),
    with_delete(value):: (
      local converted = value;
      assert std.isString(converted) : '"delete" expected to be of type "string"';
      {
        delete: converted,
      }
    ),
    with_update(value):: (
      local converted = value;
      assert std.isString(converted) : '"update" expected to be of type "string"';
      {
        update: converted,
      }
    ),
  },
  with_timeouts(value):: (
    local converted = value;
    {
      timeouts: value,
    }
  ),
}
