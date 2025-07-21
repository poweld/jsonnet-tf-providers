{
  local block = self,
  new(workspace_id):: (
    {}
    + block.with_workspace_id(workspace_id)
  ),
  '#with_region':: 'Region where this resource will be [managed](https://docs.aws.amazon.com/general/latest/gr/rande.html#regional-endpoints). Defaults to the Region set in the [provider configuration](https://registry.terraform.io/providers/hashicorp/aws/latest/docs#aws-configuration-reference).',
  with_region(value):: (
    local converted = value;
    assert std.isString(converted) : '"region" expected to be of type "string"';
    {
      region: converted,
    }
  ),
  with_retention_period_in_days(value):: (
    local converted = value;
    assert std.isNumber(converted) : '"retention_period_in_days" expected to be of type "number"';
    {
      retention_period_in_days: converted,
    }
  ),
  with_workspace_id(value):: (
    local converted = value;
    assert std.isString(converted) : '"workspace_id" expected to be of type "string"';
    {
      workspace_id: converted,
    }
  ),
  limits_per_label_set:: {
    local block = self,
    new(label_set):: (
      {}
      + block.with_label_set(label_set)
    ),
    with_label_set(value):: (
      local converted = value;
      assert std.isObject(converted) : '"label_set" expected to be of type "map"';
      {
        label_set: converted,
      }
    ),
    limits:: {
      local block = self,
      new(max_series):: (
        {}
        + block.with_max_series(max_series)
      ),
      with_max_series(value):: (
        local converted = value;
        assert std.isNumber(converted) : '"max_series" expected to be of type "number"';
        {
          max_series: converted,
        }
      ),
    },
    with_limits(value):: (
      local converted = if std.isArray(value) then value else [value];
      {
        limits: value,
      }
    ),
    with_limits_mixin(value):: (
      local converted = if std.isArray(value) then value else [value];
      {
        limits+: converted,
      }
    ),
  },
  timeouts:: {
    local block = self,
    new():: (
      {}
    ),
    '#with_create':: "A string that can be [parsed as a duration](https://pkg.go.dev/time#ParseDuration) consisting of numbers and unit suffixes, such as '30s' or '2h45m'. Valid time units are 's' (seconds), 'm' (minutes), 'h' (hours).",
    with_create(value):: (
      local converted = value;
      assert std.isString(converted) : '"create" expected to be of type "string"';
      {
        create: converted,
      }
    ),
    '#with_update':: "A string that can be [parsed as a duration](https://pkg.go.dev/time#ParseDuration) consisting of numbers and unit suffixes, such as '30s' or '2h45m'. Valid time units are 's' (seconds), 'm' (minutes), 'h' (hours).",
    with_update(value):: (
      local converted = value;
      assert std.isString(converted) : '"update" expected to be of type "string"';
      {
        update: converted,
      }
    ),
  },
  with_limits_per_label_set(value):: (
    local converted = if std.isArray(value) then value else [value];
    {
      limits_per_label_set: value,
    }
  ),
  with_timeouts(value):: (
    local converted = value;
    {
      timeouts: value,
    }
  ),
  with_limits_per_label_set_mixin(value):: (
    local converted = if std.isArray(value) then value else [value];
    {
      limits_per_label_set+: converted,
    }
  ),
}
