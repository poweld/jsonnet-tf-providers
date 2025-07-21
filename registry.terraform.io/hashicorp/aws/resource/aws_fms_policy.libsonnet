{
  local block = self,
  new(exclude_resource_tags, name):: (
    {}
    + block.with_exclude_resource_tags(exclude_resource_tags)
    + block.with_name(name)
  ),
  with_arn(value):: (
    local converted = value;
    assert std.isString(converted) : '"arn" expected to be of type "string"';
    {
      arn: converted,
    }
  ),
  with_delete_all_policy_resources(value):: (
    local converted = value;
    assert std.isBoolean(converted) : '"delete_all_policy_resources" expected to be of type "bool"';
    {
      delete_all_policy_resources: converted,
    }
  ),
  with_delete_unused_fm_managed_resources(value):: (
    local converted = value;
    assert std.isBoolean(converted) : '"delete_unused_fm_managed_resources" expected to be of type "bool"';
    {
      delete_unused_fm_managed_resources: converted,
    }
  ),
  with_description(value):: (
    local converted = value;
    assert std.isString(converted) : '"description" expected to be of type "string"';
    {
      description: converted,
    }
  ),
  with_exclude_resource_tags(value):: (
    local converted = value;
    assert std.isBoolean(converted) : '"exclude_resource_tags" expected to be of type "bool"';
    {
      exclude_resource_tags: converted,
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
  with_policy_update_token(value):: (
    local converted = value;
    assert std.isString(converted) : '"policy_update_token" expected to be of type "string"';
    {
      policy_update_token: converted,
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
  with_remediation_enabled(value):: (
    local converted = value;
    assert std.isBoolean(converted) : '"remediation_enabled" expected to be of type "bool"';
    {
      remediation_enabled: converted,
    }
  ),
  with_resource_set_ids(value):: (
    local converted = if std.isArray(value) then value else [value];
    assert (std.isArray(converted) && std.length(std.set(converted)) == std.length(converted)) : '"resource_set_ids" expected to be of type "set"';
    {
      resource_set_ids: converted,
    }
  ),
  with_resource_set_ids_mixin(value):: (
    local converted = if std.isArray(value) then value else [value];
    assert (std.isArray(converted) && std.length(std.set(converted)) == std.length(converted)) : '"resource_set_ids" expected to be of type "set"';
    {
      resource_set_ids+: converted,
    }
  ),
  with_resource_tag_logical_operator(value):: (
    local converted = value;
    assert std.isString(converted) : '"resource_tag_logical_operator" expected to be of type "string"';
    {
      resource_tag_logical_operator: converted,
    }
  ),
  with_resource_tags(value):: (
    local converted = value;
    assert std.isObject(converted) : '"resource_tags" expected to be of type "map"';
    {
      resource_tags: converted,
    }
  ),
  with_resource_type(value):: (
    local converted = value;
    assert std.isString(converted) : '"resource_type" expected to be of type "string"';
    {
      resource_type: converted,
    }
  ),
  with_resource_type_list(value):: (
    local converted = if std.isArray(value) then value else [value];
    assert (std.isArray(converted) && std.length(std.set(converted)) == std.length(converted)) : '"resource_type_list" expected to be of type "set"';
    {
      resource_type_list: converted,
    }
  ),
  with_resource_type_list_mixin(value):: (
    local converted = if std.isArray(value) then value else [value];
    assert (std.isArray(converted) && std.length(std.set(converted)) == std.length(converted)) : '"resource_type_list" expected to be of type "set"';
    {
      resource_type_list+: converted,
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
  exclude_map:: {
    local block = self,
    new():: (
      {}
    ),
    with_account(value):: (
      local converted = if std.isArray(value) then value else [value];
      assert (std.isArray(converted) && std.length(std.set(converted)) == std.length(converted)) : '"account" expected to be of type "set"';
      {
        account: converted,
      }
    ),
    with_account_mixin(value):: (
      local converted = if std.isArray(value) then value else [value];
      assert (std.isArray(converted) && std.length(std.set(converted)) == std.length(converted)) : '"account" expected to be of type "set"';
      {
        account+: converted,
      }
    ),
    with_orgunit(value):: (
      local converted = if std.isArray(value) then value else [value];
      assert (std.isArray(converted) && std.length(std.set(converted)) == std.length(converted)) : '"orgunit" expected to be of type "set"';
      {
        orgunit: converted,
      }
    ),
    with_orgunit_mixin(value):: (
      local converted = if std.isArray(value) then value else [value];
      assert (std.isArray(converted) && std.length(std.set(converted)) == std.length(converted)) : '"orgunit" expected to be of type "set"';
      {
        orgunit+: converted,
      }
    ),
  },
  include_map:: {
    local block = self,
    new():: (
      {}
    ),
    with_account(value):: (
      local converted = if std.isArray(value) then value else [value];
      assert (std.isArray(converted) && std.length(std.set(converted)) == std.length(converted)) : '"account" expected to be of type "set"';
      {
        account: converted,
      }
    ),
    with_account_mixin(value):: (
      local converted = if std.isArray(value) then value else [value];
      assert (std.isArray(converted) && std.length(std.set(converted)) == std.length(converted)) : '"account" expected to be of type "set"';
      {
        account+: converted,
      }
    ),
    with_orgunit(value):: (
      local converted = if std.isArray(value) then value else [value];
      assert (std.isArray(converted) && std.length(std.set(converted)) == std.length(converted)) : '"orgunit" expected to be of type "set"';
      {
        orgunit: converted,
      }
    ),
    with_orgunit_mixin(value):: (
      local converted = if std.isArray(value) then value else [value];
      assert (std.isArray(converted) && std.length(std.set(converted)) == std.length(converted)) : '"orgunit" expected to be of type "set"';
      {
        orgunit+: converted,
      }
    ),
  },
  security_service_policy_data:: {
    local block = self,
    new(type):: (
      {}
      + block.with_type(type)
    ),
    with_managed_service_data(value):: (
      local converted = value;
      assert std.isString(converted) : '"managed_service_data" expected to be of type "string"';
      {
        managed_service_data: converted,
      }
    ),
    with_type(value):: (
      local converted = value;
      assert std.isString(converted) : '"type" expected to be of type "string"';
      {
        type: converted,
      }
    ),
    policy_option:: {
      local block = self,
      new():: (
        {}
      ),
      network_acl_common_policy:: {
        local block = self,
        new():: (
          {}
        ),
        network_acl_entry_set:: {
          local block = self,
          new(force_remediate_for_first_entries, force_remediate_for_last_entries):: (
            {}
            + block.with_force_remediate_for_first_entries(force_remediate_for_first_entries)
            + block.with_force_remediate_for_last_entries(force_remediate_for_last_entries)
          ),
          with_force_remediate_for_first_entries(value):: (
            local converted = value;
            assert std.isBoolean(converted) : '"force_remediate_for_first_entries" expected to be of type "bool"';
            {
              force_remediate_for_first_entries: converted,
            }
          ),
          with_force_remediate_for_last_entries(value):: (
            local converted = value;
            assert std.isBoolean(converted) : '"force_remediate_for_last_entries" expected to be of type "bool"';
            {
              force_remediate_for_last_entries: converted,
            }
          ),
          first_entry:: {
            local block = self,
            new(egress, protocol, rule_action):: (
              {}
              + block.with_egress(egress)
              + block.with_protocol(protocol)
              + block.with_rule_action(rule_action)
            ),
            with_cidr_block(value):: (
              local converted = value;
              assert std.isString(converted) : '"cidr_block" expected to be of type "string"';
              {
                cidr_block: converted,
              }
            ),
            with_egress(value):: (
              local converted = value;
              assert std.isBoolean(converted) : '"egress" expected to be of type "bool"';
              {
                egress: converted,
              }
            ),
            with_ipv6_cidr_block(value):: (
              local converted = value;
              assert std.isString(converted) : '"ipv6_cidr_block" expected to be of type "string"';
              {
                ipv6_cidr_block: converted,
              }
            ),
            with_protocol(value):: (
              local converted = value;
              assert std.isString(converted) : '"protocol" expected to be of type "string"';
              {
                protocol: converted,
              }
            ),
            with_rule_action(value):: (
              local converted = value;
              assert std.isString(converted) : '"rule_action" expected to be of type "string"';
              {
                rule_action: converted,
              }
            ),
            icmp_type_code:: {
              local block = self,
              new():: (
                {}
              ),
              with_code(value):: (
                local converted = value;
                assert std.isNumber(converted) : '"code" expected to be of type "number"';
                {
                  code: converted,
                }
              ),
              with_type(value):: (
                local converted = value;
                assert std.isNumber(converted) : '"type" expected to be of type "number"';
                {
                  type: converted,
                }
              ),
            },
            port_range:: {
              local block = self,
              new():: (
                {}
              ),
              with_from(value):: (
                local converted = value;
                assert std.isNumber(converted) : '"from" expected to be of type "number"';
                {
                  from: converted,
                }
              ),
              with_to(value):: (
                local converted = value;
                assert std.isNumber(converted) : '"to" expected to be of type "number"';
                {
                  to: converted,
                }
              ),
            },
            with_icmp_type_code(value):: (
              local converted = if std.isArray(value) then value else [value];
              {
                icmp_type_code: value,
              }
            ),
            with_port_range(value):: (
              local converted = if std.isArray(value) then value else [value];
              {
                port_range: value,
              }
            ),
            with_icmp_type_code_mixin(value):: (
              local converted = if std.isArray(value) then value else [value];
              {
                icmp_type_code+: converted,
              }
            ),
            with_port_range_mixin(value):: (
              local converted = if std.isArray(value) then value else [value];
              {
                port_range+: converted,
              }
            ),
          },
          last_entry:: {
            local block = self,
            new(egress, protocol, rule_action):: (
              {}
              + block.with_egress(egress)
              + block.with_protocol(protocol)
              + block.with_rule_action(rule_action)
            ),
            with_cidr_block(value):: (
              local converted = value;
              assert std.isString(converted) : '"cidr_block" expected to be of type "string"';
              {
                cidr_block: converted,
              }
            ),
            with_egress(value):: (
              local converted = value;
              assert std.isBoolean(converted) : '"egress" expected to be of type "bool"';
              {
                egress: converted,
              }
            ),
            with_ipv6_cidr_block(value):: (
              local converted = value;
              assert std.isString(converted) : '"ipv6_cidr_block" expected to be of type "string"';
              {
                ipv6_cidr_block: converted,
              }
            ),
            with_protocol(value):: (
              local converted = value;
              assert std.isString(converted) : '"protocol" expected to be of type "string"';
              {
                protocol: converted,
              }
            ),
            with_rule_action(value):: (
              local converted = value;
              assert std.isString(converted) : '"rule_action" expected to be of type "string"';
              {
                rule_action: converted,
              }
            ),
            icmp_type_code:: {
              local block = self,
              new():: (
                {}
              ),
              with_code(value):: (
                local converted = value;
                assert std.isNumber(converted) : '"code" expected to be of type "number"';
                {
                  code: converted,
                }
              ),
              with_type(value):: (
                local converted = value;
                assert std.isNumber(converted) : '"type" expected to be of type "number"';
                {
                  type: converted,
                }
              ),
            },
            port_range:: {
              local block = self,
              new():: (
                {}
              ),
              with_from(value):: (
                local converted = value;
                assert std.isNumber(converted) : '"from" expected to be of type "number"';
                {
                  from: converted,
                }
              ),
              with_to(value):: (
                local converted = value;
                assert std.isNumber(converted) : '"to" expected to be of type "number"';
                {
                  to: converted,
                }
              ),
            },
            with_icmp_type_code(value):: (
              local converted = if std.isArray(value) then value else [value];
              {
                icmp_type_code: value,
              }
            ),
            with_port_range(value):: (
              local converted = if std.isArray(value) then value else [value];
              {
                port_range: value,
              }
            ),
            with_icmp_type_code_mixin(value):: (
              local converted = if std.isArray(value) then value else [value];
              {
                icmp_type_code+: converted,
              }
            ),
            with_port_range_mixin(value):: (
              local converted = if std.isArray(value) then value else [value];
              {
                port_range+: converted,
              }
            ),
          },
          with_first_entry(value):: (
            local converted = if std.isArray(value) then value else [value];
            {
              first_entry: value,
            }
          ),
          with_last_entry(value):: (
            local converted = if std.isArray(value) then value else [value];
            {
              last_entry: value,
            }
          ),
          with_first_entry_mixin(value):: (
            local converted = if std.isArray(value) then value else [value];
            {
              first_entry+: converted,
            }
          ),
          with_last_entry_mixin(value):: (
            local converted = if std.isArray(value) then value else [value];
            {
              last_entry+: converted,
            }
          ),
        },
        with_network_acl_entry_set(value):: (
          local converted = if std.isArray(value) then value else [value];
          {
            network_acl_entry_set: value,
          }
        ),
        with_network_acl_entry_set_mixin(value):: (
          local converted = if std.isArray(value) then value else [value];
          {
            network_acl_entry_set+: converted,
          }
        ),
      },
      network_firewall_policy:: {
        local block = self,
        new():: (
          {}
        ),
        with_firewall_deployment_model(value):: (
          local converted = value;
          assert std.isString(converted) : '"firewall_deployment_model" expected to be of type "string"';
          {
            firewall_deployment_model: converted,
          }
        ),
      },
      third_party_firewall_policy:: {
        local block = self,
        new():: (
          {}
        ),
        with_firewall_deployment_model(value):: (
          local converted = value;
          assert std.isString(converted) : '"firewall_deployment_model" expected to be of type "string"';
          {
            firewall_deployment_model: converted,
          }
        ),
      },
      with_network_acl_common_policy(value):: (
        local converted = if std.isArray(value) then value else [value];
        {
          network_acl_common_policy: value,
        }
      ),
      with_network_firewall_policy(value):: (
        local converted = if std.isArray(value) then value else [value];
        {
          network_firewall_policy: value,
        }
      ),
      with_third_party_firewall_policy(value):: (
        local converted = if std.isArray(value) then value else [value];
        {
          third_party_firewall_policy: value,
        }
      ),
      with_network_acl_common_policy_mixin(value):: (
        local converted = if std.isArray(value) then value else [value];
        {
          network_acl_common_policy+: converted,
        }
      ),
      with_network_firewall_policy_mixin(value):: (
        local converted = if std.isArray(value) then value else [value];
        {
          network_firewall_policy+: converted,
        }
      ),
      with_third_party_firewall_policy_mixin(value):: (
        local converted = if std.isArray(value) then value else [value];
        {
          third_party_firewall_policy+: converted,
        }
      ),
    },
    with_policy_option(value):: (
      local converted = if std.isArray(value) then value else [value];
      {
        policy_option: value,
      }
    ),
    with_policy_option_mixin(value):: (
      local converted = if std.isArray(value) then value else [value];
      {
        policy_option+: converted,
      }
    ),
  },
  with_exclude_map(value):: (
    local converted = if std.isArray(value) then value else [value];
    {
      exclude_map: value,
    }
  ),
  with_include_map(value):: (
    local converted = if std.isArray(value) then value else [value];
    {
      include_map: value,
    }
  ),
  with_security_service_policy_data(value):: (
    local converted = if std.isArray(value) then value else [value];
    {
      security_service_policy_data: value,
    }
  ),
  with_exclude_map_mixin(value):: (
    local converted = if std.isArray(value) then value else [value];
    {
      exclude_map+: converted,
    }
  ),
  with_include_map_mixin(value):: (
    local converted = if std.isArray(value) then value else [value];
    {
      include_map+: converted,
    }
  ),
  with_security_service_policy_data_mixin(value):: (
    local converted = if std.isArray(value) then value else [value];
    {
      security_service_policy_data+: converted,
    }
  ),
}
