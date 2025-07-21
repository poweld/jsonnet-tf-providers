{
  local block = self,
  new(name):: (
    {}
    + block.with_name(name)
  ),
  with_arn(value):: (
    local converted = value;
    assert std.isString(converted) : '"arn" expected to be of type "string"';
    {
      arn: converted,
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
  firewall_policy:: {
    local block = self,
    new(stateless_default_actions, stateless_fragment_default_actions):: (
      {}
      + block.with_stateless_default_actions(stateless_default_actions)
      + block.with_stateless_fragment_default_actions(stateless_fragment_default_actions)
    ),
    with_stateful_default_actions(value):: (
      local converted = if std.isArray(value) then value else [value];
      assert (std.isArray(converted) && std.length(std.set(converted)) == std.length(converted)) : '"stateful_default_actions" expected to be of type "set"';
      {
        stateful_default_actions: converted,
      }
    ),
    with_stateful_default_actions_mixin(value):: (
      local converted = if std.isArray(value) then value else [value];
      assert (std.isArray(converted) && std.length(std.set(converted)) == std.length(converted)) : '"stateful_default_actions" expected to be of type "set"';
      {
        stateful_default_actions+: converted,
      }
    ),
    with_stateless_default_actions(value):: (
      local converted = if std.isArray(value) then value else [value];
      assert (std.isArray(converted) && std.length(std.set(converted)) == std.length(converted)) : '"stateless_default_actions" expected to be of type "set"';
      {
        stateless_default_actions: converted,
      }
    ),
    with_stateless_default_actions_mixin(value):: (
      local converted = if std.isArray(value) then value else [value];
      assert (std.isArray(converted) && std.length(std.set(converted)) == std.length(converted)) : '"stateless_default_actions" expected to be of type "set"';
      {
        stateless_default_actions+: converted,
      }
    ),
    with_stateless_fragment_default_actions(value):: (
      local converted = if std.isArray(value) then value else [value];
      assert (std.isArray(converted) && std.length(std.set(converted)) == std.length(converted)) : '"stateless_fragment_default_actions" expected to be of type "set"';
      {
        stateless_fragment_default_actions: converted,
      }
    ),
    with_stateless_fragment_default_actions_mixin(value):: (
      local converted = if std.isArray(value) then value else [value];
      assert (std.isArray(converted) && std.length(std.set(converted)) == std.length(converted)) : '"stateless_fragment_default_actions" expected to be of type "set"';
      {
        stateless_fragment_default_actions+: converted,
      }
    ),
    with_tls_inspection_configuration_arn(value):: (
      local converted = value;
      assert std.isString(converted) : '"tls_inspection_configuration_arn" expected to be of type "string"';
      {
        tls_inspection_configuration_arn: converted,
      }
    ),
    policy_variables:: {
      local block = self,
      new():: (
        {}
      ),
      rule_variables:: {
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
      with_rule_variables(value):: (
        local converted = if std.isArray(value) then value else [value];
        {
          rule_variables: value,
        }
      ),
      with_rule_variables_mixin(value):: (
        local converted = if std.isArray(value) then value else [value];
        {
          rule_variables+: converted,
        }
      ),
    },
    stateful_engine_options:: {
      local block = self,
      new():: (
        {}
      ),
      with_rule_order(value):: (
        local converted = value;
        assert std.isString(converted) : '"rule_order" expected to be of type "string"';
        {
          rule_order: converted,
        }
      ),
      with_stream_exception_policy(value):: (
        local converted = value;
        assert std.isString(converted) : '"stream_exception_policy" expected to be of type "string"';
        {
          stream_exception_policy: converted,
        }
      ),
      flow_timeouts:: {
        local block = self,
        new():: (
          {}
        ),
        with_tcp_idle_timeout_seconds(value):: (
          local converted = value;
          assert std.isNumber(converted) : '"tcp_idle_timeout_seconds" expected to be of type "number"';
          {
            tcp_idle_timeout_seconds: converted,
          }
        ),
      },
      with_flow_timeouts(value):: (
        local converted = if std.isArray(value) then value else [value];
        {
          flow_timeouts: value,
        }
      ),
      with_flow_timeouts_mixin(value):: (
        local converted = if std.isArray(value) then value else [value];
        {
          flow_timeouts+: converted,
        }
      ),
    },
    stateful_rule_group_reference:: {
      local block = self,
      new(resource_arn):: (
        {}
        + block.with_resource_arn(resource_arn)
      ),
      with_deep_threat_inspection(value):: (
        local converted = value;
        assert std.isString(converted) : '"deep_threat_inspection" expected to be of type "string"';
        {
          deep_threat_inspection: converted,
        }
      ),
      with_priority(value):: (
        local converted = value;
        assert std.isNumber(converted) : '"priority" expected to be of type "number"';
        {
          priority: converted,
        }
      ),
      with_resource_arn(value):: (
        local converted = value;
        assert std.isString(converted) : '"resource_arn" expected to be of type "string"';
        {
          resource_arn: converted,
        }
      ),
      override:: {
        local block = self,
        new():: (
          {}
        ),
        with_action(value):: (
          local converted = value;
          assert std.isString(converted) : '"action" expected to be of type "string"';
          {
            action: converted,
          }
        ),
      },
      with_override(value):: (
        local converted = if std.isArray(value) then value else [value];
        {
          override: value,
        }
      ),
      with_override_mixin(value):: (
        local converted = if std.isArray(value) then value else [value];
        {
          override+: converted,
        }
      ),
    },
    stateless_custom_action:: {
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
    stateless_rule_group_reference:: {
      local block = self,
      new(priority, resource_arn):: (
        {}
        + block.with_priority(priority)
        + block.with_resource_arn(resource_arn)
      ),
      with_priority(value):: (
        local converted = value;
        assert std.isNumber(converted) : '"priority" expected to be of type "number"';
        {
          priority: converted,
        }
      ),
      with_resource_arn(value):: (
        local converted = value;
        assert std.isString(converted) : '"resource_arn" expected to be of type "string"';
        {
          resource_arn: converted,
        }
      ),
    },
    with_policy_variables(value):: (
      local converted = if std.isArray(value) then value else [value];
      {
        policy_variables: value,
      }
    ),
    with_stateful_engine_options(value):: (
      local converted = if std.isArray(value) then value else [value];
      {
        stateful_engine_options: value,
      }
    ),
    with_stateful_rule_group_reference(value):: (
      local converted = if std.isArray(value) then value else [value];
      {
        stateful_rule_group_reference: value,
      }
    ),
    with_stateless_custom_action(value):: (
      local converted = if std.isArray(value) then value else [value];
      {
        stateless_custom_action: value,
      }
    ),
    with_stateless_rule_group_reference(value):: (
      local converted = if std.isArray(value) then value else [value];
      {
        stateless_rule_group_reference: value,
      }
    ),
    with_policy_variables_mixin(value):: (
      local converted = if std.isArray(value) then value else [value];
      {
        policy_variables+: converted,
      }
    ),
    with_stateful_engine_options_mixin(value):: (
      local converted = if std.isArray(value) then value else [value];
      {
        stateful_engine_options+: converted,
      }
    ),
    with_stateful_rule_group_reference_mixin(value):: (
      local converted = if std.isArray(value) then value else [value];
      {
        stateful_rule_group_reference+: converted,
      }
    ),
    with_stateless_custom_action_mixin(value):: (
      local converted = if std.isArray(value) then value else [value];
      {
        stateless_custom_action+: converted,
      }
    ),
    with_stateless_rule_group_reference_mixin(value):: (
      local converted = if std.isArray(value) then value else [value];
      {
        stateless_rule_group_reference+: converted,
      }
    ),
  },
  with_encryption_configuration(value):: (
    local converted = if std.isArray(value) then value else [value];
    {
      encryption_configuration: value,
    }
  ),
  with_firewall_policy(value):: (
    local converted = if std.isArray(value) then value else [value];
    {
      firewall_policy: value,
    }
  ),
  with_encryption_configuration_mixin(value):: (
    local converted = if std.isArray(value) then value else [value];
    {
      encryption_configuration+: converted,
    }
  ),
  with_firewall_policy_mixin(value):: (
    local converted = if std.isArray(value) then value else [value];
    {
      firewall_policy+: converted,
    }
  ),
}
