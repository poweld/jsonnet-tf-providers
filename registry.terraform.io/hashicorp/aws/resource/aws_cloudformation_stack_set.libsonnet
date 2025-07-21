{
  local block = self,
  new(name):: (
    {}
    + block.with_name(name)
  ),
  with_administration_role_arn(value):: (
    local converted = value;
    assert std.isString(converted) : '"administration_role_arn" expected to be of type "string"';
    {
      administration_role_arn: converted,
    }
  ),
  with_arn(value):: (
    local converted = value;
    assert std.isString(converted) : '"arn" expected to be of type "string"';
    {
      arn: converted,
    }
  ),
  with_call_as(value):: (
    local converted = value;
    assert std.isString(converted) : '"call_as" expected to be of type "string"';
    {
      call_as: converted,
    }
  ),
  with_capabilities(value):: (
    local converted = if std.isArray(value) then value else [value];
    assert (std.isArray(converted) && std.length(std.set(converted)) == std.length(converted)) : '"capabilities" expected to be of type "set"';
    {
      capabilities: converted,
    }
  ),
  with_capabilities_mixin(value):: (
    local converted = if std.isArray(value) then value else [value];
    assert (std.isArray(converted) && std.length(std.set(converted)) == std.length(converted)) : '"capabilities" expected to be of type "set"';
    {
      capabilities+: converted,
    }
  ),
  with_description(value):: (
    local converted = value;
    assert std.isString(converted) : '"description" expected to be of type "string"';
    {
      description: converted,
    }
  ),
  with_execution_role_name(value):: (
    local converted = value;
    assert std.isString(converted) : '"execution_role_name" expected to be of type "string"';
    {
      execution_role_name: converted,
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
  with_parameters(value):: (
    local converted = value;
    assert std.isObject(converted) : '"parameters" expected to be of type "map"';
    {
      parameters: converted,
    }
  ),
  with_permission_model(value):: (
    local converted = value;
    assert std.isString(converted) : '"permission_model" expected to be of type "string"';
    {
      permission_model: converted,
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
  with_stack_set_id(value):: (
    local converted = value;
    assert std.isString(converted) : '"stack_set_id" expected to be of type "string"';
    {
      stack_set_id: converted,
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
  with_template_body(value):: (
    local converted = value;
    assert std.isString(converted) : '"template_body" expected to be of type "string"';
    {
      template_body: converted,
    }
  ),
  with_template_url(value):: (
    local converted = value;
    assert std.isString(converted) : '"template_url" expected to be of type "string"';
    {
      template_url: converted,
    }
  ),
  auto_deployment:: {
    local block = self,
    new():: (
      {}
    ),
    with_enabled(value):: (
      local converted = value;
      assert std.isBoolean(converted) : '"enabled" expected to be of type "bool"';
      {
        enabled: converted,
      }
    ),
    with_retain_stacks_on_account_removal(value):: (
      local converted = value;
      assert std.isBoolean(converted) : '"retain_stacks_on_account_removal" expected to be of type "bool"';
      {
        retain_stacks_on_account_removal: converted,
      }
    ),
  },
  managed_execution:: {
    local block = self,
    new():: (
      {}
    ),
    with_active(value):: (
      local converted = value;
      assert std.isBoolean(converted) : '"active" expected to be of type "bool"';
      {
        active: converted,
      }
    ),
  },
  operation_preferences:: {
    local block = self,
    new():: (
      {}
    ),
    with_failure_tolerance_count(value):: (
      local converted = value;
      assert std.isNumber(converted) : '"failure_tolerance_count" expected to be of type "number"';
      {
        failure_tolerance_count: converted,
      }
    ),
    with_failure_tolerance_percentage(value):: (
      local converted = value;
      assert std.isNumber(converted) : '"failure_tolerance_percentage" expected to be of type "number"';
      {
        failure_tolerance_percentage: converted,
      }
    ),
    with_max_concurrent_count(value):: (
      local converted = value;
      assert std.isNumber(converted) : '"max_concurrent_count" expected to be of type "number"';
      {
        max_concurrent_count: converted,
      }
    ),
    with_max_concurrent_percentage(value):: (
      local converted = value;
      assert std.isNumber(converted) : '"max_concurrent_percentage" expected to be of type "number"';
      {
        max_concurrent_percentage: converted,
      }
    ),
    with_region_concurrency_type(value):: (
      local converted = value;
      assert std.isString(converted) : '"region_concurrency_type" expected to be of type "string"';
      {
        region_concurrency_type: converted,
      }
    ),
    with_region_order(value):: (
      local converted = if std.isArray(value) then value else [value];
      assert std.isArray(converted) : '"region_order" expected to be of type "list"';
      {
        region_order: converted,
      }
    ),
    with_region_order_mixin(value):: (
      local converted = if std.isArray(value) then value else [value];
      assert std.isArray(converted) : '"region_order" expected to be of type "list"';
      {
        region_order+: converted,
      }
    ),
  },
  timeouts:: {
    local block = self,
    new():: (
      {}
    ),
    with_update(value):: (
      local converted = value;
      assert std.isString(converted) : '"update" expected to be of type "string"';
      {
        update: converted,
      }
    ),
  },
  with_auto_deployment(value):: (
    local converted = if std.isArray(value) then value else [value];
    {
      auto_deployment: value,
    }
  ),
  with_managed_execution(value):: (
    local converted = if std.isArray(value) then value else [value];
    {
      managed_execution: value,
    }
  ),
  with_operation_preferences(value):: (
    local converted = if std.isArray(value) then value else [value];
    {
      operation_preferences: value,
    }
  ),
  with_timeouts(value):: (
    local converted = value;
    {
      timeouts: value,
    }
  ),
  with_auto_deployment_mixin(value):: (
    local converted = if std.isArray(value) then value else [value];
    {
      auto_deployment+: converted,
    }
  ),
  with_managed_execution_mixin(value):: (
    local converted = if std.isArray(value) then value else [value];
    {
      managed_execution+: converted,
    }
  ),
  with_operation_preferences_mixin(value):: (
    local converted = if std.isArray(value) then value else [value];
    {
      operation_preferences+: converted,
    }
  ),
}
