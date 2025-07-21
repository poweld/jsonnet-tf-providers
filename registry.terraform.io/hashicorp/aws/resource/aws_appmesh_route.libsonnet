{
  local block = self,
  new(mesh_name, name, virtual_router_name):: (
    {}
    + block.with_mesh_name(mesh_name)
    + block.with_name(name)
    + block.with_virtual_router_name(virtual_router_name)
  ),
  with_arn(value):: (
    local converted = value;
    assert std.isString(converted) : '"arn" expected to be of type "string"';
    {
      arn: converted,
    }
  ),
  with_created_date(value):: (
    local converted = value;
    assert std.isString(converted) : '"created_date" expected to be of type "string"';
    {
      created_date: converted,
    }
  ),
  with_id(value):: (
    local converted = value;
    assert std.isString(converted) : '"id" expected to be of type "string"';
    {
      id: converted,
    }
  ),
  with_last_updated_date(value):: (
    local converted = value;
    assert std.isString(converted) : '"last_updated_date" expected to be of type "string"';
    {
      last_updated_date: converted,
    }
  ),
  with_mesh_name(value):: (
    local converted = value;
    assert std.isString(converted) : '"mesh_name" expected to be of type "string"';
    {
      mesh_name: converted,
    }
  ),
  with_mesh_owner(value):: (
    local converted = value;
    assert std.isString(converted) : '"mesh_owner" expected to be of type "string"';
    {
      mesh_owner: converted,
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
  with_resource_owner(value):: (
    local converted = value;
    assert std.isString(converted) : '"resource_owner" expected to be of type "string"';
    {
      resource_owner: converted,
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
  with_virtual_router_name(value):: (
    local converted = value;
    assert std.isString(converted) : '"virtual_router_name" expected to be of type "string"';
    {
      virtual_router_name: converted,
    }
  ),
  spec:: {
    local block = self,
    new():: (
      {}
    ),
    with_priority(value):: (
      local converted = value;
      assert std.isNumber(converted) : '"priority" expected to be of type "number"';
      {
        priority: converted,
      }
    ),
    grpc_route:: {
      local block = self,
      new():: (
        {}
      ),
      action:: {
        local block = self,
        new():: (
          {}
        ),
        weighted_target:: {
          local block = self,
          new(virtual_node, weight):: (
            {}
            + block.with_virtual_node(virtual_node)
            + block.with_weight(weight)
          ),
          with_port(value):: (
            local converted = value;
            assert std.isNumber(converted) : '"port" expected to be of type "number"';
            {
              port: converted,
            }
          ),
          with_virtual_node(value):: (
            local converted = value;
            assert std.isString(converted) : '"virtual_node" expected to be of type "string"';
            {
              virtual_node: converted,
            }
          ),
          with_weight(value):: (
            local converted = value;
            assert std.isNumber(converted) : '"weight" expected to be of type "number"';
            {
              weight: converted,
            }
          ),
        },
        with_weighted_target(value):: (
          local converted = if std.isArray(value) then value else [value];
          {
            weighted_target: value,
          }
        ),
        with_weighted_target_mixin(value):: (
          local converted = if std.isArray(value) then value else [value];
          {
            weighted_target+: converted,
          }
        ),
      },
      match:: {
        local block = self,
        new():: (
          {}
        ),
        with_method_name(value):: (
          local converted = value;
          assert std.isString(converted) : '"method_name" expected to be of type "string"';
          {
            method_name: converted,
          }
        ),
        with_port(value):: (
          local converted = value;
          assert std.isNumber(converted) : '"port" expected to be of type "number"';
          {
            port: converted,
          }
        ),
        with_prefix(value):: (
          local converted = value;
          assert std.isString(converted) : '"prefix" expected to be of type "string"';
          {
            prefix: converted,
          }
        ),
        with_service_name(value):: (
          local converted = value;
          assert std.isString(converted) : '"service_name" expected to be of type "string"';
          {
            service_name: converted,
          }
        ),
        metadata:: {
          local block = self,
          new(name):: (
            {}
            + block.with_name(name)
          ),
          with_invert(value):: (
            local converted = value;
            assert std.isBoolean(converted) : '"invert" expected to be of type "bool"';
            {
              invert: converted,
            }
          ),
          with_name(value):: (
            local converted = value;
            assert std.isString(converted) : '"name" expected to be of type "string"';
            {
              name: converted,
            }
          ),
          match:: {
            local block = self,
            new():: (
              {}
            ),
            with_exact(value):: (
              local converted = value;
              assert std.isString(converted) : '"exact" expected to be of type "string"';
              {
                exact: converted,
              }
            ),
            with_prefix(value):: (
              local converted = value;
              assert std.isString(converted) : '"prefix" expected to be of type "string"';
              {
                prefix: converted,
              }
            ),
            with_regex(value):: (
              local converted = value;
              assert std.isString(converted) : '"regex" expected to be of type "string"';
              {
                regex: converted,
              }
            ),
            with_suffix(value):: (
              local converted = value;
              assert std.isString(converted) : '"suffix" expected to be of type "string"';
              {
                suffix: converted,
              }
            ),
            range:: {
              local block = self,
              new(end, start):: (
                {}
                + block.with_end(end)
                + block.with_start(start)
              ),
              with_end(value):: (
                local converted = value;
                assert std.isNumber(converted) : '"end" expected to be of type "number"';
                {
                  end: converted,
                }
              ),
              with_start(value):: (
                local converted = value;
                assert std.isNumber(converted) : '"start" expected to be of type "number"';
                {
                  start: converted,
                }
              ),
            },
            with_range(value):: (
              local converted = if std.isArray(value) then value else [value];
              {
                range: value,
              }
            ),
            with_range_mixin(value):: (
              local converted = if std.isArray(value) then value else [value];
              {
                range+: converted,
              }
            ),
          },
          with_match(value):: (
            local converted = if std.isArray(value) then value else [value];
            {
              match: value,
            }
          ),
          with_match_mixin(value):: (
            local converted = if std.isArray(value) then value else [value];
            {
              match+: converted,
            }
          ),
        },
        with_metadata(value):: (
          local converted = if std.isArray(value) then value else [value];
          {
            metadata: value,
          }
        ),
        with_metadata_mixin(value):: (
          local converted = if std.isArray(value) then value else [value];
          {
            metadata+: converted,
          }
        ),
      },
      retry_policy:: {
        local block = self,
        new(max_retries):: (
          {}
          + block.with_max_retries(max_retries)
        ),
        with_grpc_retry_events(value):: (
          local converted = if std.isArray(value) then value else [value];
          assert (std.isArray(converted) && std.length(std.set(converted)) == std.length(converted)) : '"grpc_retry_events" expected to be of type "set"';
          {
            grpc_retry_events: converted,
          }
        ),
        with_grpc_retry_events_mixin(value):: (
          local converted = if std.isArray(value) then value else [value];
          assert (std.isArray(converted) && std.length(std.set(converted)) == std.length(converted)) : '"grpc_retry_events" expected to be of type "set"';
          {
            grpc_retry_events+: converted,
          }
        ),
        with_http_retry_events(value):: (
          local converted = if std.isArray(value) then value else [value];
          assert (std.isArray(converted) && std.length(std.set(converted)) == std.length(converted)) : '"http_retry_events" expected to be of type "set"';
          {
            http_retry_events: converted,
          }
        ),
        with_http_retry_events_mixin(value):: (
          local converted = if std.isArray(value) then value else [value];
          assert (std.isArray(converted) && std.length(std.set(converted)) == std.length(converted)) : '"http_retry_events" expected to be of type "set"';
          {
            http_retry_events+: converted,
          }
        ),
        with_max_retries(value):: (
          local converted = value;
          assert std.isNumber(converted) : '"max_retries" expected to be of type "number"';
          {
            max_retries: converted,
          }
        ),
        with_tcp_retry_events(value):: (
          local converted = if std.isArray(value) then value else [value];
          assert (std.isArray(converted) && std.length(std.set(converted)) == std.length(converted)) : '"tcp_retry_events" expected to be of type "set"';
          {
            tcp_retry_events: converted,
          }
        ),
        with_tcp_retry_events_mixin(value):: (
          local converted = if std.isArray(value) then value else [value];
          assert (std.isArray(converted) && std.length(std.set(converted)) == std.length(converted)) : '"tcp_retry_events" expected to be of type "set"';
          {
            tcp_retry_events+: converted,
          }
        ),
        per_retry_timeout:: {
          local block = self,
          new(unit, value):: (
            {}
            + block.with_unit(unit)
            + block.with_value(value)
          ),
          with_unit(value):: (
            local converted = value;
            assert std.isString(converted) : '"unit" expected to be of type "string"';
            {
              unit: converted,
            }
          ),
          with_value(value):: (
            local converted = value;
            assert std.isNumber(converted) : '"value" expected to be of type "number"';
            {
              value: converted,
            }
          ),
        },
        with_per_retry_timeout(value):: (
          local converted = if std.isArray(value) then value else [value];
          {
            per_retry_timeout: value,
          }
        ),
        with_per_retry_timeout_mixin(value):: (
          local converted = if std.isArray(value) then value else [value];
          {
            per_retry_timeout+: converted,
          }
        ),
      },
      timeout:: {
        local block = self,
        new():: (
          {}
        ),
        idle:: {
          local block = self,
          new(unit, value):: (
            {}
            + block.with_unit(unit)
            + block.with_value(value)
          ),
          with_unit(value):: (
            local converted = value;
            assert std.isString(converted) : '"unit" expected to be of type "string"';
            {
              unit: converted,
            }
          ),
          with_value(value):: (
            local converted = value;
            assert std.isNumber(converted) : '"value" expected to be of type "number"';
            {
              value: converted,
            }
          ),
        },
        per_request:: {
          local block = self,
          new(unit, value):: (
            {}
            + block.with_unit(unit)
            + block.with_value(value)
          ),
          with_unit(value):: (
            local converted = value;
            assert std.isString(converted) : '"unit" expected to be of type "string"';
            {
              unit: converted,
            }
          ),
          with_value(value):: (
            local converted = value;
            assert std.isNumber(converted) : '"value" expected to be of type "number"';
            {
              value: converted,
            }
          ),
        },
        with_idle(value):: (
          local converted = if std.isArray(value) then value else [value];
          {
            idle: value,
          }
        ),
        with_per_request(value):: (
          local converted = if std.isArray(value) then value else [value];
          {
            per_request: value,
          }
        ),
        with_idle_mixin(value):: (
          local converted = if std.isArray(value) then value else [value];
          {
            idle+: converted,
          }
        ),
        with_per_request_mixin(value):: (
          local converted = if std.isArray(value) then value else [value];
          {
            per_request+: converted,
          }
        ),
      },
      with_action(value):: (
        local converted = if std.isArray(value) then value else [value];
        {
          action: value,
        }
      ),
      with_match(value):: (
        local converted = if std.isArray(value) then value else [value];
        {
          match: value,
        }
      ),
      with_retry_policy(value):: (
        local converted = if std.isArray(value) then value else [value];
        {
          retry_policy: value,
        }
      ),
      with_timeout(value):: (
        local converted = if std.isArray(value) then value else [value];
        {
          timeout: value,
        }
      ),
      with_action_mixin(value):: (
        local converted = if std.isArray(value) then value else [value];
        {
          action+: converted,
        }
      ),
      with_match_mixin(value):: (
        local converted = if std.isArray(value) then value else [value];
        {
          match+: converted,
        }
      ),
      with_retry_policy_mixin(value):: (
        local converted = if std.isArray(value) then value else [value];
        {
          retry_policy+: converted,
        }
      ),
      with_timeout_mixin(value):: (
        local converted = if std.isArray(value) then value else [value];
        {
          timeout+: converted,
        }
      ),
    },
    http2_route:: {
      local block = self,
      new():: (
        {}
      ),
      action:: {
        local block = self,
        new():: (
          {}
        ),
        weighted_target:: {
          local block = self,
          new(virtual_node, weight):: (
            {}
            + block.with_virtual_node(virtual_node)
            + block.with_weight(weight)
          ),
          with_port(value):: (
            local converted = value;
            assert std.isNumber(converted) : '"port" expected to be of type "number"';
            {
              port: converted,
            }
          ),
          with_virtual_node(value):: (
            local converted = value;
            assert std.isString(converted) : '"virtual_node" expected to be of type "string"';
            {
              virtual_node: converted,
            }
          ),
          with_weight(value):: (
            local converted = value;
            assert std.isNumber(converted) : '"weight" expected to be of type "number"';
            {
              weight: converted,
            }
          ),
        },
        with_weighted_target(value):: (
          local converted = if std.isArray(value) then value else [value];
          {
            weighted_target: value,
          }
        ),
        with_weighted_target_mixin(value):: (
          local converted = if std.isArray(value) then value else [value];
          {
            weighted_target+: converted,
          }
        ),
      },
      match:: {
        local block = self,
        new():: (
          {}
        ),
        with_method(value):: (
          local converted = value;
          assert std.isString(converted) : '"method" expected to be of type "string"';
          {
            method: converted,
          }
        ),
        with_port(value):: (
          local converted = value;
          assert std.isNumber(converted) : '"port" expected to be of type "number"';
          {
            port: converted,
          }
        ),
        with_prefix(value):: (
          local converted = value;
          assert std.isString(converted) : '"prefix" expected to be of type "string"';
          {
            prefix: converted,
          }
        ),
        with_scheme(value):: (
          local converted = value;
          assert std.isString(converted) : '"scheme" expected to be of type "string"';
          {
            scheme: converted,
          }
        ),
        header:: {
          local block = self,
          new(name):: (
            {}
            + block.with_name(name)
          ),
          with_invert(value):: (
            local converted = value;
            assert std.isBoolean(converted) : '"invert" expected to be of type "bool"';
            {
              invert: converted,
            }
          ),
          with_name(value):: (
            local converted = value;
            assert std.isString(converted) : '"name" expected to be of type "string"';
            {
              name: converted,
            }
          ),
          match:: {
            local block = self,
            new():: (
              {}
            ),
            with_exact(value):: (
              local converted = value;
              assert std.isString(converted) : '"exact" expected to be of type "string"';
              {
                exact: converted,
              }
            ),
            with_prefix(value):: (
              local converted = value;
              assert std.isString(converted) : '"prefix" expected to be of type "string"';
              {
                prefix: converted,
              }
            ),
            with_regex(value):: (
              local converted = value;
              assert std.isString(converted) : '"regex" expected to be of type "string"';
              {
                regex: converted,
              }
            ),
            with_suffix(value):: (
              local converted = value;
              assert std.isString(converted) : '"suffix" expected to be of type "string"';
              {
                suffix: converted,
              }
            ),
            range:: {
              local block = self,
              new(end, start):: (
                {}
                + block.with_end(end)
                + block.with_start(start)
              ),
              with_end(value):: (
                local converted = value;
                assert std.isNumber(converted) : '"end" expected to be of type "number"';
                {
                  end: converted,
                }
              ),
              with_start(value):: (
                local converted = value;
                assert std.isNumber(converted) : '"start" expected to be of type "number"';
                {
                  start: converted,
                }
              ),
            },
            with_range(value):: (
              local converted = if std.isArray(value) then value else [value];
              {
                range: value,
              }
            ),
            with_range_mixin(value):: (
              local converted = if std.isArray(value) then value else [value];
              {
                range+: converted,
              }
            ),
          },
          with_match(value):: (
            local converted = if std.isArray(value) then value else [value];
            {
              match: value,
            }
          ),
          with_match_mixin(value):: (
            local converted = if std.isArray(value) then value else [value];
            {
              match+: converted,
            }
          ),
        },
        path:: {
          local block = self,
          new():: (
            {}
          ),
          with_exact(value):: (
            local converted = value;
            assert std.isString(converted) : '"exact" expected to be of type "string"';
            {
              exact: converted,
            }
          ),
          with_regex(value):: (
            local converted = value;
            assert std.isString(converted) : '"regex" expected to be of type "string"';
            {
              regex: converted,
            }
          ),
        },
        query_parameter:: {
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
          match:: {
            local block = self,
            new():: (
              {}
            ),
            with_exact(value):: (
              local converted = value;
              assert std.isString(converted) : '"exact" expected to be of type "string"';
              {
                exact: converted,
              }
            ),
          },
          with_match(value):: (
            local converted = if std.isArray(value) then value else [value];
            {
              match: value,
            }
          ),
          with_match_mixin(value):: (
            local converted = if std.isArray(value) then value else [value];
            {
              match+: converted,
            }
          ),
        },
        with_header(value):: (
          local converted = if std.isArray(value) then value else [value];
          {
            header: value,
          }
        ),
        with_path(value):: (
          local converted = if std.isArray(value) then value else [value];
          {
            path: value,
          }
        ),
        with_query_parameter(value):: (
          local converted = if std.isArray(value) then value else [value];
          {
            query_parameter: value,
          }
        ),
        with_header_mixin(value):: (
          local converted = if std.isArray(value) then value else [value];
          {
            header+: converted,
          }
        ),
        with_path_mixin(value):: (
          local converted = if std.isArray(value) then value else [value];
          {
            path+: converted,
          }
        ),
        with_query_parameter_mixin(value):: (
          local converted = if std.isArray(value) then value else [value];
          {
            query_parameter+: converted,
          }
        ),
      },
      retry_policy:: {
        local block = self,
        new(max_retries):: (
          {}
          + block.with_max_retries(max_retries)
        ),
        with_http_retry_events(value):: (
          local converted = if std.isArray(value) then value else [value];
          assert (std.isArray(converted) && std.length(std.set(converted)) == std.length(converted)) : '"http_retry_events" expected to be of type "set"';
          {
            http_retry_events: converted,
          }
        ),
        with_http_retry_events_mixin(value):: (
          local converted = if std.isArray(value) then value else [value];
          assert (std.isArray(converted) && std.length(std.set(converted)) == std.length(converted)) : '"http_retry_events" expected to be of type "set"';
          {
            http_retry_events+: converted,
          }
        ),
        with_max_retries(value):: (
          local converted = value;
          assert std.isNumber(converted) : '"max_retries" expected to be of type "number"';
          {
            max_retries: converted,
          }
        ),
        with_tcp_retry_events(value):: (
          local converted = if std.isArray(value) then value else [value];
          assert (std.isArray(converted) && std.length(std.set(converted)) == std.length(converted)) : '"tcp_retry_events" expected to be of type "set"';
          {
            tcp_retry_events: converted,
          }
        ),
        with_tcp_retry_events_mixin(value):: (
          local converted = if std.isArray(value) then value else [value];
          assert (std.isArray(converted) && std.length(std.set(converted)) == std.length(converted)) : '"tcp_retry_events" expected to be of type "set"';
          {
            tcp_retry_events+: converted,
          }
        ),
        per_retry_timeout:: {
          local block = self,
          new(unit, value):: (
            {}
            + block.with_unit(unit)
            + block.with_value(value)
          ),
          with_unit(value):: (
            local converted = value;
            assert std.isString(converted) : '"unit" expected to be of type "string"';
            {
              unit: converted,
            }
          ),
          with_value(value):: (
            local converted = value;
            assert std.isNumber(converted) : '"value" expected to be of type "number"';
            {
              value: converted,
            }
          ),
        },
        with_per_retry_timeout(value):: (
          local converted = if std.isArray(value) then value else [value];
          {
            per_retry_timeout: value,
          }
        ),
        with_per_retry_timeout_mixin(value):: (
          local converted = if std.isArray(value) then value else [value];
          {
            per_retry_timeout+: converted,
          }
        ),
      },
      timeout:: {
        local block = self,
        new():: (
          {}
        ),
        idle:: {
          local block = self,
          new(unit, value):: (
            {}
            + block.with_unit(unit)
            + block.with_value(value)
          ),
          with_unit(value):: (
            local converted = value;
            assert std.isString(converted) : '"unit" expected to be of type "string"';
            {
              unit: converted,
            }
          ),
          with_value(value):: (
            local converted = value;
            assert std.isNumber(converted) : '"value" expected to be of type "number"';
            {
              value: converted,
            }
          ),
        },
        per_request:: {
          local block = self,
          new(unit, value):: (
            {}
            + block.with_unit(unit)
            + block.with_value(value)
          ),
          with_unit(value):: (
            local converted = value;
            assert std.isString(converted) : '"unit" expected to be of type "string"';
            {
              unit: converted,
            }
          ),
          with_value(value):: (
            local converted = value;
            assert std.isNumber(converted) : '"value" expected to be of type "number"';
            {
              value: converted,
            }
          ),
        },
        with_idle(value):: (
          local converted = if std.isArray(value) then value else [value];
          {
            idle: value,
          }
        ),
        with_per_request(value):: (
          local converted = if std.isArray(value) then value else [value];
          {
            per_request: value,
          }
        ),
        with_idle_mixin(value):: (
          local converted = if std.isArray(value) then value else [value];
          {
            idle+: converted,
          }
        ),
        with_per_request_mixin(value):: (
          local converted = if std.isArray(value) then value else [value];
          {
            per_request+: converted,
          }
        ),
      },
      with_action(value):: (
        local converted = if std.isArray(value) then value else [value];
        {
          action: value,
        }
      ),
      with_match(value):: (
        local converted = if std.isArray(value) then value else [value];
        {
          match: value,
        }
      ),
      with_retry_policy(value):: (
        local converted = if std.isArray(value) then value else [value];
        {
          retry_policy: value,
        }
      ),
      with_timeout(value):: (
        local converted = if std.isArray(value) then value else [value];
        {
          timeout: value,
        }
      ),
      with_action_mixin(value):: (
        local converted = if std.isArray(value) then value else [value];
        {
          action+: converted,
        }
      ),
      with_match_mixin(value):: (
        local converted = if std.isArray(value) then value else [value];
        {
          match+: converted,
        }
      ),
      with_retry_policy_mixin(value):: (
        local converted = if std.isArray(value) then value else [value];
        {
          retry_policy+: converted,
        }
      ),
      with_timeout_mixin(value):: (
        local converted = if std.isArray(value) then value else [value];
        {
          timeout+: converted,
        }
      ),
    },
    http_route:: {
      local block = self,
      new():: (
        {}
      ),
      action:: {
        local block = self,
        new():: (
          {}
        ),
        weighted_target:: {
          local block = self,
          new(virtual_node, weight):: (
            {}
            + block.with_virtual_node(virtual_node)
            + block.with_weight(weight)
          ),
          with_port(value):: (
            local converted = value;
            assert std.isNumber(converted) : '"port" expected to be of type "number"';
            {
              port: converted,
            }
          ),
          with_virtual_node(value):: (
            local converted = value;
            assert std.isString(converted) : '"virtual_node" expected to be of type "string"';
            {
              virtual_node: converted,
            }
          ),
          with_weight(value):: (
            local converted = value;
            assert std.isNumber(converted) : '"weight" expected to be of type "number"';
            {
              weight: converted,
            }
          ),
        },
        with_weighted_target(value):: (
          local converted = if std.isArray(value) then value else [value];
          {
            weighted_target: value,
          }
        ),
        with_weighted_target_mixin(value):: (
          local converted = if std.isArray(value) then value else [value];
          {
            weighted_target+: converted,
          }
        ),
      },
      match:: {
        local block = self,
        new():: (
          {}
        ),
        with_method(value):: (
          local converted = value;
          assert std.isString(converted) : '"method" expected to be of type "string"';
          {
            method: converted,
          }
        ),
        with_port(value):: (
          local converted = value;
          assert std.isNumber(converted) : '"port" expected to be of type "number"';
          {
            port: converted,
          }
        ),
        with_prefix(value):: (
          local converted = value;
          assert std.isString(converted) : '"prefix" expected to be of type "string"';
          {
            prefix: converted,
          }
        ),
        with_scheme(value):: (
          local converted = value;
          assert std.isString(converted) : '"scheme" expected to be of type "string"';
          {
            scheme: converted,
          }
        ),
        header:: {
          local block = self,
          new(name):: (
            {}
            + block.with_name(name)
          ),
          with_invert(value):: (
            local converted = value;
            assert std.isBoolean(converted) : '"invert" expected to be of type "bool"';
            {
              invert: converted,
            }
          ),
          with_name(value):: (
            local converted = value;
            assert std.isString(converted) : '"name" expected to be of type "string"';
            {
              name: converted,
            }
          ),
          match:: {
            local block = self,
            new():: (
              {}
            ),
            with_exact(value):: (
              local converted = value;
              assert std.isString(converted) : '"exact" expected to be of type "string"';
              {
                exact: converted,
              }
            ),
            with_prefix(value):: (
              local converted = value;
              assert std.isString(converted) : '"prefix" expected to be of type "string"';
              {
                prefix: converted,
              }
            ),
            with_regex(value):: (
              local converted = value;
              assert std.isString(converted) : '"regex" expected to be of type "string"';
              {
                regex: converted,
              }
            ),
            with_suffix(value):: (
              local converted = value;
              assert std.isString(converted) : '"suffix" expected to be of type "string"';
              {
                suffix: converted,
              }
            ),
            range:: {
              local block = self,
              new(end, start):: (
                {}
                + block.with_end(end)
                + block.with_start(start)
              ),
              with_end(value):: (
                local converted = value;
                assert std.isNumber(converted) : '"end" expected to be of type "number"';
                {
                  end: converted,
                }
              ),
              with_start(value):: (
                local converted = value;
                assert std.isNumber(converted) : '"start" expected to be of type "number"';
                {
                  start: converted,
                }
              ),
            },
            with_range(value):: (
              local converted = if std.isArray(value) then value else [value];
              {
                range: value,
              }
            ),
            with_range_mixin(value):: (
              local converted = if std.isArray(value) then value else [value];
              {
                range+: converted,
              }
            ),
          },
          with_match(value):: (
            local converted = if std.isArray(value) then value else [value];
            {
              match: value,
            }
          ),
          with_match_mixin(value):: (
            local converted = if std.isArray(value) then value else [value];
            {
              match+: converted,
            }
          ),
        },
        path:: {
          local block = self,
          new():: (
            {}
          ),
          with_exact(value):: (
            local converted = value;
            assert std.isString(converted) : '"exact" expected to be of type "string"';
            {
              exact: converted,
            }
          ),
          with_regex(value):: (
            local converted = value;
            assert std.isString(converted) : '"regex" expected to be of type "string"';
            {
              regex: converted,
            }
          ),
        },
        query_parameter:: {
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
          match:: {
            local block = self,
            new():: (
              {}
            ),
            with_exact(value):: (
              local converted = value;
              assert std.isString(converted) : '"exact" expected to be of type "string"';
              {
                exact: converted,
              }
            ),
          },
          with_match(value):: (
            local converted = if std.isArray(value) then value else [value];
            {
              match: value,
            }
          ),
          with_match_mixin(value):: (
            local converted = if std.isArray(value) then value else [value];
            {
              match+: converted,
            }
          ),
        },
        with_header(value):: (
          local converted = if std.isArray(value) then value else [value];
          {
            header: value,
          }
        ),
        with_path(value):: (
          local converted = if std.isArray(value) then value else [value];
          {
            path: value,
          }
        ),
        with_query_parameter(value):: (
          local converted = if std.isArray(value) then value else [value];
          {
            query_parameter: value,
          }
        ),
        with_header_mixin(value):: (
          local converted = if std.isArray(value) then value else [value];
          {
            header+: converted,
          }
        ),
        with_path_mixin(value):: (
          local converted = if std.isArray(value) then value else [value];
          {
            path+: converted,
          }
        ),
        with_query_parameter_mixin(value):: (
          local converted = if std.isArray(value) then value else [value];
          {
            query_parameter+: converted,
          }
        ),
      },
      retry_policy:: {
        local block = self,
        new(max_retries):: (
          {}
          + block.with_max_retries(max_retries)
        ),
        with_http_retry_events(value):: (
          local converted = if std.isArray(value) then value else [value];
          assert (std.isArray(converted) && std.length(std.set(converted)) == std.length(converted)) : '"http_retry_events" expected to be of type "set"';
          {
            http_retry_events: converted,
          }
        ),
        with_http_retry_events_mixin(value):: (
          local converted = if std.isArray(value) then value else [value];
          assert (std.isArray(converted) && std.length(std.set(converted)) == std.length(converted)) : '"http_retry_events" expected to be of type "set"';
          {
            http_retry_events+: converted,
          }
        ),
        with_max_retries(value):: (
          local converted = value;
          assert std.isNumber(converted) : '"max_retries" expected to be of type "number"';
          {
            max_retries: converted,
          }
        ),
        with_tcp_retry_events(value):: (
          local converted = if std.isArray(value) then value else [value];
          assert (std.isArray(converted) && std.length(std.set(converted)) == std.length(converted)) : '"tcp_retry_events" expected to be of type "set"';
          {
            tcp_retry_events: converted,
          }
        ),
        with_tcp_retry_events_mixin(value):: (
          local converted = if std.isArray(value) then value else [value];
          assert (std.isArray(converted) && std.length(std.set(converted)) == std.length(converted)) : '"tcp_retry_events" expected to be of type "set"';
          {
            tcp_retry_events+: converted,
          }
        ),
        per_retry_timeout:: {
          local block = self,
          new(unit, value):: (
            {}
            + block.with_unit(unit)
            + block.with_value(value)
          ),
          with_unit(value):: (
            local converted = value;
            assert std.isString(converted) : '"unit" expected to be of type "string"';
            {
              unit: converted,
            }
          ),
          with_value(value):: (
            local converted = value;
            assert std.isNumber(converted) : '"value" expected to be of type "number"';
            {
              value: converted,
            }
          ),
        },
        with_per_retry_timeout(value):: (
          local converted = if std.isArray(value) then value else [value];
          {
            per_retry_timeout: value,
          }
        ),
        with_per_retry_timeout_mixin(value):: (
          local converted = if std.isArray(value) then value else [value];
          {
            per_retry_timeout+: converted,
          }
        ),
      },
      timeout:: {
        local block = self,
        new():: (
          {}
        ),
        idle:: {
          local block = self,
          new(unit, value):: (
            {}
            + block.with_unit(unit)
            + block.with_value(value)
          ),
          with_unit(value):: (
            local converted = value;
            assert std.isString(converted) : '"unit" expected to be of type "string"';
            {
              unit: converted,
            }
          ),
          with_value(value):: (
            local converted = value;
            assert std.isNumber(converted) : '"value" expected to be of type "number"';
            {
              value: converted,
            }
          ),
        },
        per_request:: {
          local block = self,
          new(unit, value):: (
            {}
            + block.with_unit(unit)
            + block.with_value(value)
          ),
          with_unit(value):: (
            local converted = value;
            assert std.isString(converted) : '"unit" expected to be of type "string"';
            {
              unit: converted,
            }
          ),
          with_value(value):: (
            local converted = value;
            assert std.isNumber(converted) : '"value" expected to be of type "number"';
            {
              value: converted,
            }
          ),
        },
        with_idle(value):: (
          local converted = if std.isArray(value) then value else [value];
          {
            idle: value,
          }
        ),
        with_per_request(value):: (
          local converted = if std.isArray(value) then value else [value];
          {
            per_request: value,
          }
        ),
        with_idle_mixin(value):: (
          local converted = if std.isArray(value) then value else [value];
          {
            idle+: converted,
          }
        ),
        with_per_request_mixin(value):: (
          local converted = if std.isArray(value) then value else [value];
          {
            per_request+: converted,
          }
        ),
      },
      with_action(value):: (
        local converted = if std.isArray(value) then value else [value];
        {
          action: value,
        }
      ),
      with_match(value):: (
        local converted = if std.isArray(value) then value else [value];
        {
          match: value,
        }
      ),
      with_retry_policy(value):: (
        local converted = if std.isArray(value) then value else [value];
        {
          retry_policy: value,
        }
      ),
      with_timeout(value):: (
        local converted = if std.isArray(value) then value else [value];
        {
          timeout: value,
        }
      ),
      with_action_mixin(value):: (
        local converted = if std.isArray(value) then value else [value];
        {
          action+: converted,
        }
      ),
      with_match_mixin(value):: (
        local converted = if std.isArray(value) then value else [value];
        {
          match+: converted,
        }
      ),
      with_retry_policy_mixin(value):: (
        local converted = if std.isArray(value) then value else [value];
        {
          retry_policy+: converted,
        }
      ),
      with_timeout_mixin(value):: (
        local converted = if std.isArray(value) then value else [value];
        {
          timeout+: converted,
        }
      ),
    },
    tcp_route:: {
      local block = self,
      new():: (
        {}
      ),
      action:: {
        local block = self,
        new():: (
          {}
        ),
        weighted_target:: {
          local block = self,
          new(virtual_node, weight):: (
            {}
            + block.with_virtual_node(virtual_node)
            + block.with_weight(weight)
          ),
          with_port(value):: (
            local converted = value;
            assert std.isNumber(converted) : '"port" expected to be of type "number"';
            {
              port: converted,
            }
          ),
          with_virtual_node(value):: (
            local converted = value;
            assert std.isString(converted) : '"virtual_node" expected to be of type "string"';
            {
              virtual_node: converted,
            }
          ),
          with_weight(value):: (
            local converted = value;
            assert std.isNumber(converted) : '"weight" expected to be of type "number"';
            {
              weight: converted,
            }
          ),
        },
        with_weighted_target(value):: (
          local converted = if std.isArray(value) then value else [value];
          {
            weighted_target: value,
          }
        ),
        with_weighted_target_mixin(value):: (
          local converted = if std.isArray(value) then value else [value];
          {
            weighted_target+: converted,
          }
        ),
      },
      match:: {
        local block = self,
        new():: (
          {}
        ),
        with_port(value):: (
          local converted = value;
          assert std.isNumber(converted) : '"port" expected to be of type "number"';
          {
            port: converted,
          }
        ),
      },
      timeout:: {
        local block = self,
        new():: (
          {}
        ),
        idle:: {
          local block = self,
          new(unit, value):: (
            {}
            + block.with_unit(unit)
            + block.with_value(value)
          ),
          with_unit(value):: (
            local converted = value;
            assert std.isString(converted) : '"unit" expected to be of type "string"';
            {
              unit: converted,
            }
          ),
          with_value(value):: (
            local converted = value;
            assert std.isNumber(converted) : '"value" expected to be of type "number"';
            {
              value: converted,
            }
          ),
        },
        with_idle(value):: (
          local converted = if std.isArray(value) then value else [value];
          {
            idle: value,
          }
        ),
        with_idle_mixin(value):: (
          local converted = if std.isArray(value) then value else [value];
          {
            idle+: converted,
          }
        ),
      },
      with_action(value):: (
        local converted = if std.isArray(value) then value else [value];
        {
          action: value,
        }
      ),
      with_match(value):: (
        local converted = if std.isArray(value) then value else [value];
        {
          match: value,
        }
      ),
      with_timeout(value):: (
        local converted = if std.isArray(value) then value else [value];
        {
          timeout: value,
        }
      ),
      with_action_mixin(value):: (
        local converted = if std.isArray(value) then value else [value];
        {
          action+: converted,
        }
      ),
      with_match_mixin(value):: (
        local converted = if std.isArray(value) then value else [value];
        {
          match+: converted,
        }
      ),
      with_timeout_mixin(value):: (
        local converted = if std.isArray(value) then value else [value];
        {
          timeout+: converted,
        }
      ),
    },
    with_grpc_route(value):: (
      local converted = if std.isArray(value) then value else [value];
      {
        grpc_route: value,
      }
    ),
    with_http2_route(value):: (
      local converted = if std.isArray(value) then value else [value];
      {
        http2_route: value,
      }
    ),
    with_http_route(value):: (
      local converted = if std.isArray(value) then value else [value];
      {
        http_route: value,
      }
    ),
    with_tcp_route(value):: (
      local converted = if std.isArray(value) then value else [value];
      {
        tcp_route: value,
      }
    ),
    with_grpc_route_mixin(value):: (
      local converted = if std.isArray(value) then value else [value];
      {
        grpc_route+: converted,
      }
    ),
    with_http2_route_mixin(value):: (
      local converted = if std.isArray(value) then value else [value];
      {
        http2_route+: converted,
      }
    ),
    with_http_route_mixin(value):: (
      local converted = if std.isArray(value) then value else [value];
      {
        http_route+: converted,
      }
    ),
    with_tcp_route_mixin(value):: (
      local converted = if std.isArray(value) then value else [value];
      {
        tcp_route+: converted,
      }
    ),
  },
  with_spec(value):: (
    local converted = if std.isArray(value) then value else [value];
    {
      spec: value,
    }
  ),
  with_spec_mixin(value):: (
    local converted = if std.isArray(value) then value else [value];
    {
      spec+: converted,
    }
  ),
}
