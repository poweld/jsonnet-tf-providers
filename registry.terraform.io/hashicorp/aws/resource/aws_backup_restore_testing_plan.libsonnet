{
  local block = self,
  new(name, schedule_expression):: (
    {}
    + block.with_name(name)
    + block.with_schedule_expression(schedule_expression)
  ),
  with_arn(value):: (
    local converted = value;
    assert std.isString(converted) : '"arn" expected to be of type "string"';
    {
      arn: converted,
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
  with_schedule_expression(value):: (
    local converted = value;
    assert std.isString(converted) : '"schedule_expression" expected to be of type "string"';
    {
      schedule_expression: converted,
    }
  ),
  with_schedule_expression_timezone(value):: (
    local converted = value;
    assert std.isString(converted) : '"schedule_expression_timezone" expected to be of type "string"';
    {
      schedule_expression_timezone: converted,
    }
  ),
  with_start_window_hours(value):: (
    local converted = value;
    assert std.isNumber(converted) : '"start_window_hours" expected to be of type "number"';
    {
      start_window_hours: converted,
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
  recovery_point_selection:: {
    local block = self,
    new(algorithm, include_vaults, recovery_point_types):: (
      {}
      + block.with_algorithm(algorithm)
      + block.with_include_vaults(include_vaults)
      + block.with_recovery_point_types(recovery_point_types)
    ),
    with_algorithm(value):: (
      local converted = value;
      assert std.isString(converted) : '"algorithm" expected to be of type "string"';
      {
        algorithm: converted,
      }
    ),
    with_exclude_vaults(value):: (
      local converted = if std.isArray(value) then value else [value];
      assert (std.isArray(converted) && std.length(std.set(converted)) == std.length(converted)) : '"exclude_vaults" expected to be of type "set"';
      {
        exclude_vaults: converted,
      }
    ),
    with_exclude_vaults_mixin(value):: (
      local converted = if std.isArray(value) then value else [value];
      assert (std.isArray(converted) && std.length(std.set(converted)) == std.length(converted)) : '"exclude_vaults" expected to be of type "set"';
      {
        exclude_vaults+: converted,
      }
    ),
    with_include_vaults(value):: (
      local converted = if std.isArray(value) then value else [value];
      assert (std.isArray(converted) && std.length(std.set(converted)) == std.length(converted)) : '"include_vaults" expected to be of type "set"';
      {
        include_vaults: converted,
      }
    ),
    with_include_vaults_mixin(value):: (
      local converted = if std.isArray(value) then value else [value];
      assert (std.isArray(converted) && std.length(std.set(converted)) == std.length(converted)) : '"include_vaults" expected to be of type "set"';
      {
        include_vaults+: converted,
      }
    ),
    with_recovery_point_types(value):: (
      local converted = if std.isArray(value) then value else [value];
      assert (std.isArray(converted) && std.length(std.set(converted)) == std.length(converted)) : '"recovery_point_types" expected to be of type "set"';
      {
        recovery_point_types: converted,
      }
    ),
    with_recovery_point_types_mixin(value):: (
      local converted = if std.isArray(value) then value else [value];
      assert (std.isArray(converted) && std.length(std.set(converted)) == std.length(converted)) : '"recovery_point_types" expected to be of type "set"';
      {
        recovery_point_types+: converted,
      }
    ),
    with_selection_window_days(value):: (
      local converted = value;
      assert std.isNumber(converted) : '"selection_window_days" expected to be of type "number"';
      {
        selection_window_days: converted,
      }
    ),
  },
  with_recovery_point_selection(value):: (
    local converted = if std.isArray(value) then value else [value];
    {
      recovery_point_selection: value,
    }
  ),
  with_recovery_point_selection_mixin(value):: (
    local converted = if std.isArray(value) then value else [value];
    {
      recovery_point_selection+: converted,
    }
  ),
}
