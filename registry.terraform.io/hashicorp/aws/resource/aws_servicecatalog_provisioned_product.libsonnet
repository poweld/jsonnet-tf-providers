{
  local block = self,
  new(name):: (
    {}
    + block.with_name(name)
  ),
  with_accept_language(value):: (
    local converted = value;
    assert std.isString(converted) : '"accept_language" expected to be of type "string"';
    {
      accept_language: converted,
    }
  ),
  with_arn(value):: (
    local converted = value;
    assert std.isString(converted) : '"arn" expected to be of type "string"';
    {
      arn: converted,
    }
  ),
  with_cloudwatch_dashboard_names(value):: (
    local converted = if std.isArray(value) then value else [value];
    assert (std.isArray(converted) && std.length(std.set(converted)) == std.length(converted)) : '"cloudwatch_dashboard_names" expected to be of type "set"';
    {
      cloudwatch_dashboard_names: converted,
    }
  ),
  with_cloudwatch_dashboard_names_mixin(value):: (
    local converted = if std.isArray(value) then value else [value];
    assert (std.isArray(converted) && std.length(std.set(converted)) == std.length(converted)) : '"cloudwatch_dashboard_names" expected to be of type "set"';
    {
      cloudwatch_dashboard_names+: converted,
    }
  ),
  with_created_time(value):: (
    local converted = value;
    assert std.isString(converted) : '"created_time" expected to be of type "string"';
    {
      created_time: converted,
    }
  ),
  with_id(value):: (
    local converted = value;
    assert std.isString(converted) : '"id" expected to be of type "string"';
    {
      id: converted,
    }
  ),
  with_ignore_errors(value):: (
    local converted = value;
    assert std.isBoolean(converted) : '"ignore_errors" expected to be of type "bool"';
    {
      ignore_errors: converted,
    }
  ),
  with_last_provisioning_record_id(value):: (
    local converted = value;
    assert std.isString(converted) : '"last_provisioning_record_id" expected to be of type "string"';
    {
      last_provisioning_record_id: converted,
    }
  ),
  with_last_record_id(value):: (
    local converted = value;
    assert std.isString(converted) : '"last_record_id" expected to be of type "string"';
    {
      last_record_id: converted,
    }
  ),
  with_last_successful_provisioning_record_id(value):: (
    local converted = value;
    assert std.isString(converted) : '"last_successful_provisioning_record_id" expected to be of type "string"';
    {
      last_successful_provisioning_record_id: converted,
    }
  ),
  with_launch_role_arn(value):: (
    local converted = value;
    assert std.isString(converted) : '"launch_role_arn" expected to be of type "string"';
    {
      launch_role_arn: converted,
    }
  ),
  with_name(value):: (
    local converted = value;
    assert std.isString(converted) : '"name" expected to be of type "string"';
    {
      name: converted,
    }
  ),
  with_notification_arns(value):: (
    local converted = if std.isArray(value) then value else [value];
    assert std.isArray(converted) : '"notification_arns" expected to be of type "list"';
    {
      notification_arns: converted,
    }
  ),
  with_notification_arns_mixin(value):: (
    local converted = if std.isArray(value) then value else [value];
    assert std.isArray(converted) : '"notification_arns" expected to be of type "list"';
    {
      notification_arns+: converted,
    }
  ),
  with_outputs(value):: (
    local converted = if std.isArray(value) then value else [value];
    assert (std.isArray(converted) && std.length(std.set(converted)) == std.length(converted)) : '"outputs" expected to be of type "set"';
    {
      outputs: converted,
    }
  ),
  with_outputs_mixin(value):: (
    local converted = if std.isArray(value) then value else [value];
    assert (std.isArray(converted) && std.length(std.set(converted)) == std.length(converted)) : '"outputs" expected to be of type "set"';
    {
      outputs+: converted,
    }
  ),
  with_path_id(value):: (
    local converted = value;
    assert std.isString(converted) : '"path_id" expected to be of type "string"';
    {
      path_id: converted,
    }
  ),
  with_path_name(value):: (
    local converted = value;
    assert std.isString(converted) : '"path_name" expected to be of type "string"';
    {
      path_name: converted,
    }
  ),
  with_product_id(value):: (
    local converted = value;
    assert std.isString(converted) : '"product_id" expected to be of type "string"';
    {
      product_id: converted,
    }
  ),
  with_product_name(value):: (
    local converted = value;
    assert std.isString(converted) : '"product_name" expected to be of type "string"';
    {
      product_name: converted,
    }
  ),
  with_provisioning_artifact_id(value):: (
    local converted = value;
    assert std.isString(converted) : '"provisioning_artifact_id" expected to be of type "string"';
    {
      provisioning_artifact_id: converted,
    }
  ),
  with_provisioning_artifact_name(value):: (
    local converted = value;
    assert std.isString(converted) : '"provisioning_artifact_name" expected to be of type "string"';
    {
      provisioning_artifact_name: converted,
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
  with_retain_physical_resources(value):: (
    local converted = value;
    assert std.isBoolean(converted) : '"retain_physical_resources" expected to be of type "bool"';
    {
      retain_physical_resources: converted,
    }
  ),
  with_status(value):: (
    local converted = value;
    assert std.isString(converted) : '"status" expected to be of type "string"';
    {
      status: converted,
    }
  ),
  with_status_message(value):: (
    local converted = value;
    assert std.isString(converted) : '"status_message" expected to be of type "string"';
    {
      status_message: converted,
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
  with_type(value):: (
    local converted = value;
    assert std.isString(converted) : '"type" expected to be of type "string"';
    {
      type: converted,
    }
  ),
  provisioning_parameters:: {
    local block = self,
    new(key):: (
      {}
      + block.with_key(key)
    ),
    with_key(value):: (
      local converted = value;
      assert std.isString(converted) : '"key" expected to be of type "string"';
      {
        key: converted,
      }
    ),
    with_use_previous_value(value):: (
      local converted = value;
      assert std.isBoolean(converted) : '"use_previous_value" expected to be of type "bool"';
      {
        use_previous_value: converted,
      }
    ),
    with_value(value):: (
      local converted = value;
      assert std.isString(converted) : '"value" expected to be of type "string"';
      {
        value: converted,
      }
    ),
  },
  stack_set_provisioning_preferences:: {
    local block = self,
    new():: (
      {}
    ),
    with_accounts(value):: (
      local converted = if std.isArray(value) then value else [value];
      assert std.isArray(converted) : '"accounts" expected to be of type "list"';
      {
        accounts: converted,
      }
    ),
    with_accounts_mixin(value):: (
      local converted = if std.isArray(value) then value else [value];
      assert std.isArray(converted) : '"accounts" expected to be of type "list"';
      {
        accounts+: converted,
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
    with_max_concurrency_count(value):: (
      local converted = value;
      assert std.isNumber(converted) : '"max_concurrency_count" expected to be of type "number"';
      {
        max_concurrency_count: converted,
      }
    ),
    with_max_concurrency_percentage(value):: (
      local converted = value;
      assert std.isNumber(converted) : '"max_concurrency_percentage" expected to be of type "number"';
      {
        max_concurrency_percentage: converted,
      }
    ),
    with_regions(value):: (
      local converted = if std.isArray(value) then value else [value];
      assert std.isArray(converted) : '"regions" expected to be of type "list"';
      {
        regions: converted,
      }
    ),
    with_regions_mixin(value):: (
      local converted = if std.isArray(value) then value else [value];
      assert std.isArray(converted) : '"regions" expected to be of type "list"';
      {
        regions+: converted,
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
    with_read(value):: (
      local converted = value;
      assert std.isString(converted) : '"read" expected to be of type "string"';
      {
        read: converted,
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
  with_provisioning_parameters(value):: (
    local converted = if std.isArray(value) then value else [value];
    {
      provisioning_parameters: value,
    }
  ),
  with_stack_set_provisioning_preferences(value):: (
    local converted = if std.isArray(value) then value else [value];
    {
      stack_set_provisioning_preferences: value,
    }
  ),
  with_timeouts(value):: (
    local converted = value;
    {
      timeouts: value,
    }
  ),
  with_provisioning_parameters_mixin(value):: (
    local converted = if std.isArray(value) then value else [value];
    {
      provisioning_parameters+: converted,
    }
  ),
  with_stack_set_provisioning_preferences_mixin(value):: (
    local converted = if std.isArray(value) then value else [value];
    {
      stack_set_provisioning_preferences+: converted,
    }
  ),
}
