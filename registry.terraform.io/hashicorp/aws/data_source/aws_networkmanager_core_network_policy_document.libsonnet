{
  local block = self,
  new():: (
    {}
  ),
  with_id(value):: (
    local converted = value;
    assert std.isString(converted) : '"id" expected to be of type "string"';
    {
      id: converted,
    }
  ),
  with_json(value):: (
    local converted = value;
    assert std.isString(converted) : '"json" expected to be of type "string"';
    {
      json: converted,
    }
  ),
  with_version(value):: (
    local converted = value;
    assert std.isString(converted) : '"version" expected to be of type "string"';
    {
      version: converted,
    }
  ),
  attachment_policies:: {
    local block = self,
    new(rule_number):: (
      {}
      + block.with_rule_number(rule_number)
    ),
    with_condition_logic(value):: (
      local converted = value;
      assert std.isString(converted) : '"condition_logic" expected to be of type "string"';
      {
        condition_logic: converted,
      }
    ),
    with_description(value):: (
      local converted = value;
      assert std.isString(converted) : '"description" expected to be of type "string"';
      {
        description: converted,
      }
    ),
    with_rule_number(value):: (
      local converted = value;
      assert std.isNumber(converted) : '"rule_number" expected to be of type "number"';
      {
        rule_number: converted,
      }
    ),
    action:: {
      local block = self,
      new():: (
        {}
      ),
      with_add_to_network_function_group(value):: (
        local converted = value;
        assert std.isString(converted) : '"add_to_network_function_group" expected to be of type "string"';
        {
          add_to_network_function_group: converted,
        }
      ),
      with_association_method(value):: (
        local converted = value;
        assert std.isString(converted) : '"association_method" expected to be of type "string"';
        {
          association_method: converted,
        }
      ),
      with_require_acceptance(value):: (
        local converted = value;
        assert std.isBoolean(converted) : '"require_acceptance" expected to be of type "bool"';
        {
          require_acceptance: converted,
        }
      ),
      with_segment(value):: (
        local converted = value;
        assert std.isString(converted) : '"segment" expected to be of type "string"';
        {
          segment: converted,
        }
      ),
      with_tag_value_of_key(value):: (
        local converted = value;
        assert std.isString(converted) : '"tag_value_of_key" expected to be of type "string"';
        {
          tag_value_of_key: converted,
        }
      ),
    },
    conditions:: {
      local block = self,
      new(type):: (
        {}
        + block.with_type(type)
      ),
      with_key(value):: (
        local converted = value;
        assert std.isString(converted) : '"key" expected to be of type "string"';
        {
          key: converted,
        }
      ),
      with_operator(value):: (
        local converted = value;
        assert std.isString(converted) : '"operator" expected to be of type "string"';
        {
          operator: converted,
        }
      ),
      with_type(value):: (
        local converted = value;
        assert std.isString(converted) : '"type" expected to be of type "string"';
        {
          type: converted,
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
    with_action(value):: (
      local converted = if std.isArray(value) then value else [value];
      {
        action: value,
      }
    ),
    with_conditions(value):: (
      local converted = if std.isArray(value) then value else [value];
      {
        conditions: value,
      }
    ),
    with_action_mixin(value):: (
      local converted = if std.isArray(value) then value else [value];
      {
        action+: converted,
      }
    ),
    with_conditions_mixin(value):: (
      local converted = if std.isArray(value) then value else [value];
      {
        conditions+: converted,
      }
    ),
  },
  core_network_configuration:: {
    local block = self,
    new(asn_ranges):: (
      {}
      + block.with_asn_ranges(asn_ranges)
    ),
    with_asn_ranges(value):: (
      local converted = if std.isArray(value) then value else [value];
      assert (std.isArray(converted) && std.length(std.set(converted)) == std.length(converted)) : '"asn_ranges" expected to be of type "set"';
      {
        asn_ranges: converted,
      }
    ),
    with_asn_ranges_mixin(value):: (
      local converted = if std.isArray(value) then value else [value];
      assert (std.isArray(converted) && std.length(std.set(converted)) == std.length(converted)) : '"asn_ranges" expected to be of type "set"';
      {
        asn_ranges+: converted,
      }
    ),
    with_dns_support(value):: (
      local converted = value;
      assert std.isBoolean(converted) : '"dns_support" expected to be of type "bool"';
      {
        dns_support: converted,
      }
    ),
    with_inside_cidr_blocks(value):: (
      local converted = if std.isArray(value) then value else [value];
      assert (std.isArray(converted) && std.length(std.set(converted)) == std.length(converted)) : '"inside_cidr_blocks" expected to be of type "set"';
      {
        inside_cidr_blocks: converted,
      }
    ),
    with_inside_cidr_blocks_mixin(value):: (
      local converted = if std.isArray(value) then value else [value];
      assert (std.isArray(converted) && std.length(std.set(converted)) == std.length(converted)) : '"inside_cidr_blocks" expected to be of type "set"';
      {
        inside_cidr_blocks+: converted,
      }
    ),
    with_security_group_referencing_support(value):: (
      local converted = value;
      assert std.isBoolean(converted) : '"security_group_referencing_support" expected to be of type "bool"';
      {
        security_group_referencing_support: converted,
      }
    ),
    with_vpn_ecmp_support(value):: (
      local converted = value;
      assert std.isBoolean(converted) : '"vpn_ecmp_support" expected to be of type "bool"';
      {
        vpn_ecmp_support: converted,
      }
    ),
    edge_locations:: {
      local block = self,
      new(location):: (
        {}
        + block.with_location(location)
      ),
      with_asn(value):: (
        local converted = value;
        assert std.isString(converted) : '"asn" expected to be of type "string"';
        {
          asn: converted,
        }
      ),
      with_inside_cidr_blocks(value):: (
        local converted = if std.isArray(value) then value else [value];
        assert std.isArray(converted) : '"inside_cidr_blocks" expected to be of type "list"';
        {
          inside_cidr_blocks: converted,
        }
      ),
      with_inside_cidr_blocks_mixin(value):: (
        local converted = if std.isArray(value) then value else [value];
        assert std.isArray(converted) : '"inside_cidr_blocks" expected to be of type "list"';
        {
          inside_cidr_blocks+: converted,
        }
      ),
      with_location(value):: (
        local converted = value;
        assert std.isString(converted) : '"location" expected to be of type "string"';
        {
          location: converted,
        }
      ),
    },
    with_edge_locations(value):: (
      local converted = if std.isArray(value) then value else [value];
      {
        edge_locations: value,
      }
    ),
    with_edge_locations_mixin(value):: (
      local converted = if std.isArray(value) then value else [value];
      {
        edge_locations+: converted,
      }
    ),
  },
  network_function_groups:: {
    local block = self,
    new(name, require_attachment_acceptance):: (
      {}
      + block.with_name(name)
      + block.with_require_attachment_acceptance(require_attachment_acceptance)
    ),
    with_description(value):: (
      local converted = value;
      assert std.isString(converted) : '"description" expected to be of type "string"';
      {
        description: converted,
      }
    ),
    with_name(value):: (
      local converted = value;
      assert std.isString(converted) : '"name" expected to be of type "string"';
      {
        name: converted,
      }
    ),
    with_require_attachment_acceptance(value):: (
      local converted = value;
      assert std.isBoolean(converted) : '"require_attachment_acceptance" expected to be of type "bool"';
      {
        require_attachment_acceptance: converted,
      }
    ),
  },
  segment_actions:: {
    local block = self,
    new(action, segment):: (
      {}
      + block.with_action(action)
      + block.with_segment(segment)
    ),
    with_action(value):: (
      local converted = value;
      assert std.isString(converted) : '"action" expected to be of type "string"';
      {
        action: converted,
      }
    ),
    with_description(value):: (
      local converted = value;
      assert std.isString(converted) : '"description" expected to be of type "string"';
      {
        description: converted,
      }
    ),
    with_destination_cidr_blocks(value):: (
      local converted = if std.isArray(value) then value else [value];
      assert (std.isArray(converted) && std.length(std.set(converted)) == std.length(converted)) : '"destination_cidr_blocks" expected to be of type "set"';
      {
        destination_cidr_blocks: converted,
      }
    ),
    with_destination_cidr_blocks_mixin(value):: (
      local converted = if std.isArray(value) then value else [value];
      assert (std.isArray(converted) && std.length(std.set(converted)) == std.length(converted)) : '"destination_cidr_blocks" expected to be of type "set"';
      {
        destination_cidr_blocks+: converted,
      }
    ),
    with_destinations(value):: (
      local converted = if std.isArray(value) then value else [value];
      assert (std.isArray(converted) && std.length(std.set(converted)) == std.length(converted)) : '"destinations" expected to be of type "set"';
      {
        destinations: converted,
      }
    ),
    with_destinations_mixin(value):: (
      local converted = if std.isArray(value) then value else [value];
      assert (std.isArray(converted) && std.length(std.set(converted)) == std.length(converted)) : '"destinations" expected to be of type "set"';
      {
        destinations+: converted,
      }
    ),
    with_mode(value):: (
      local converted = value;
      assert std.isString(converted) : '"mode" expected to be of type "string"';
      {
        mode: converted,
      }
    ),
    with_segment(value):: (
      local converted = value;
      assert std.isString(converted) : '"segment" expected to be of type "string"';
      {
        segment: converted,
      }
    ),
    with_share_with(value):: (
      local converted = if std.isArray(value) then value else [value];
      assert (std.isArray(converted) && std.length(std.set(converted)) == std.length(converted)) : '"share_with" expected to be of type "set"';
      {
        share_with: converted,
      }
    ),
    with_share_with_mixin(value):: (
      local converted = if std.isArray(value) then value else [value];
      assert (std.isArray(converted) && std.length(std.set(converted)) == std.length(converted)) : '"share_with" expected to be of type "set"';
      {
        share_with+: converted,
      }
    ),
    with_share_with_except(value):: (
      local converted = if std.isArray(value) then value else [value];
      assert (std.isArray(converted) && std.length(std.set(converted)) == std.length(converted)) : '"share_with_except" expected to be of type "set"';
      {
        share_with_except: converted,
      }
    ),
    with_share_with_except_mixin(value):: (
      local converted = if std.isArray(value) then value else [value];
      assert (std.isArray(converted) && std.length(std.set(converted)) == std.length(converted)) : '"share_with_except" expected to be of type "set"';
      {
        share_with_except+: converted,
      }
    ),
    via:: {
      local block = self,
      new():: (
        {}
      ),
      with_network_function_groups(value):: (
        local converted = if std.isArray(value) then value else [value];
        assert (std.isArray(converted) && std.length(std.set(converted)) == std.length(converted)) : '"network_function_groups" expected to be of type "set"';
        {
          network_function_groups: converted,
        }
      ),
      with_network_function_groups_mixin(value):: (
        local converted = if std.isArray(value) then value else [value];
        assert (std.isArray(converted) && std.length(std.set(converted)) == std.length(converted)) : '"network_function_groups" expected to be of type "set"';
        {
          network_function_groups+: converted,
        }
      ),
      with_edge_override:: {
        local block = self,
        new():: (
          {}
        ),
        with_edge_sets(value):: (
          local converted = if std.isArray(value) then value else [value];
          assert (std.isArray(converted) && std.length(std.set(converted)) == std.length(converted)) : '"edge_sets" expected to be of type "set"';
          {
            edge_sets: converted,
          }
        ),
        with_edge_sets_mixin(value):: (
          local converted = if std.isArray(value) then value else [value];
          assert (std.isArray(converted) && std.length(std.set(converted)) == std.length(converted)) : '"edge_sets" expected to be of type "set"';
          {
            edge_sets+: converted,
          }
        ),
        with_use_edge(value):: (
          local converted = value;
          assert std.isString(converted) : '"use_edge" expected to be of type "string"';
          {
            use_edge: converted,
          }
        ),
        with_use_edge_location(value):: (
          local converted = value;
          assert std.isString(converted) : '"use_edge_location" expected to be of type "string"';
          {
            use_edge_location: converted,
          }
        ),
      },
      with_with_edge_override(value):: (
        local converted = if std.isArray(value) then value else [value];
        {
          with_edge_override: value,
        }
      ),
      with_with_edge_override_mixin(value):: (
        local converted = if std.isArray(value) then value else [value];
        {
          with_edge_override+: converted,
        }
      ),
    },
    when_sent_to:: {
      local block = self,
      new():: (
        {}
      ),
      with_segments(value):: (
        local converted = if std.isArray(value) then value else [value];
        assert (std.isArray(converted) && std.length(std.set(converted)) == std.length(converted)) : '"segments" expected to be of type "set"';
        {
          segments: converted,
        }
      ),
      with_segments_mixin(value):: (
        local converted = if std.isArray(value) then value else [value];
        assert (std.isArray(converted) && std.length(std.set(converted)) == std.length(converted)) : '"segments" expected to be of type "set"';
        {
          segments+: converted,
        }
      ),
    },
    with_via(value):: (
      local converted = if std.isArray(value) then value else [value];
      {
        via: value,
      }
    ),
    with_when_sent_to(value):: (
      local converted = if std.isArray(value) then value else [value];
      {
        when_sent_to: value,
      }
    ),
    with_via_mixin(value):: (
      local converted = if std.isArray(value) then value else [value];
      {
        via+: converted,
      }
    ),
    with_when_sent_to_mixin(value):: (
      local converted = if std.isArray(value) then value else [value];
      {
        when_sent_to+: converted,
      }
    ),
  },
  segments:: {
    local block = self,
    new(name):: (
      {}
      + block.with_name(name)
    ),
    with_allow_filter(value):: (
      local converted = if std.isArray(value) then value else [value];
      assert (std.isArray(converted) && std.length(std.set(converted)) == std.length(converted)) : '"allow_filter" expected to be of type "set"';
      {
        allow_filter: converted,
      }
    ),
    with_allow_filter_mixin(value):: (
      local converted = if std.isArray(value) then value else [value];
      assert (std.isArray(converted) && std.length(std.set(converted)) == std.length(converted)) : '"allow_filter" expected to be of type "set"';
      {
        allow_filter+: converted,
      }
    ),
    with_deny_filter(value):: (
      local converted = if std.isArray(value) then value else [value];
      assert (std.isArray(converted) && std.length(std.set(converted)) == std.length(converted)) : '"deny_filter" expected to be of type "set"';
      {
        deny_filter: converted,
      }
    ),
    with_deny_filter_mixin(value):: (
      local converted = if std.isArray(value) then value else [value];
      assert (std.isArray(converted) && std.length(std.set(converted)) == std.length(converted)) : '"deny_filter" expected to be of type "set"';
      {
        deny_filter+: converted,
      }
    ),
    with_description(value):: (
      local converted = value;
      assert std.isString(converted) : '"description" expected to be of type "string"';
      {
        description: converted,
      }
    ),
    with_edge_locations(value):: (
      local converted = if std.isArray(value) then value else [value];
      assert (std.isArray(converted) && std.length(std.set(converted)) == std.length(converted)) : '"edge_locations" expected to be of type "set"';
      {
        edge_locations: converted,
      }
    ),
    with_edge_locations_mixin(value):: (
      local converted = if std.isArray(value) then value else [value];
      assert (std.isArray(converted) && std.length(std.set(converted)) == std.length(converted)) : '"edge_locations" expected to be of type "set"';
      {
        edge_locations+: converted,
      }
    ),
    with_isolate_attachments(value):: (
      local converted = value;
      assert std.isBoolean(converted) : '"isolate_attachments" expected to be of type "bool"';
      {
        isolate_attachments: converted,
      }
    ),
    with_name(value):: (
      local converted = value;
      assert std.isString(converted) : '"name" expected to be of type "string"';
      {
        name: converted,
      }
    ),
    with_require_attachment_acceptance(value):: (
      local converted = value;
      assert std.isBoolean(converted) : '"require_attachment_acceptance" expected to be of type "bool"';
      {
        require_attachment_acceptance: converted,
      }
    ),
  },
  with_attachment_policies(value):: (
    local converted = if std.isArray(value) then value else [value];
    {
      attachment_policies: value,
    }
  ),
  with_core_network_configuration(value):: (
    local converted = if std.isArray(value) then value else [value];
    {
      core_network_configuration: value,
    }
  ),
  with_network_function_groups(value):: (
    local converted = if std.isArray(value) then value else [value];
    {
      network_function_groups: value,
    }
  ),
  with_segment_actions(value):: (
    local converted = if std.isArray(value) then value else [value];
    {
      segment_actions: value,
    }
  ),
  with_segments(value):: (
    local converted = if std.isArray(value) then value else [value];
    {
      segments: value,
    }
  ),
  with_attachment_policies_mixin(value):: (
    local converted = if std.isArray(value) then value else [value];
    {
      attachment_policies+: converted,
    }
  ),
  with_core_network_configuration_mixin(value):: (
    local converted = if std.isArray(value) then value else [value];
    {
      core_network_configuration+: converted,
    }
  ),
  with_network_function_groups_mixin(value):: (
    local converted = if std.isArray(value) then value else [value];
    {
      network_function_groups+: converted,
    }
  ),
  with_segment_actions_mixin(value):: (
    local converted = if std.isArray(value) then value else [value];
    {
      segment_actions+: converted,
    }
  ),
  with_segments_mixin(value):: (
    local converted = if std.isArray(value) then value else [value];
    {
      segments+: converted,
    }
  ),
}
