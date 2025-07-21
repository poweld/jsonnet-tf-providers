{
  local block = self,
  new(mesh_name, name, virtual_gateway_name):: (
    {}
    + block.with_mesh_name(mesh_name)
    + block.with_name(name)
    + block.with_virtual_gateway_name(virtual_gateway_name)
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
  with_virtual_gateway_name(value):: (
    local converted = value;
    assert std.isString(converted) : '"virtual_gateway_name" expected to be of type "string"';
    {
      virtual_gateway_name: converted,
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
        target:: {
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
          virtual_service:: {
            local block = self,
            new(virtual_service_name):: (
              {}
              + block.with_virtual_service_name(virtual_service_name)
            ),
            with_virtual_service_name(value):: (
              local converted = value;
              assert std.isString(converted) : '"virtual_service_name" expected to be of type "string"';
              {
                virtual_service_name: converted,
              }
            ),
          },
          with_virtual_service(value):: (
            local converted = if std.isArray(value) then value else [value];
            {
              virtual_service: value,
            }
          ),
          with_virtual_service_mixin(value):: (
            local converted = if std.isArray(value) then value else [value];
            {
              virtual_service+: converted,
            }
          ),
        },
        with_target(value):: (
          local converted = if std.isArray(value) then value else [value];
          {
            target: value,
          }
        ),
        with_target_mixin(value):: (
          local converted = if std.isArray(value) then value else [value];
          {
            target+: converted,
          }
        ),
      },
      match:: {
        local block = self,
        new(service_name):: (
          {}
          + block.with_service_name(service_name)
        ),
        with_port(value):: (
          local converted = value;
          assert std.isNumber(converted) : '"port" expected to be of type "number"';
          {
            port: converted,
          }
        ),
        with_service_name(value):: (
          local converted = value;
          assert std.isString(converted) : '"service_name" expected to be of type "string"';
          {
            service_name: converted,
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
        rewrite:: {
          local block = self,
          new():: (
            {}
          ),
          hostname:: {
            local block = self,
            new(default_target_hostname):: (
              {}
              + block.with_default_target_hostname(default_target_hostname)
            ),
            with_default_target_hostname(value):: (
              local converted = value;
              assert std.isString(converted) : '"default_target_hostname" expected to be of type "string"';
              {
                default_target_hostname: converted,
              }
            ),
          },
          path:: {
            local block = self,
            new(exact):: (
              {}
              + block.with_exact(exact)
            ),
            with_exact(value):: (
              local converted = value;
              assert std.isString(converted) : '"exact" expected to be of type "string"';
              {
                exact: converted,
              }
            ),
          },
          prefix:: {
            local block = self,
            new():: (
              {}
            ),
            with_default_prefix(value):: (
              local converted = value;
              assert std.isString(converted) : '"default_prefix" expected to be of type "string"';
              {
                default_prefix: converted,
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
          with_hostname(value):: (
            local converted = if std.isArray(value) then value else [value];
            {
              hostname: value,
            }
          ),
          with_path(value):: (
            local converted = if std.isArray(value) then value else [value];
            {
              path: value,
            }
          ),
          with_prefix(value):: (
            local converted = if std.isArray(value) then value else [value];
            {
              prefix: value,
            }
          ),
          with_hostname_mixin(value):: (
            local converted = if std.isArray(value) then value else [value];
            {
              hostname+: converted,
            }
          ),
          with_path_mixin(value):: (
            local converted = if std.isArray(value) then value else [value];
            {
              path+: converted,
            }
          ),
          with_prefix_mixin(value):: (
            local converted = if std.isArray(value) then value else [value];
            {
              prefix+: converted,
            }
          ),
        },
        target:: {
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
          virtual_service:: {
            local block = self,
            new(virtual_service_name):: (
              {}
              + block.with_virtual_service_name(virtual_service_name)
            ),
            with_virtual_service_name(value):: (
              local converted = value;
              assert std.isString(converted) : '"virtual_service_name" expected to be of type "string"';
              {
                virtual_service_name: converted,
              }
            ),
          },
          with_virtual_service(value):: (
            local converted = if std.isArray(value) then value else [value];
            {
              virtual_service: value,
            }
          ),
          with_virtual_service_mixin(value):: (
            local converted = if std.isArray(value) then value else [value];
            {
              virtual_service+: converted,
            }
          ),
        },
        with_rewrite(value):: (
          local converted = if std.isArray(value) then value else [value];
          {
            rewrite: value,
          }
        ),
        with_target(value):: (
          local converted = if std.isArray(value) then value else [value];
          {
            target: value,
          }
        ),
        with_rewrite_mixin(value):: (
          local converted = if std.isArray(value) then value else [value];
          {
            rewrite+: converted,
          }
        ),
        with_target_mixin(value):: (
          local converted = if std.isArray(value) then value else [value];
          {
            target+: converted,
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
        with_prefix(value):: (
          local converted = value;
          assert std.isString(converted) : '"prefix" expected to be of type "string"';
          {
            prefix: converted,
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
        hostname:: {
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
          with_suffix(value):: (
            local converted = value;
            assert std.isString(converted) : '"suffix" expected to be of type "string"';
            {
              suffix: converted,
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
        with_hostname(value):: (
          local converted = if std.isArray(value) then value else [value];
          {
            hostname: value,
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
        with_hostname_mixin(value):: (
          local converted = if std.isArray(value) then value else [value];
          {
            hostname+: converted,
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
        rewrite:: {
          local block = self,
          new():: (
            {}
          ),
          hostname:: {
            local block = self,
            new(default_target_hostname):: (
              {}
              + block.with_default_target_hostname(default_target_hostname)
            ),
            with_default_target_hostname(value):: (
              local converted = value;
              assert std.isString(converted) : '"default_target_hostname" expected to be of type "string"';
              {
                default_target_hostname: converted,
              }
            ),
          },
          path:: {
            local block = self,
            new(exact):: (
              {}
              + block.with_exact(exact)
            ),
            with_exact(value):: (
              local converted = value;
              assert std.isString(converted) : '"exact" expected to be of type "string"';
              {
                exact: converted,
              }
            ),
          },
          prefix:: {
            local block = self,
            new():: (
              {}
            ),
            with_default_prefix(value):: (
              local converted = value;
              assert std.isString(converted) : '"default_prefix" expected to be of type "string"';
              {
                default_prefix: converted,
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
          with_hostname(value):: (
            local converted = if std.isArray(value) then value else [value];
            {
              hostname: value,
            }
          ),
          with_path(value):: (
            local converted = if std.isArray(value) then value else [value];
            {
              path: value,
            }
          ),
          with_prefix(value):: (
            local converted = if std.isArray(value) then value else [value];
            {
              prefix: value,
            }
          ),
          with_hostname_mixin(value):: (
            local converted = if std.isArray(value) then value else [value];
            {
              hostname+: converted,
            }
          ),
          with_path_mixin(value):: (
            local converted = if std.isArray(value) then value else [value];
            {
              path+: converted,
            }
          ),
          with_prefix_mixin(value):: (
            local converted = if std.isArray(value) then value else [value];
            {
              prefix+: converted,
            }
          ),
        },
        target:: {
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
          virtual_service:: {
            local block = self,
            new(virtual_service_name):: (
              {}
              + block.with_virtual_service_name(virtual_service_name)
            ),
            with_virtual_service_name(value):: (
              local converted = value;
              assert std.isString(converted) : '"virtual_service_name" expected to be of type "string"';
              {
                virtual_service_name: converted,
              }
            ),
          },
          with_virtual_service(value):: (
            local converted = if std.isArray(value) then value else [value];
            {
              virtual_service: value,
            }
          ),
          with_virtual_service_mixin(value):: (
            local converted = if std.isArray(value) then value else [value];
            {
              virtual_service+: converted,
            }
          ),
        },
        with_rewrite(value):: (
          local converted = if std.isArray(value) then value else [value];
          {
            rewrite: value,
          }
        ),
        with_target(value):: (
          local converted = if std.isArray(value) then value else [value];
          {
            target: value,
          }
        ),
        with_rewrite_mixin(value):: (
          local converted = if std.isArray(value) then value else [value];
          {
            rewrite+: converted,
          }
        ),
        with_target_mixin(value):: (
          local converted = if std.isArray(value) then value else [value];
          {
            target+: converted,
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
        with_prefix(value):: (
          local converted = value;
          assert std.isString(converted) : '"prefix" expected to be of type "string"';
          {
            prefix: converted,
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
        hostname:: {
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
          with_suffix(value):: (
            local converted = value;
            assert std.isString(converted) : '"suffix" expected to be of type "string"';
            {
              suffix: converted,
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
        with_hostname(value):: (
          local converted = if std.isArray(value) then value else [value];
          {
            hostname: value,
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
        with_hostname_mixin(value):: (
          local converted = if std.isArray(value) then value else [value];
          {
            hostname+: converted,
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
