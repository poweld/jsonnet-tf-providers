{
  local block = self,
  new(resource_type):: (
    {}
    + block.with_resource_type(resource_type)
  ),
  with_enhanced_infrastructure_metrics(value):: (
    local converted = value;
    assert std.isString(converted) : '"enhanced_infrastructure_metrics" expected to be of type "string"';
    {
      enhanced_infrastructure_metrics: converted,
    }
  ),
  with_id(value):: (
    local converted = value;
    assert std.isString(converted) : '"id" expected to be of type "string"';
    {
      id: converted,
    }
  ),
  with_inferred_workload_types(value):: (
    local converted = value;
    assert std.isString(converted) : '"inferred_workload_types" expected to be of type "string"';
    {
      inferred_workload_types: converted,
    }
  ),
  with_look_back_period(value):: (
    local converted = value;
    assert std.isString(converted) : '"look_back_period" expected to be of type "string"';
    {
      look_back_period: converted,
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
  with_savings_estimation_mode(value):: (
    local converted = value;
    assert std.isString(converted) : '"savings_estimation_mode" expected to be of type "string"';
    {
      savings_estimation_mode: converted,
    }
  ),
  external_metrics_preference:: {
    local block = self,
    new(source):: (
      {}
      + block.with_source(source)
    ),
    with_source(value):: (
      local converted = value;
      assert std.isString(converted) : '"source" expected to be of type "string"';
      {
        source: converted,
      }
    ),
  },
  preferred_resource:: {
    local block = self,
    new(name):: (
      {}
      + block.with_name(name)
    ),
    with_exclude_list(value):: (
      local converted = if std.isArray(value) then value else [value];
      assert (std.isArray(converted) && std.length(std.set(converted)) == std.length(converted)) : '"exclude_list" expected to be of type "set"';
      {
        exclude_list: converted,
      }
    ),
    with_exclude_list_mixin(value):: (
      local converted = if std.isArray(value) then value else [value];
      assert (std.isArray(converted) && std.length(std.set(converted)) == std.length(converted)) : '"exclude_list" expected to be of type "set"';
      {
        exclude_list+: converted,
      }
    ),
    with_include_list(value):: (
      local converted = if std.isArray(value) then value else [value];
      assert (std.isArray(converted) && std.length(std.set(converted)) == std.length(converted)) : '"include_list" expected to be of type "set"';
      {
        include_list: converted,
      }
    ),
    with_include_list_mixin(value):: (
      local converted = if std.isArray(value) then value else [value];
      assert (std.isArray(converted) && std.length(std.set(converted)) == std.length(converted)) : '"include_list" expected to be of type "set"';
      {
        include_list+: converted,
      }
    ),
    with_name(value):: (
      local converted = value;
      assert std.isString(converted) : '"name" expected to be of type "string"';
      {
        name: converted,
      }
    ),
  },
  scope:: {
    local block = self,
    new(name, value):: (
      {}
      + block.with_name(name)
      + block.with_value(value)
    ),
    with_name(value):: (
      local converted = value;
      assert std.isString(converted) : '"name" expected to be of type "string"';
      {
        name: converted,
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
  utilization_preference:: {
    local block = self,
    new(metric_name):: (
      {}
      + block.with_metric_name(metric_name)
    ),
    with_metric_name(value):: (
      local converted = value;
      assert std.isString(converted) : '"metric_name" expected to be of type "string"';
      {
        metric_name: converted,
      }
    ),
    metric_parameters:: {
      local block = self,
      new(headroom):: (
        {}
        + block.with_headroom(headroom)
      ),
      with_headroom(value):: (
        local converted = value;
        assert std.isString(converted) : '"headroom" expected to be of type "string"';
        {
          headroom: converted,
        }
      ),
      with_threshold(value):: (
        local converted = value;
        assert std.isString(converted) : '"threshold" expected to be of type "string"';
        {
          threshold: converted,
        }
      ),
    },
    with_metric_parameters(value):: (
      local converted = if std.isArray(value) then value else [value];
      {
        metric_parameters: value,
      }
    ),
    with_metric_parameters_mixin(value):: (
      local converted = if std.isArray(value) then value else [value];
      {
        metric_parameters+: converted,
      }
    ),
  },
  with_external_metrics_preference(value):: (
    local converted = if std.isArray(value) then value else [value];
    {
      external_metrics_preference: value,
    }
  ),
  with_preferred_resource(value):: (
    local converted = if std.isArray(value) then value else [value];
    {
      preferred_resource: value,
    }
  ),
  with_scope(value):: (
    local converted = if std.isArray(value) then value else [value];
    {
      scope: value,
    }
  ),
  with_utilization_preference(value):: (
    local converted = if std.isArray(value) then value else [value];
    {
      utilization_preference: value,
    }
  ),
  with_external_metrics_preference_mixin(value):: (
    local converted = if std.isArray(value) then value else [value];
    {
      external_metrics_preference+: converted,
    }
  ),
  with_preferred_resource_mixin(value):: (
    local converted = if std.isArray(value) then value else [value];
    {
      preferred_resource+: converted,
    }
  ),
  with_scope_mixin(value):: (
    local converted = if std.isArray(value) then value else [value];
    {
      scope+: converted,
    }
  ),
  with_utilization_preference_mixin(value):: (
    local converted = if std.isArray(value) then value else [value];
    {
      utilization_preference+: converted,
    }
  ),
}
