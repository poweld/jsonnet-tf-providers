{
  local block = self,
  new(capacity, name, type):: (
    {}
    + block.with_capacity(capacity)
    + block.with_name(name)
    + block.with_type(type)
  ),
  with_arn(value):: (
    local converted = value;
    assert std.isString(converted) : '"arn" expected to be of type "string"';
    {
      arn: converted,
    }
  ),
  with_capacity(value):: (
    local converted = value;
    assert std.isNumber(converted) : '"capacity" expected to be of type "number"';
    {
      capacity: converted,
    }
  ),
  with_description(value):: (
    local converted = value;
    assert std.isString(converted) : '"description" expected to be of type "string"';
    {
      description: converted,
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
  '#with_region':: 'Region where this resource will be [managed](https://docs.aws.amazon.com/general/latest/gr/rande.html#regional-endpoints). Defaults to the Region set in the [provider configuration](https://registry.terraform.io/providers/hashicorp/aws/latest/docs#aws-configuration-reference).',
  with_region(value):: (
    local converted = value;
    assert std.isString(converted) : '"region" expected to be of type "string"';
    {
      region: converted,
    }
  ),
  with_rules(value):: (
    local converted = value;
    assert std.isString(converted) : '"rules" expected to be of type "string"';
    {
      rules: converted,
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
  with_update_token(value):: (
    local converted = value;
    assert std.isString(converted) : '"update_token" expected to be of type "string"';
    {
      update_token: converted,
    }
  ),
  encryption_configuration:: {
    local block = self,
    new(type):: (
      {}
      + block.with_type(type)
    ),
    with_key_id(value):: (
      local converted = value;
      assert std.isString(converted) : '"key_id" expected to be of type "string"';
      {
        key_id: converted,
      }
    ),
    with_type(value):: (
      local converted = value;
      assert std.isString(converted) : '"type" expected to be of type "string"';
      {
        type: converted,
      }
    ),
  },
  rule_group:: {
    local block = self,
    new():: (
      {}
    ),
    reference_sets:: {
      local block = self,
      new():: (
        {}
      ),
      ip_set_references:: {
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
        ip_set_reference:: {
          local block = self,
          new(reference_arn):: (
            {}
            + block.with_reference_arn(reference_arn)
          ),
          with_reference_arn(value):: (
            local converted = value;
            assert std.isString(converted) : '"reference_arn" expected to be of type "string"';
            {
              reference_arn: converted,
            }
          ),
        },
        with_ip_set_reference(value):: (
          local converted = if std.isArray(value) then value else [value];
          {
            ip_set_reference: value,
          }
        ),
        with_ip_set_reference_mixin(value):: (
          local converted = if std.isArray(value) then value else [value];
          {
            ip_set_reference+: converted,
          }
        ),
      },
      with_ip_set_references(value):: (
        local converted = if std.isArray(value) then value else [value];
        {
          ip_set_references: value,
        }
      ),
      with_ip_set_references_mixin(value):: (
        local converted = if std.isArray(value) then value else [value];
        {
          ip_set_references+: converted,
        }
      ),
    },
    rule_variables:: {
      local block = self,
      new():: (
        {}
      ),
      ip_sets:: {
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
        ip_set:: {
          local block = self,
          new(definition):: (
            {}
            + block.with_definition(definition)
          ),
          with_definition(value):: (
            local converted = if std.isArray(value) then value else [value];
            assert (std.isArray(converted) && std.length(std.set(converted)) == std.length(converted)) : '"definition" expected to be of type "set"';
            {
              definition: converted,
            }
          ),
          with_definition_mixin(value):: (
            local converted = if std.isArray(value) then value else [value];
            assert (std.isArray(converted) && std.length(std.set(converted)) == std.length(converted)) : '"definition" expected to be of type "set"';
            {
              definition+: converted,
            }
          ),
        },
        with_ip_set(value):: (
          local converted = if std.isArray(value) then value else [value];
          {
            ip_set: value,
          }
        ),
        with_ip_set_mixin(value):: (
          local converted = if std.isArray(value) then value else [value];
          {
            ip_set+: converted,
          }
        ),
      },
      port_sets:: {
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
        port_set:: {
          local block = self,
          new(definition):: (
            {}
            + block.with_definition(definition)
          ),
          with_definition(value):: (
            local converted = if std.isArray(value) then value else [value];
            assert (std.isArray(converted) && std.length(std.set(converted)) == std.length(converted)) : '"definition" expected to be of type "set"';
            {
              definition: converted,
            }
          ),
          with_definition_mixin(value):: (
            local converted = if std.isArray(value) then value else [value];
            assert (std.isArray(converted) && std.length(std.set(converted)) == std.length(converted)) : '"definition" expected to be of type "set"';
            {
              definition+: converted,
            }
          ),
        },
        with_port_set(value):: (
          local converted = if std.isArray(value) then value else [value];
          {
            port_set: value,
          }
        ),
        with_port_set_mixin(value):: (
          local converted = if std.isArray(value) then value else [value];
          {
            port_set+: converted,
          }
        ),
      },
      with_ip_sets(value):: (
        local converted = if std.isArray(value) then value else [value];
        {
          ip_sets: value,
        }
      ),
      with_port_sets(value):: (
        local converted = if std.isArray(value) then value else [value];
        {
          port_sets: value,
        }
      ),
      with_ip_sets_mixin(value):: (
        local converted = if std.isArray(value) then value else [value];
        {
          ip_sets+: converted,
        }
      ),
      with_port_sets_mixin(value):: (
        local converted = if std.isArray(value) then value else [value];
        {
          port_sets+: converted,
        }
      ),
    },
    rules_source:: {
      local block = self,
      new():: (
        {}
      ),
      with_rules_string(value):: (
        local converted = value;
        assert std.isString(converted) : '"rules_string" expected to be of type "string"';
        {
          rules_string: converted,
        }
      ),
      rules_source_list:: {
        local block = self,
        new(generated_rules_type, target_types, targets):: (
          {}
          + block.with_generated_rules_type(generated_rules_type)
          + block.with_target_types(target_types)
          + block.with_targets(targets)
        ),
        with_generated_rules_type(value):: (
          local converted = value;
          assert std.isString(converted) : '"generated_rules_type" expected to be of type "string"';
          {
            generated_rules_type: converted,
          }
        ),
        with_target_types(value):: (
          local converted = if std.isArray(value) then value else [value];
          assert (std.isArray(converted) && std.length(std.set(converted)) == std.length(converted)) : '"target_types" expected to be of type "set"';
          {
            target_types: converted,
          }
        ),
        with_target_types_mixin(value):: (
          local converted = if std.isArray(value) then value else [value];
          assert (std.isArray(converted) && std.length(std.set(converted)) == std.length(converted)) : '"target_types" expected to be of type "set"';
          {
            target_types+: converted,
          }
        ),
        with_targets(value):: (
          local converted = if std.isArray(value) then value else [value];
          assert (std.isArray(converted) && std.length(std.set(converted)) == std.length(converted)) : '"targets" expected to be of type "set"';
          {
            targets: converted,
          }
        ),
        with_targets_mixin(value):: (
          local converted = if std.isArray(value) then value else [value];
          assert (std.isArray(converted) && std.length(std.set(converted)) == std.length(converted)) : '"targets" expected to be of type "set"';
          {
            targets+: converted,
          }
        ),
      },
      stateful_rule:: {
        local block = self,
        new(action):: (
          {}
          + block.with_action(action)
        ),
        with_action(value):: (
          local converted = value;
          assert std.isString(converted) : '"action" expected to be of type "string"';
          {
            action: converted,
          }
        ),
        header:: {
          local block = self,
          new(destination, destination_port, direction, protocol, source, source_port):: (
            {}
            + block.with_destination(destination)
            + block.with_destination_port(destination_port)
            + block.with_direction(direction)
            + block.with_protocol(protocol)
            + block.with_source(source)
            + block.with_source_port(source_port)
          ),
          with_destination(value):: (
            local converted = value;
            assert std.isString(converted) : '"destination" expected to be of type "string"';
            {
              destination: converted,
            }
          ),
          with_destination_port(value):: (
            local converted = value;
            assert std.isString(converted) : '"destination_port" expected to be of type "string"';
            {
              destination_port: converted,
            }
          ),
          with_direction(value):: (
            local converted = value;
            assert std.isString(converted) : '"direction" expected to be of type "string"';
            {
              direction: converted,
            }
          ),
          with_protocol(value):: (
            local converted = value;
            assert std.isString(converted) : '"protocol" expected to be of type "string"';
            {
              protocol: converted,
            }
          ),
          with_source(value):: (
            local converted = value;
            assert std.isString(converted) : '"source" expected to be of type "string"';
            {
              source: converted,
            }
          ),
          with_source_port(value):: (
            local converted = value;
            assert std.isString(converted) : '"source_port" expected to be of type "string"';
            {
              source_port: converted,
            }
          ),
        },
        rule_option:: {
          local block = self,
          new(keyword):: (
            {}
            + block.with_keyword(keyword)
          ),
          with_keyword(value):: (
            local converted = value;
            assert std.isString(converted) : '"keyword" expected to be of type "string"';
            {
              keyword: converted,
            }
          ),
          with_settings(value):: (
            local converted = if std.isArray(value) then value else [value];
            assert (std.isArray(converted) && std.length(std.set(converted)) == std.length(converted)) : '"settings" expected to be of type "set"';
            {
              settings: converted,
            }
          ),
          with_settings_mixin(value):: (
            local converted = if std.isArray(value) then value else [value];
            assert (std.isArray(converted) && std.length(std.set(converted)) == std.length(converted)) : '"settings" expected to be of type "set"';
            {
              settings+: converted,
            }
          ),
        },
        with_header(value):: (
          local converted = if std.isArray(value) then value else [value];
          {
            header: value,
          }
        ),
        with_rule_option(value):: (
          local converted = if std.isArray(value) then value else [value];
          {
            rule_option: value,
          }
        ),
        with_header_mixin(value):: (
          local converted = if std.isArray(value) then value else [value];
          {
            header+: converted,
          }
        ),
        with_rule_option_mixin(value):: (
          local converted = if std.isArray(value) then value else [value];
          {
            rule_option+: converted,
          }
        ),
      },
      stateless_rules_and_custom_actions:: {
        local block = self,
        new():: (
          {}
        ),
        custom_action:: {
          local block = self,
          new(action_name):: (
            {}
            + block.with_action_name(action_name)
          ),
          with_action_name(value):: (
            local converted = value;
            assert std.isString(converted) : '"action_name" expected to be of type "string"';
            {
              action_name: converted,
            }
          ),
          action_definition:: {
            local block = self,
            new():: (
              {}
            ),
            publish_metric_action:: {
              local block = self,
              new():: (
                {}
              ),
              dimension:: {
                local block = self,
                new(value):: (
                  {}
                  + block.with_value(value)
                ),
                with_value(value):: (
                  local converted = value;
                  assert std.isString(converted) : '"value" expected to be of type "string"';
                  {
                    value: converted,
                  }
                ),
              },
              with_dimension(value):: (
                local converted = if std.isArray(value) then value else [value];
                {
                  dimension: value,
                }
              ),
              with_dimension_mixin(value):: (
                local converted = if std.isArray(value) then value else [value];
                {
                  dimension+: converted,
                }
              ),
            },
            with_publish_metric_action(value):: (
              local converted = if std.isArray(value) then value else [value];
              {
                publish_metric_action: value,
              }
            ),
            with_publish_metric_action_mixin(value):: (
              local converted = if std.isArray(value) then value else [value];
              {
                publish_metric_action+: converted,
              }
            ),
          },
          with_action_definition(value):: (
            local converted = if std.isArray(value) then value else [value];
            {
              action_definition: value,
            }
          ),
          with_action_definition_mixin(value):: (
            local converted = if std.isArray(value) then value else [value];
            {
              action_definition+: converted,
            }
          ),
        },
        stateless_rule:: {
          local block = self,
          new(priority):: (
            {}
            + block.with_priority(priority)
          ),
          with_priority(value):: (
            local converted = value;
            assert std.isNumber(converted) : '"priority" expected to be of type "number"';
            {
              priority: converted,
            }
          ),
          rule_definition:: {
            local block = self,
            new(actions):: (
              {}
              + block.with_actions(actions)
            ),
            with_actions(value):: (
              local converted = if std.isArray(value) then value else [value];
              assert (std.isArray(converted) && std.length(std.set(converted)) == std.length(converted)) : '"actions" expected to be of type "set"';
              {
                actions: converted,
              }
            ),
            with_actions_mixin(value):: (
              local converted = if std.isArray(value) then value else [value];
              assert (std.isArray(converted) && std.length(std.set(converted)) == std.length(converted)) : '"actions" expected to be of type "set"';
              {
                actions+: converted,
              }
            ),
            match_attributes:: {
              local block = self,
              new():: (
                {}
              ),
              with_protocols(value):: (
                local converted = if std.isArray(value) then value else [value];
                assert (std.isArray(converted) && std.length(std.set(converted)) == std.length(converted)) : '"protocols" expected to be of type "set"';
                {
                  protocols: converted,
                }
              ),
              with_protocols_mixin(value):: (
                local converted = if std.isArray(value) then value else [value];
                assert (std.isArray(converted) && std.length(std.set(converted)) == std.length(converted)) : '"protocols" expected to be of type "set"';
                {
                  protocols+: converted,
                }
              ),
              destination:: {
                local block = self,
                new(address_definition):: (
                  {}
                  + block.with_address_definition(address_definition)
                ),
                with_address_definition(value):: (
                  local converted = value;
                  assert std.isString(converted) : '"address_definition" expected to be of type "string"';
                  {
                    address_definition: converted,
                  }
                ),
              },
              destination_port:: {
                local block = self,
                new(from_port):: (
                  {}
                  + block.with_from_port(from_port)
                ),
                with_from_port(value):: (
                  local converted = value;
                  assert std.isNumber(converted) : '"from_port" expected to be of type "number"';
                  {
                    from_port: converted,
                  }
                ),
                with_to_port(value):: (
                  local converted = value;
                  assert std.isNumber(converted) : '"to_port" expected to be of type "number"';
                  {
                    to_port: converted,
                  }
                ),
              },
              source:: {
                local block = self,
                new(address_definition):: (
                  {}
                  + block.with_address_definition(address_definition)
                ),
                with_address_definition(value):: (
                  local converted = value;
                  assert std.isString(converted) : '"address_definition" expected to be of type "string"';
                  {
                    address_definition: converted,
                  }
                ),
              },
              source_port:: {
                local block = self,
                new(from_port):: (
                  {}
                  + block.with_from_port(from_port)
                ),
                with_from_port(value):: (
                  local converted = value;
                  assert std.isNumber(converted) : '"from_port" expected to be of type "number"';
                  {
                    from_port: converted,
                  }
                ),
                with_to_port(value):: (
                  local converted = value;
                  assert std.isNumber(converted) : '"to_port" expected to be of type "number"';
                  {
                    to_port: converted,
                  }
                ),
              },
              tcp_flag:: {
                local block = self,
                new(flags):: (
                  {}
                  + block.with_flags(flags)
                ),
                with_flags(value):: (
                  local converted = if std.isArray(value) then value else [value];
                  assert (std.isArray(converted) && std.length(std.set(converted)) == std.length(converted)) : '"flags" expected to be of type "set"';
                  {
                    flags: converted,
                  }
                ),
                with_flags_mixin(value):: (
                  local converted = if std.isArray(value) then value else [value];
                  assert (std.isArray(converted) && std.length(std.set(converted)) == std.length(converted)) : '"flags" expected to be of type "set"';
                  {
                    flags+: converted,
                  }
                ),
                with_masks(value):: (
                  local converted = if std.isArray(value) then value else [value];
                  assert (std.isArray(converted) && std.length(std.set(converted)) == std.length(converted)) : '"masks" expected to be of type "set"';
                  {
                    masks: converted,
                  }
                ),
                with_masks_mixin(value):: (
                  local converted = if std.isArray(value) then value else [value];
                  assert (std.isArray(converted) && std.length(std.set(converted)) == std.length(converted)) : '"masks" expected to be of type "set"';
                  {
                    masks+: converted,
                  }
                ),
              },
              with_destination(value):: (
                local converted = if std.isArray(value) then value else [value];
                {
                  destination: value,
                }
              ),
              with_destination_port(value):: (
                local converted = if std.isArray(value) then value else [value];
                {
                  destination_port: value,
                }
              ),
              with_source(value):: (
                local converted = if std.isArray(value) then value else [value];
                {
                  source: value,
                }
              ),
              with_source_port(value):: (
                local converted = if std.isArray(value) then value else [value];
                {
                  source_port: value,
                }
              ),
              with_tcp_flag(value):: (
                local converted = if std.isArray(value) then value else [value];
                {
                  tcp_flag: value,
                }
              ),
              with_destination_mixin(value):: (
                local converted = if std.isArray(value) then value else [value];
                {
                  destination+: converted,
                }
              ),
              with_destination_port_mixin(value):: (
                local converted = if std.isArray(value) then value else [value];
                {
                  destination_port+: converted,
                }
              ),
              with_source_mixin(value):: (
                local converted = if std.isArray(value) then value else [value];
                {
                  source+: converted,
                }
              ),
              with_source_port_mixin(value):: (
                local converted = if std.isArray(value) then value else [value];
                {
                  source_port+: converted,
                }
              ),
              with_tcp_flag_mixin(value):: (
                local converted = if std.isArray(value) then value else [value];
                {
                  tcp_flag+: converted,
                }
              ),
            },
            with_match_attributes(value):: (
              local converted = if std.isArray(value) then value else [value];
              {
                match_attributes: value,
              }
            ),
            with_match_attributes_mixin(value):: (
              local converted = if std.isArray(value) then value else [value];
              {
                match_attributes+: converted,
              }
            ),
          },
          with_rule_definition(value):: (
            local converted = if std.isArray(value) then value else [value];
            {
              rule_definition: value,
            }
          ),
          with_rule_definition_mixin(value):: (
            local converted = if std.isArray(value) then value else [value];
            {
              rule_definition+: converted,
            }
          ),
        },
        with_custom_action(value):: (
          local converted = if std.isArray(value) then value else [value];
          {
            custom_action: value,
          }
        ),
        with_stateless_rule(value):: (
          local converted = if std.isArray(value) then value else [value];
          {
            stateless_rule: value,
          }
        ),
        with_custom_action_mixin(value):: (
          local converted = if std.isArray(value) then value else [value];
          {
            custom_action+: converted,
          }
        ),
        with_stateless_rule_mixin(value):: (
          local converted = if std.isArray(value) then value else [value];
          {
            stateless_rule+: converted,
          }
        ),
      },
      with_rules_source_list(value):: (
        local converted = if std.isArray(value) then value else [value];
        {
          rules_source_list: value,
        }
      ),
      with_stateful_rule(value):: (
        local converted = if std.isArray(value) then value else [value];
        {
          stateful_rule: value,
        }
      ),
      with_stateless_rules_and_custom_actions(value):: (
        local converted = if std.isArray(value) then value else [value];
        {
          stateless_rules_and_custom_actions: value,
        }
      ),
      with_rules_source_list_mixin(value):: (
        local converted = if std.isArray(value) then value else [value];
        {
          rules_source_list+: converted,
        }
      ),
      with_stateful_rule_mixin(value):: (
        local converted = if std.isArray(value) then value else [value];
        {
          stateful_rule+: converted,
        }
      ),
      with_stateless_rules_and_custom_actions_mixin(value):: (
        local converted = if std.isArray(value) then value else [value];
        {
          stateless_rules_and_custom_actions+: converted,
        }
      ),
    },
    stateful_rule_options:: {
      local block = self,
      new(rule_order):: (
        {}
        + block.with_rule_order(rule_order)
      ),
      with_rule_order(value):: (
        local converted = value;
        assert std.isString(converted) : '"rule_order" expected to be of type "string"';
        {
          rule_order: converted,
        }
      ),
    },
    with_reference_sets(value):: (
      local converted = if std.isArray(value) then value else [value];
      {
        reference_sets: value,
      }
    ),
    with_rule_variables(value):: (
      local converted = if std.isArray(value) then value else [value];
      {
        rule_variables: value,
      }
    ),
    with_rules_source(value):: (
      local converted = if std.isArray(value) then value else [value];
      {
        rules_source: value,
      }
    ),
    with_stateful_rule_options(value):: (
      local converted = if std.isArray(value) then value else [value];
      {
        stateful_rule_options: value,
      }
    ),
    with_reference_sets_mixin(value):: (
      local converted = if std.isArray(value) then value else [value];
      {
        reference_sets+: converted,
      }
    ),
    with_rule_variables_mixin(value):: (
      local converted = if std.isArray(value) then value else [value];
      {
        rule_variables+: converted,
      }
    ),
    with_rules_source_mixin(value):: (
      local converted = if std.isArray(value) then value else [value];
      {
        rules_source+: converted,
      }
    ),
    with_stateful_rule_options_mixin(value):: (
      local converted = if std.isArray(value) then value else [value];
      {
        stateful_rule_options+: converted,
      }
    ),
  },
  with_encryption_configuration(value):: (
    local converted = if std.isArray(value) then value else [value];
    {
      encryption_configuration: value,
    }
  ),
  with_rule_group(value):: (
    local converted = if std.isArray(value) then value else [value];
    {
      rule_group: value,
    }
  ),
  with_encryption_configuration_mixin(value):: (
    local converted = if std.isArray(value) then value else [value];
    {
      encryption_configuration+: converted,
    }
  ),
  with_rule_group_mixin(value):: (
    local converted = if std.isArray(value) then value else [value];
    {
      rule_group+: converted,
    }
  ),
}
