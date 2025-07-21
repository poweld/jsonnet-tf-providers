{
  local block = self,
  new(kms_key_id, name):: (
    {}
    + block.with_kms_key_id(kms_key_id)
    + block.with_name(name)
  ),
  with_arn(value):: (
    local converted = value;
    assert std.isString(converted) : '"arn" expected to be of type "string"';
    {
      arn: converted,
    }
  ),
  with_availability_zones(value):: (
    local converted = if std.isArray(value) then value else [value];
    assert std.isArray(converted) : '"availability_zones" expected to be of type "list"';
    {
      availability_zones: converted,
    }
  ),
  with_availability_zones_mixin(value):: (
    local converted = if std.isArray(value) then value else [value];
    assert std.isArray(converted) : '"availability_zones" expected to be of type "list"';
    {
      availability_zones+: converted,
    }
  ),
  with_created_timestamp(value):: (
    local converted = value;
    assert std.isString(converted) : '"created_timestamp" expected to be of type "string"';
    {
      created_timestamp: converted,
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
  with_infrastructure_account_id(value):: (
    local converted = value;
    assert std.isString(converted) : '"infrastructure_account_id" expected to be of type "string"';
    {
      infrastructure_account_id: converted,
    }
  ),
  with_kms_key_id(value):: (
    local converted = value;
    assert std.isString(converted) : '"kms_key_id" expected to be of type "string"';
    {
      kms_key_id: converted,
    }
  ),
  with_last_modified_timestamp(value):: (
    local converted = value;
    assert std.isString(converted) : '"last_modified_timestamp" expected to be of type "string"';
    {
      last_modified_timestamp: converted,
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
  with_status(value):: (
    local converted = value;
    assert std.isString(converted) : '"status" expected to be of type "string"';
    {
      status: converted,
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
  custom_dns_configuration:: {
    local block = self,
    new(custom_dns_server_ip, custom_dns_server_name):: (
      {}
      + block.with_custom_dns_server_ip(custom_dns_server_ip)
      + block.with_custom_dns_server_name(custom_dns_server_name)
    ),
    with_custom_dns_server_ip(value):: (
      local converted = value;
      assert std.isString(converted) : '"custom_dns_server_ip" expected to be of type "string"';
      {
        custom_dns_server_ip: converted,
      }
    ),
    with_custom_dns_server_name(value):: (
      local converted = value;
      assert std.isString(converted) : '"custom_dns_server_name" expected to be of type "string"';
      {
        custom_dns_server_name: converted,
      }
    ),
  },
  timeouts:: {
    local block = self,
    new():: (
      {}
    ),
    with_create(value):: (
      local converted = value;
      assert std.isString(converted) : '"create" expected to be of type "string"';
      {
        create: converted,
      }
    ),
    with_delete(value):: (
      local converted = value;
      assert std.isString(converted) : '"delete" expected to be of type "string"';
      {
        delete: converted,
      }
    ),
    with_update(value):: (
      local converted = value;
      assert std.isString(converted) : '"update" expected to be of type "string"';
      {
        update: converted,
      }
    ),
  },
  transit_gateway_configuration:: {
    local block = self,
    new(routable_cidr_space, transit_gateway_id):: (
      {}
      + block.with_routable_cidr_space(routable_cidr_space)
      + block.with_transit_gateway_id(transit_gateway_id)
    ),
    with_routable_cidr_space(value):: (
      local converted = value;
      assert std.isString(converted) : '"routable_cidr_space" expected to be of type "string"';
      {
        routable_cidr_space: converted,
      }
    ),
    with_transit_gateway_id(value):: (
      local converted = value;
      assert std.isString(converted) : '"transit_gateway_id" expected to be of type "string"';
      {
        transit_gateway_id: converted,
      }
    ),
    attachment_network_acl_configuration:: {
      local block = self,
      new(cidr_block, protocol, rule_action, rule_number):: (
        {}
        + block.with_cidr_block(cidr_block)
        + block.with_protocol(protocol)
        + block.with_rule_action(rule_action)
        + block.with_rule_number(rule_number)
      ),
      with_cidr_block(value):: (
        local converted = value;
        assert std.isString(converted) : '"cidr_block" expected to be of type "string"';
        {
          cidr_block: converted,
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
      with_rule_number(value):: (
        local converted = value;
        assert std.isNumber(converted) : '"rule_number" expected to be of type "number"';
        {
          rule_number: converted,
        }
      ),
      icmp_type_code:: {
        local block = self,
        new(code, type):: (
          {}
          + block.with_code(code)
          + block.with_type(type)
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
        new(from, to):: (
          {}
          + block.with_from(from)
          + block.with_to(to)
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
    with_attachment_network_acl_configuration(value):: (
      local converted = if std.isArray(value) then value else [value];
      {
        attachment_network_acl_configuration: value,
      }
    ),
    with_attachment_network_acl_configuration_mixin(value):: (
      local converted = if std.isArray(value) then value else [value];
      {
        attachment_network_acl_configuration+: converted,
      }
    ),
  },
  with_custom_dns_configuration(value):: (
    local converted = if std.isArray(value) then value else [value];
    {
      custom_dns_configuration: value,
    }
  ),
  with_timeouts(value):: (
    local converted = value;
    {
      timeouts: value,
    }
  ),
  with_transit_gateway_configuration(value):: (
    local converted = if std.isArray(value) then value else [value];
    {
      transit_gateway_configuration: value,
    }
  ),
  with_custom_dns_configuration_mixin(value):: (
    local converted = if std.isArray(value) then value else [value];
    {
      custom_dns_configuration+: converted,
    }
  ),
  with_transit_gateway_configuration_mixin(value):: (
    local converted = if std.isArray(value) then value else [value];
    {
      transit_gateway_configuration+: converted,
    }
  ),
}
