{
  local block = self,
  new(stack_set_name):: (
    {}
    + block.with_stack_set_name(stack_set_name)
  ),
  with_account_id(value):: (
    local converted = value;
    assert std.isString(converted) : '"account_id" expected to be of type "string"';
    {
      account_id: converted,
    }
  ),
  with_call_as(value):: (
    local converted = value;
    assert std.isString(converted) : '"call_as" expected to be of type "string"';
    {
      call_as: converted,
    }
  ),
  with_id(value):: (
    local converted = value;
    assert std.isString(converted) : '"id" expected to be of type "string"';
    {
      id: converted,
    }
  ),
  with_organizational_unit_id(value):: (
    local converted = value;
    assert std.isString(converted) : '"organizational_unit_id" expected to be of type "string"';
    {
      organizational_unit_id: converted,
    }
  ),
  with_parameter_overrides(value):: (
    local converted = value;
    assert std.isObject(converted) : '"parameter_overrides" expected to be of type "map"';
    {
      parameter_overrides: converted,
    }
  ),
  with_region(value):: (
    local converted = value;
    assert std.isString(converted) : '"region" expected to be of type "string"';
    {
      region: converted,
    }
  ),
  with_retain_stack(value):: (
    local converted = value;
    assert std.isBoolean(converted) : '"retain_stack" expected to be of type "bool"';
    {
      retain_stack: converted,
    }
  ),
  with_stack_id(value):: (
    local converted = value;
    assert std.isString(converted) : '"stack_id" expected to be of type "string"';
    {
      stack_id: converted,
    }
  ),
  '#with_stack_instance_summaries':: 'List of stack instances created from an organizational unit deployment target. This will only be populated when `deployment_targets` is set.',
  with_stack_instance_summaries(value):: (
    local converted = if std.isArray(value) then value else [value];
    assert std.isArray(converted) : '"stack_instance_summaries" expected to be of type "list"';
    {
      stack_instance_summaries: converted,
    }
  ),
  '#with_stack_instance_summaries_mixin':: 'List of stack instances created from an organizational unit deployment target. This will only be populated when `deployment_targets` is set.',
  with_stack_instance_summaries_mixin(value):: (
    local converted = if std.isArray(value) then value else [value];
    assert std.isArray(converted) : '"stack_instance_summaries" expected to be of type "list"';
    {
      stack_instance_summaries+: converted,
    }
  ),
  with_stack_set_instance_region(value):: (
    local converted = value;
    assert std.isString(converted) : '"stack_set_instance_region" expected to be of type "string"';
    {
      stack_set_instance_region: converted,
    }
  ),
  with_stack_set_name(value):: (
    local converted = value;
    assert std.isString(converted) : '"stack_set_name" expected to be of type "string"';
    {
      stack_set_name: converted,
    }
  ),
  deployment_targets:: {
    local block = self,
    new():: (
      {}
    ),
    with_account_filter_type(value):: (
      local converted = value;
      assert std.isString(converted) : '"account_filter_type" expected to be of type "string"';
      {
        account_filter_type: converted,
      }
    ),
    with_accounts(value):: (
      local converted = if std.isArray(value) then value else [value];
      assert (std.isArray(converted) && std.length(std.set(converted)) == std.length(converted)) : '"accounts" expected to be of type "set"';
      {
        accounts: converted,
      }
    ),
    with_accounts_mixin(value):: (
      local converted = if std.isArray(value) then value else [value];
      assert (std.isArray(converted) && std.length(std.set(converted)) == std.length(converted)) : '"accounts" expected to be of type "set"';
      {
        accounts+: converted,
      }
    ),
    with_accounts_url(value):: (
      local converted = value;
      assert std.isString(converted) : '"accounts_url" expected to be of type "string"';
      {
        accounts_url: converted,
      }
    ),
    with_organizational_unit_ids(value):: (
      local converted = if std.isArray(value) then value else [value];
      assert (std.isArray(converted) && std.length(std.set(converted)) == std.length(converted)) : '"organizational_unit_ids" expected to be of type "set"';
      {
        organizational_unit_ids: converted,
      }
    ),
    with_organizational_unit_ids_mixin(value):: (
      local converted = if std.isArray(value) then value else [value];
      assert (std.isArray(converted) && std.length(std.set(converted)) == std.length(converted)) : '"organizational_unit_ids" expected to be of type "set"';
      {
        organizational_unit_ids+: converted,
      }
    ),
  },
  operation_preferences:: {
    local block = self,
    new():: (
      {}
    ),
    with_concurrency_mode(value):: (
      local converted = value;
      assert std.isString(converted) : '"concurrency_mode" expected to be of type "string"';
      {
        concurrency_mode: converted,
      }
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
  with_deployment_targets(value):: (
    local converted = if std.isArray(value) then value else [value];
    {
      deployment_targets: value,
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
  with_deployment_targets_mixin(value):: (
    local converted = if std.isArray(value) then value else [value];
    {
      deployment_targets+: converted,
    }
  ),
  with_operation_preferences_mixin(value):: (
    local converted = if std.isArray(value) then value else [value];
    {
      operation_preferences+: converted,
    }
  ),
}
