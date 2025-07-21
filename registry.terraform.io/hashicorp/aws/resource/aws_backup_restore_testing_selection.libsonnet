{
  local block = self,
  new(iam_role_arn, name, protected_resource_type, restore_testing_plan_name):: (
    {}
    + block.with_iam_role_arn(iam_role_arn)
    + block.with_name(name)
    + block.with_protected_resource_type(protected_resource_type)
    + block.with_restore_testing_plan_name(restore_testing_plan_name)
  ),
  with_iam_role_arn(value):: (
    local converted = value;
    assert std.isString(converted) : '"iam_role_arn" expected to be of type "string"';
    {
      iam_role_arn: converted,
    }
  ),
  with_name(value):: (
    local converted = value;
    assert std.isString(converted) : '"name" expected to be of type "string"';
    {
      name: converted,
    }
  ),
  with_protected_resource_arns(value):: (
    local converted = if std.isArray(value) then value else [value];
    assert (std.isArray(converted) && std.length(std.set(converted)) == std.length(converted)) : '"protected_resource_arns" expected to be of type "set"';
    {
      protected_resource_arns: converted,
    }
  ),
  with_protected_resource_arns_mixin(value):: (
    local converted = if std.isArray(value) then value else [value];
    assert (std.isArray(converted) && std.length(std.set(converted)) == std.length(converted)) : '"protected_resource_arns" expected to be of type "set"';
    {
      protected_resource_arns+: converted,
    }
  ),
  with_protected_resource_type(value):: (
    local converted = value;
    assert std.isString(converted) : '"protected_resource_type" expected to be of type "string"';
    {
      protected_resource_type: converted,
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
  with_restore_metadata_overrides(value):: (
    local converted = value;
    assert std.isObject(converted) : '"restore_metadata_overrides" expected to be of type "map"';
    {
      restore_metadata_overrides: converted,
    }
  ),
  with_restore_testing_plan_name(value):: (
    local converted = value;
    assert std.isString(converted) : '"restore_testing_plan_name" expected to be of type "string"';
    {
      restore_testing_plan_name: converted,
    }
  ),
  with_validation_window_hours(value):: (
    local converted = value;
    assert std.isNumber(converted) : '"validation_window_hours" expected to be of type "number"';
    {
      validation_window_hours: converted,
    }
  ),
  protected_resource_conditions:: {
    local block = self,
    new():: (
      {}
    ),
    string_equals:: {
      local block = self,
      new(key, value):: (
        {}
        + block.with_key(key)
        + block.with_value(value)
      ),
      with_key(value):: (
        local converted = value;
        assert std.isString(converted) : '"key" expected to be of type "string"';
        {
          key: converted,
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
    string_not_equals:: {
      local block = self,
      new(key, value):: (
        {}
        + block.with_key(key)
        + block.with_value(value)
      ),
      with_key(value):: (
        local converted = value;
        assert std.isString(converted) : '"key" expected to be of type "string"';
        {
          key: converted,
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
    with_string_equals(value):: (
      local converted = if std.isArray(value) then value else [value];
      {
        string_equals: value,
      }
    ),
    with_string_not_equals(value):: (
      local converted = if std.isArray(value) then value else [value];
      {
        string_not_equals: value,
      }
    ),
    with_string_equals_mixin(value):: (
      local converted = if std.isArray(value) then value else [value];
      {
        string_equals+: converted,
      }
    ),
    with_string_not_equals_mixin(value):: (
      local converted = if std.isArray(value) then value else [value];
      {
        string_not_equals+: converted,
      }
    ),
  },
  with_protected_resource_conditions(value):: (
    local converted = if std.isArray(value) then value else [value];
    {
      protected_resource_conditions: value,
    }
  ),
  with_protected_resource_conditions_mixin(value):: (
    local converted = if std.isArray(value) then value else [value];
    {
      protected_resource_conditions+: converted,
    }
  ),
}
