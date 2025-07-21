{
  local block = self,
  new(autoscaling_group_name, name):: (
    {}
    + block.with_autoscaling_group_name(autoscaling_group_name)
    + block.with_name(name)
  ),
  with_adjustment_type(value):: (
    local converted = value;
    assert std.isString(converted) : '"adjustment_type" expected to be of type "string"';
    {
      adjustment_type: converted,
    }
  ),
  with_arn(value):: (
    local converted = value;
    assert std.isString(converted) : '"arn" expected to be of type "string"';
    {
      arn: converted,
    }
  ),
  with_autoscaling_group_name(value):: (
    local converted = value;
    assert std.isString(converted) : '"autoscaling_group_name" expected to be of type "string"';
    {
      autoscaling_group_name: converted,
    }
  ),
  with_cooldown(value):: (
    local converted = value;
    assert std.isNumber(converted) : '"cooldown" expected to be of type "number"';
    {
      cooldown: converted,
    }
  ),
  with_enabled(value):: (
    local converted = value;
    assert std.isBoolean(converted) : '"enabled" expected to be of type "bool"';
    {
      enabled: converted,
    }
  ),
  with_estimated_instance_warmup(value):: (
    local converted = value;
    assert std.isNumber(converted) : '"estimated_instance_warmup" expected to be of type "number"';
    {
      estimated_instance_warmup: converted,
    }
  ),
  with_id(value):: (
    local converted = value;
    assert std.isString(converted) : '"id" expected to be of type "string"';
    {
      id: converted,
    }
  ),
  with_metric_aggregation_type(value):: (
    local converted = value;
    assert std.isString(converted) : '"metric_aggregation_type" expected to be of type "string"';
    {
      metric_aggregation_type: converted,
    }
  ),
  with_min_adjustment_magnitude(value):: (
    local converted = value;
    assert std.isNumber(converted) : '"min_adjustment_magnitude" expected to be of type "number"';
    {
      min_adjustment_magnitude: converted,
    }
  ),
  with_name(value):: (
    local converted = value;
    assert std.isString(converted) : '"name" expected to be of type "string"';
    {
      name: converted,
    }
  ),
  with_policy_type(value):: (
    local converted = value;
    assert std.isString(converted) : '"policy_type" expected to be of type "string"';
    {
      policy_type: converted,
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
  with_scaling_adjustment(value):: (
    local converted = value;
    assert std.isNumber(converted) : '"scaling_adjustment" expected to be of type "number"';
    {
      scaling_adjustment: converted,
    }
  ),
  predictive_scaling_configuration:: {
    local block = self,
    new():: (
      {}
    ),
    with_max_capacity_breach_behavior(value):: (
      local converted = value;
      assert std.isString(converted) : '"max_capacity_breach_behavior" expected to be of type "string"';
      {
        max_capacity_breach_behavior: converted,
      }
    ),
    with_max_capacity_buffer(value):: (
      local converted = value;
      assert std.isString(converted) : '"max_capacity_buffer" expected to be of type "string"';
      {
        max_capacity_buffer: converted,
      }
    ),
    with_mode(value):: (
      local converted = value;
      assert std.isString(converted) : '"mode" expected to be of type "string"';
      {
        mode: converted,
      }
    ),
    with_scheduling_buffer_time(value):: (
      local converted = value;
      assert std.isString(converted) : '"scheduling_buffer_time" expected to be of type "string"';
      {
        scheduling_buffer_time: converted,
      }
    ),
    metric_specification:: {
      local block = self,
      new(target_value):: (
        {}
        + block.with_target_value(target_value)
      ),
      with_target_value(value):: (
        local converted = value;
        assert std.isNumber(converted) : '"target_value" expected to be of type "number"';
        {
          target_value: converted,
        }
      ),
      customized_capacity_metric_specification:: {
        local block = self,
        new():: (
          {}
        ),
        metric_data_queries:: {
          local block = self,
          new(id):: (
            {}
            + block.with_id(id)
          ),
          with_expression(value):: (
            local converted = value;
            assert std.isString(converted) : '"expression" expected to be of type "string"';
            {
              expression: converted,
            }
          ),
          with_id(value):: (
            local converted = value;
            assert std.isString(converted) : '"id" expected to be of type "string"';
            {
              id: converted,
            }
          ),
          with_label(value):: (
            local converted = value;
            assert std.isString(converted) : '"label" expected to be of type "string"';
            {
              label: converted,
            }
          ),
          with_return_data(value):: (
            local converted = value;
            assert std.isBoolean(converted) : '"return_data" expected to be of type "bool"';
            {
              return_data: converted,
            }
          ),
          metric_stat:: {
            local block = self,
            new(stat):: (
              {}
              + block.with_stat(stat)
            ),
            with_stat(value):: (
              local converted = value;
              assert std.isString(converted) : '"stat" expected to be of type "string"';
              {
                stat: converted,
              }
            ),
            with_unit(value):: (
              local converted = value;
              assert std.isString(converted) : '"unit" expected to be of type "string"';
              {
                unit: converted,
              }
            ),
            metric:: {
              local block = self,
              new(metric_name, namespace):: (
                {}
                + block.with_metric_name(metric_name)
                + block.with_namespace(namespace)
              ),
              with_metric_name(value):: (
                local converted = value;
                assert std.isString(converted) : '"metric_name" expected to be of type "string"';
                {
                  metric_name: converted,
                }
              ),
              with_namespace(value):: (
                local converted = value;
                assert std.isString(converted) : '"namespace" expected to be of type "string"';
                {
                  namespace: converted,
                }
              ),
              dimensions:: {
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
              with_dimensions(value):: (
                local converted = if std.isArray(value) then value else [value];
                {
                  dimensions: value,
                }
              ),
              with_dimensions_mixin(value):: (
                local converted = if std.isArray(value) then value else [value];
                {
                  dimensions+: converted,
                }
              ),
            },
            with_metric(value):: (
              local converted = if std.isArray(value) then value else [value];
              {
                metric: value,
              }
            ),
            with_metric_mixin(value):: (
              local converted = if std.isArray(value) then value else [value];
              {
                metric+: converted,
              }
            ),
          },
          with_metric_stat(value):: (
            local converted = if std.isArray(value) then value else [value];
            {
              metric_stat: value,
            }
          ),
          with_metric_stat_mixin(value):: (
            local converted = if std.isArray(value) then value else [value];
            {
              metric_stat+: converted,
            }
          ),
        },
        with_metric_data_queries(value):: (
          local converted = if std.isArray(value) then value else [value];
          {
            metric_data_queries: value,
          }
        ),
        with_metric_data_queries_mixin(value):: (
          local converted = if std.isArray(value) then value else [value];
          {
            metric_data_queries+: converted,
          }
        ),
      },
      customized_load_metric_specification:: {
        local block = self,
        new():: (
          {}
        ),
        metric_data_queries:: {
          local block = self,
          new(id):: (
            {}
            + block.with_id(id)
          ),
          with_expression(value):: (
            local converted = value;
            assert std.isString(converted) : '"expression" expected to be of type "string"';
            {
              expression: converted,
            }
          ),
          with_id(value):: (
            local converted = value;
            assert std.isString(converted) : '"id" expected to be of type "string"';
            {
              id: converted,
            }
          ),
          with_label(value):: (
            local converted = value;
            assert std.isString(converted) : '"label" expected to be of type "string"';
            {
              label: converted,
            }
          ),
          with_return_data(value):: (
            local converted = value;
            assert std.isBoolean(converted) : '"return_data" expected to be of type "bool"';
            {
              return_data: converted,
            }
          ),
          metric_stat:: {
            local block = self,
            new(stat):: (
              {}
              + block.with_stat(stat)
            ),
            with_stat(value):: (
              local converted = value;
              assert std.isString(converted) : '"stat" expected to be of type "string"';
              {
                stat: converted,
              }
            ),
            with_unit(value):: (
              local converted = value;
              assert std.isString(converted) : '"unit" expected to be of type "string"';
              {
                unit: converted,
              }
            ),
            metric:: {
              local block = self,
              new(metric_name, namespace):: (
                {}
                + block.with_metric_name(metric_name)
                + block.with_namespace(namespace)
              ),
              with_metric_name(value):: (
                local converted = value;
                assert std.isString(converted) : '"metric_name" expected to be of type "string"';
                {
                  metric_name: converted,
                }
              ),
              with_namespace(value):: (
                local converted = value;
                assert std.isString(converted) : '"namespace" expected to be of type "string"';
                {
                  namespace: converted,
                }
              ),
              dimensions:: {
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
              with_dimensions(value):: (
                local converted = if std.isArray(value) then value else [value];
                {
                  dimensions: value,
                }
              ),
              with_dimensions_mixin(value):: (
                local converted = if std.isArray(value) then value else [value];
                {
                  dimensions+: converted,
                }
              ),
            },
            with_metric(value):: (
              local converted = if std.isArray(value) then value else [value];
              {
                metric: value,
              }
            ),
            with_metric_mixin(value):: (
              local converted = if std.isArray(value) then value else [value];
              {
                metric+: converted,
              }
            ),
          },
          with_metric_stat(value):: (
            local converted = if std.isArray(value) then value else [value];
            {
              metric_stat: value,
            }
          ),
          with_metric_stat_mixin(value):: (
            local converted = if std.isArray(value) then value else [value];
            {
              metric_stat+: converted,
            }
          ),
        },
        with_metric_data_queries(value):: (
          local converted = if std.isArray(value) then value else [value];
          {
            metric_data_queries: value,
          }
        ),
        with_metric_data_queries_mixin(value):: (
          local converted = if std.isArray(value) then value else [value];
          {
            metric_data_queries+: converted,
          }
        ),
      },
      customized_scaling_metric_specification:: {
        local block = self,
        new():: (
          {}
        ),
        metric_data_queries:: {
          local block = self,
          new(id):: (
            {}
            + block.with_id(id)
          ),
          with_expression(value):: (
            local converted = value;
            assert std.isString(converted) : '"expression" expected to be of type "string"';
            {
              expression: converted,
            }
          ),
          with_id(value):: (
            local converted = value;
            assert std.isString(converted) : '"id" expected to be of type "string"';
            {
              id: converted,
            }
          ),
          with_label(value):: (
            local converted = value;
            assert std.isString(converted) : '"label" expected to be of type "string"';
            {
              label: converted,
            }
          ),
          with_return_data(value):: (
            local converted = value;
            assert std.isBoolean(converted) : '"return_data" expected to be of type "bool"';
            {
              return_data: converted,
            }
          ),
          metric_stat:: {
            local block = self,
            new(stat):: (
              {}
              + block.with_stat(stat)
            ),
            with_stat(value):: (
              local converted = value;
              assert std.isString(converted) : '"stat" expected to be of type "string"';
              {
                stat: converted,
              }
            ),
            with_unit(value):: (
              local converted = value;
              assert std.isString(converted) : '"unit" expected to be of type "string"';
              {
                unit: converted,
              }
            ),
            metric:: {
              local block = self,
              new(metric_name, namespace):: (
                {}
                + block.with_metric_name(metric_name)
                + block.with_namespace(namespace)
              ),
              with_metric_name(value):: (
                local converted = value;
                assert std.isString(converted) : '"metric_name" expected to be of type "string"';
                {
                  metric_name: converted,
                }
              ),
              with_namespace(value):: (
                local converted = value;
                assert std.isString(converted) : '"namespace" expected to be of type "string"';
                {
                  namespace: converted,
                }
              ),
              dimensions:: {
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
              with_dimensions(value):: (
                local converted = if std.isArray(value) then value else [value];
                {
                  dimensions: value,
                }
              ),
              with_dimensions_mixin(value):: (
                local converted = if std.isArray(value) then value else [value];
                {
                  dimensions+: converted,
                }
              ),
            },
            with_metric(value):: (
              local converted = if std.isArray(value) then value else [value];
              {
                metric: value,
              }
            ),
            with_metric_mixin(value):: (
              local converted = if std.isArray(value) then value else [value];
              {
                metric+: converted,
              }
            ),
          },
          with_metric_stat(value):: (
            local converted = if std.isArray(value) then value else [value];
            {
              metric_stat: value,
            }
          ),
          with_metric_stat_mixin(value):: (
            local converted = if std.isArray(value) then value else [value];
            {
              metric_stat+: converted,
            }
          ),
        },
        with_metric_data_queries(value):: (
          local converted = if std.isArray(value) then value else [value];
          {
            metric_data_queries: value,
          }
        ),
        with_metric_data_queries_mixin(value):: (
          local converted = if std.isArray(value) then value else [value];
          {
            metric_data_queries+: converted,
          }
        ),
      },
      predefined_load_metric_specification:: {
        local block = self,
        new(predefined_metric_type):: (
          {}
          + block.with_predefined_metric_type(predefined_metric_type)
        ),
        with_predefined_metric_type(value):: (
          local converted = value;
          assert std.isString(converted) : '"predefined_metric_type" expected to be of type "string"';
          {
            predefined_metric_type: converted,
          }
        ),
        with_resource_label(value):: (
          local converted = value;
          assert std.isString(converted) : '"resource_label" expected to be of type "string"';
          {
            resource_label: converted,
          }
        ),
      },
      predefined_metric_pair_specification:: {
        local block = self,
        new(predefined_metric_type):: (
          {}
          + block.with_predefined_metric_type(predefined_metric_type)
        ),
        with_predefined_metric_type(value):: (
          local converted = value;
          assert std.isString(converted) : '"predefined_metric_type" expected to be of type "string"';
          {
            predefined_metric_type: converted,
          }
        ),
        with_resource_label(value):: (
          local converted = value;
          assert std.isString(converted) : '"resource_label" expected to be of type "string"';
          {
            resource_label: converted,
          }
        ),
      },
      predefined_scaling_metric_specification:: {
        local block = self,
        new(predefined_metric_type):: (
          {}
          + block.with_predefined_metric_type(predefined_metric_type)
        ),
        with_predefined_metric_type(value):: (
          local converted = value;
          assert std.isString(converted) : '"predefined_metric_type" expected to be of type "string"';
          {
            predefined_metric_type: converted,
          }
        ),
        with_resource_label(value):: (
          local converted = value;
          assert std.isString(converted) : '"resource_label" expected to be of type "string"';
          {
            resource_label: converted,
          }
        ),
      },
      with_customized_capacity_metric_specification(value):: (
        local converted = if std.isArray(value) then value else [value];
        {
          customized_capacity_metric_specification: value,
        }
      ),
      with_customized_load_metric_specification(value):: (
        local converted = if std.isArray(value) then value else [value];
        {
          customized_load_metric_specification: value,
        }
      ),
      with_customized_scaling_metric_specification(value):: (
        local converted = if std.isArray(value) then value else [value];
        {
          customized_scaling_metric_specification: value,
        }
      ),
      with_predefined_load_metric_specification(value):: (
        local converted = if std.isArray(value) then value else [value];
        {
          predefined_load_metric_specification: value,
        }
      ),
      with_predefined_metric_pair_specification(value):: (
        local converted = if std.isArray(value) then value else [value];
        {
          predefined_metric_pair_specification: value,
        }
      ),
      with_predefined_scaling_metric_specification(value):: (
        local converted = if std.isArray(value) then value else [value];
        {
          predefined_scaling_metric_specification: value,
        }
      ),
      with_customized_capacity_metric_specification_mixin(value):: (
        local converted = if std.isArray(value) then value else [value];
        {
          customized_capacity_metric_specification+: converted,
        }
      ),
      with_customized_load_metric_specification_mixin(value):: (
        local converted = if std.isArray(value) then value else [value];
        {
          customized_load_metric_specification+: converted,
        }
      ),
      with_customized_scaling_metric_specification_mixin(value):: (
        local converted = if std.isArray(value) then value else [value];
        {
          customized_scaling_metric_specification+: converted,
        }
      ),
      with_predefined_load_metric_specification_mixin(value):: (
        local converted = if std.isArray(value) then value else [value];
        {
          predefined_load_metric_specification+: converted,
        }
      ),
      with_predefined_metric_pair_specification_mixin(value):: (
        local converted = if std.isArray(value) then value else [value];
        {
          predefined_metric_pair_specification+: converted,
        }
      ),
      with_predefined_scaling_metric_specification_mixin(value):: (
        local converted = if std.isArray(value) then value else [value];
        {
          predefined_scaling_metric_specification+: converted,
        }
      ),
    },
    with_metric_specification(value):: (
      local converted = if std.isArray(value) then value else [value];
      {
        metric_specification: value,
      }
    ),
    with_metric_specification_mixin(value):: (
      local converted = if std.isArray(value) then value else [value];
      {
        metric_specification+: converted,
      }
    ),
  },
  step_adjustment:: {
    local block = self,
    new(scaling_adjustment):: (
      {}
      + block.with_scaling_adjustment(scaling_adjustment)
    ),
    with_metric_interval_lower_bound(value):: (
      local converted = value;
      assert std.isString(converted) : '"metric_interval_lower_bound" expected to be of type "string"';
      {
        metric_interval_lower_bound: converted,
      }
    ),
    with_metric_interval_upper_bound(value):: (
      local converted = value;
      assert std.isString(converted) : '"metric_interval_upper_bound" expected to be of type "string"';
      {
        metric_interval_upper_bound: converted,
      }
    ),
    with_scaling_adjustment(value):: (
      local converted = value;
      assert std.isNumber(converted) : '"scaling_adjustment" expected to be of type "number"';
      {
        scaling_adjustment: converted,
      }
    ),
  },
  target_tracking_configuration:: {
    local block = self,
    new(target_value):: (
      {}
      + block.with_target_value(target_value)
    ),
    with_disable_scale_in(value):: (
      local converted = value;
      assert std.isBoolean(converted) : '"disable_scale_in" expected to be of type "bool"';
      {
        disable_scale_in: converted,
      }
    ),
    with_target_value(value):: (
      local converted = value;
      assert std.isNumber(converted) : '"target_value" expected to be of type "number"';
      {
        target_value: converted,
      }
    ),
    customized_metric_specification:: {
      local block = self,
      new():: (
        {}
      ),
      with_metric_name(value):: (
        local converted = value;
        assert std.isString(converted) : '"metric_name" expected to be of type "string"';
        {
          metric_name: converted,
        }
      ),
      with_namespace(value):: (
        local converted = value;
        assert std.isString(converted) : '"namespace" expected to be of type "string"';
        {
          namespace: converted,
        }
      ),
      with_period(value):: (
        local converted = value;
        assert std.isNumber(converted) : '"period" expected to be of type "number"';
        {
          period: converted,
        }
      ),
      with_statistic(value):: (
        local converted = value;
        assert std.isString(converted) : '"statistic" expected to be of type "string"';
        {
          statistic: converted,
        }
      ),
      with_unit(value):: (
        local converted = value;
        assert std.isString(converted) : '"unit" expected to be of type "string"';
        {
          unit: converted,
        }
      ),
      metric_dimension:: {
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
      metrics:: {
        local block = self,
        new(id):: (
          {}
          + block.with_id(id)
        ),
        with_expression(value):: (
          local converted = value;
          assert std.isString(converted) : '"expression" expected to be of type "string"';
          {
            expression: converted,
          }
        ),
        with_id(value):: (
          local converted = value;
          assert std.isString(converted) : '"id" expected to be of type "string"';
          {
            id: converted,
          }
        ),
        with_label(value):: (
          local converted = value;
          assert std.isString(converted) : '"label" expected to be of type "string"';
          {
            label: converted,
          }
        ),
        with_return_data(value):: (
          local converted = value;
          assert std.isBoolean(converted) : '"return_data" expected to be of type "bool"';
          {
            return_data: converted,
          }
        ),
        metric_stat:: {
          local block = self,
          new(stat):: (
            {}
            + block.with_stat(stat)
          ),
          with_period(value):: (
            local converted = value;
            assert std.isNumber(converted) : '"period" expected to be of type "number"';
            {
              period: converted,
            }
          ),
          with_stat(value):: (
            local converted = value;
            assert std.isString(converted) : '"stat" expected to be of type "string"';
            {
              stat: converted,
            }
          ),
          with_unit(value):: (
            local converted = value;
            assert std.isString(converted) : '"unit" expected to be of type "string"';
            {
              unit: converted,
            }
          ),
          metric:: {
            local block = self,
            new(metric_name, namespace):: (
              {}
              + block.with_metric_name(metric_name)
              + block.with_namespace(namespace)
            ),
            with_metric_name(value):: (
              local converted = value;
              assert std.isString(converted) : '"metric_name" expected to be of type "string"';
              {
                metric_name: converted,
              }
            ),
            with_namespace(value):: (
              local converted = value;
              assert std.isString(converted) : '"namespace" expected to be of type "string"';
              {
                namespace: converted,
              }
            ),
            dimensions:: {
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
            with_dimensions(value):: (
              local converted = if std.isArray(value) then value else [value];
              {
                dimensions: value,
              }
            ),
            with_dimensions_mixin(value):: (
              local converted = if std.isArray(value) then value else [value];
              {
                dimensions+: converted,
              }
            ),
          },
          with_metric(value):: (
            local converted = if std.isArray(value) then value else [value];
            {
              metric: value,
            }
          ),
          with_metric_mixin(value):: (
            local converted = if std.isArray(value) then value else [value];
            {
              metric+: converted,
            }
          ),
        },
        with_metric_stat(value):: (
          local converted = if std.isArray(value) then value else [value];
          {
            metric_stat: value,
          }
        ),
        with_metric_stat_mixin(value):: (
          local converted = if std.isArray(value) then value else [value];
          {
            metric_stat+: converted,
          }
        ),
      },
      with_metric_dimension(value):: (
        local converted = if std.isArray(value) then value else [value];
        {
          metric_dimension: value,
        }
      ),
      with_metrics(value):: (
        local converted = if std.isArray(value) then value else [value];
        {
          metrics: value,
        }
      ),
      with_metric_dimension_mixin(value):: (
        local converted = if std.isArray(value) then value else [value];
        {
          metric_dimension+: converted,
        }
      ),
      with_metrics_mixin(value):: (
        local converted = if std.isArray(value) then value else [value];
        {
          metrics+: converted,
        }
      ),
    },
    predefined_metric_specification:: {
      local block = self,
      new(predefined_metric_type):: (
        {}
        + block.with_predefined_metric_type(predefined_metric_type)
      ),
      with_predefined_metric_type(value):: (
        local converted = value;
        assert std.isString(converted) : '"predefined_metric_type" expected to be of type "string"';
        {
          predefined_metric_type: converted,
        }
      ),
      with_resource_label(value):: (
        local converted = value;
        assert std.isString(converted) : '"resource_label" expected to be of type "string"';
        {
          resource_label: converted,
        }
      ),
    },
    with_customized_metric_specification(value):: (
      local converted = if std.isArray(value) then value else [value];
      {
        customized_metric_specification: value,
      }
    ),
    with_predefined_metric_specification(value):: (
      local converted = if std.isArray(value) then value else [value];
      {
        predefined_metric_specification: value,
      }
    ),
    with_customized_metric_specification_mixin(value):: (
      local converted = if std.isArray(value) then value else [value];
      {
        customized_metric_specification+: converted,
      }
    ),
    with_predefined_metric_specification_mixin(value):: (
      local converted = if std.isArray(value) then value else [value];
      {
        predefined_metric_specification+: converted,
      }
    ),
  },
  with_predictive_scaling_configuration(value):: (
    local converted = if std.isArray(value) then value else [value];
    {
      predictive_scaling_configuration: value,
    }
  ),
  with_step_adjustment(value):: (
    local converted = if std.isArray(value) then value else [value];
    {
      step_adjustment: value,
    }
  ),
  with_target_tracking_configuration(value):: (
    local converted = if std.isArray(value) then value else [value];
    {
      target_tracking_configuration: value,
    }
  ),
  with_predictive_scaling_configuration_mixin(value):: (
    local converted = if std.isArray(value) then value else [value];
    {
      predictive_scaling_configuration+: converted,
    }
  ),
  with_step_adjustment_mixin(value):: (
    local converted = if std.isArray(value) then value else [value];
    {
      step_adjustment+: converted,
    }
  ),
  with_target_tracking_configuration_mixin(value):: (
    local converted = if std.isArray(value) then value else [value];
    {
      target_tracking_configuration+: converted,
    }
  ),
}
