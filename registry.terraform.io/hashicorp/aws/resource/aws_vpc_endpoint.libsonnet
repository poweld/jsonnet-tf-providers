{
  local block = self,
  new(vpc_id):: (
    {}
    + block.with_vpc_id(vpc_id)
  ),
  with_arn(value):: (
    local converted = value;
    assert std.isString(converted) : '"arn" expected to be of type "string"';
    {
      arn: converted,
    }
  ),
  with_auto_accept(value):: (
    local converted = value;
    assert std.isBoolean(converted) : '"auto_accept" expected to be of type "bool"';
    {
      auto_accept: converted,
    }
  ),
  with_cidr_blocks(value):: (
    local converted = if std.isArray(value) then value else [value];
    assert std.isArray(converted) : '"cidr_blocks" expected to be of type "list"';
    {
      cidr_blocks: converted,
    }
  ),
  with_cidr_blocks_mixin(value):: (
    local converted = if std.isArray(value) then value else [value];
    assert std.isArray(converted) : '"cidr_blocks" expected to be of type "list"';
    {
      cidr_blocks+: converted,
    }
  ),
  with_dns_entry(value):: (
    local converted = if std.isArray(value) then value else [value];
    assert std.isArray(converted) : '"dns_entry" expected to be of type "list"';
    {
      dns_entry: converted,
    }
  ),
  with_dns_entry_mixin(value):: (
    local converted = if std.isArray(value) then value else [value];
    assert std.isArray(converted) : '"dns_entry" expected to be of type "list"';
    {
      dns_entry+: converted,
    }
  ),
  with_id(value):: (
    local converted = value;
    assert std.isString(converted) : '"id" expected to be of type "string"';
    {
      id: converted,
    }
  ),
  with_ip_address_type(value):: (
    local converted = value;
    assert std.isString(converted) : '"ip_address_type" expected to be of type "string"';
    {
      ip_address_type: converted,
    }
  ),
  with_network_interface_ids(value):: (
    local converted = if std.isArray(value) then value else [value];
    assert (std.isArray(converted) && std.length(std.set(converted)) == std.length(converted)) : '"network_interface_ids" expected to be of type "set"';
    {
      network_interface_ids: converted,
    }
  ),
  with_network_interface_ids_mixin(value):: (
    local converted = if std.isArray(value) then value else [value];
    assert (std.isArray(converted) && std.length(std.set(converted)) == std.length(converted)) : '"network_interface_ids" expected to be of type "set"';
    {
      network_interface_ids+: converted,
    }
  ),
  with_owner_id(value):: (
    local converted = value;
    assert std.isString(converted) : '"owner_id" expected to be of type "string"';
    {
      owner_id: converted,
    }
  ),
  with_policy(value):: (
    local converted = value;
    assert std.isString(converted) : '"policy" expected to be of type "string"';
    {
      policy: converted,
    }
  ),
  with_prefix_list_id(value):: (
    local converted = value;
    assert std.isString(converted) : '"prefix_list_id" expected to be of type "string"';
    {
      prefix_list_id: converted,
    }
  ),
  with_private_dns_enabled(value):: (
    local converted = value;
    assert std.isBoolean(converted) : '"private_dns_enabled" expected to be of type "bool"';
    {
      private_dns_enabled: converted,
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
  with_requester_managed(value):: (
    local converted = value;
    assert std.isBoolean(converted) : '"requester_managed" expected to be of type "bool"';
    {
      requester_managed: converted,
    }
  ),
  with_resource_configuration_arn(value):: (
    local converted = value;
    assert std.isString(converted) : '"resource_configuration_arn" expected to be of type "string"';
    {
      resource_configuration_arn: converted,
    }
  ),
  with_route_table_ids(value):: (
    local converted = if std.isArray(value) then value else [value];
    assert (std.isArray(converted) && std.length(std.set(converted)) == std.length(converted)) : '"route_table_ids" expected to be of type "set"';
    {
      route_table_ids: converted,
    }
  ),
  with_route_table_ids_mixin(value):: (
    local converted = if std.isArray(value) then value else [value];
    assert (std.isArray(converted) && std.length(std.set(converted)) == std.length(converted)) : '"route_table_ids" expected to be of type "set"';
    {
      route_table_ids+: converted,
    }
  ),
  with_security_group_ids(value):: (
    local converted = if std.isArray(value) then value else [value];
    assert (std.isArray(converted) && std.length(std.set(converted)) == std.length(converted)) : '"security_group_ids" expected to be of type "set"';
    {
      security_group_ids: converted,
    }
  ),
  with_security_group_ids_mixin(value):: (
    local converted = if std.isArray(value) then value else [value];
    assert (std.isArray(converted) && std.length(std.set(converted)) == std.length(converted)) : '"security_group_ids" expected to be of type "set"';
    {
      security_group_ids+: converted,
    }
  ),
  with_service_name(value):: (
    local converted = value;
    assert std.isString(converted) : '"service_name" expected to be of type "string"';
    {
      service_name: converted,
    }
  ),
  with_service_network_arn(value):: (
    local converted = value;
    assert std.isString(converted) : '"service_network_arn" expected to be of type "string"';
    {
      service_network_arn: converted,
    }
  ),
  with_service_region(value):: (
    local converted = value;
    assert std.isString(converted) : '"service_region" expected to be of type "string"';
    {
      service_region: converted,
    }
  ),
  with_state(value):: (
    local converted = value;
    assert std.isString(converted) : '"state" expected to be of type "string"';
    {
      state: converted,
    }
  ),
  with_subnet_ids(value):: (
    local converted = if std.isArray(value) then value else [value];
    assert (std.isArray(converted) && std.length(std.set(converted)) == std.length(converted)) : '"subnet_ids" expected to be of type "set"';
    {
      subnet_ids: converted,
    }
  ),
  with_subnet_ids_mixin(value):: (
    local converted = if std.isArray(value) then value else [value];
    assert (std.isArray(converted) && std.length(std.set(converted)) == std.length(converted)) : '"subnet_ids" expected to be of type "set"';
    {
      subnet_ids+: converted,
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
  with_vpc_endpoint_type(value):: (
    local converted = value;
    assert std.isString(converted) : '"vpc_endpoint_type" expected to be of type "string"';
    {
      vpc_endpoint_type: converted,
    }
  ),
  with_vpc_id(value):: (
    local converted = value;
    assert std.isString(converted) : '"vpc_id" expected to be of type "string"';
    {
      vpc_id: converted,
    }
  ),
  dns_options:: {
    local block = self,
    new():: (
      {}
    ),
    with_dns_record_ip_type(value):: (
      local converted = value;
      assert std.isString(converted) : '"dns_record_ip_type" expected to be of type "string"';
      {
        dns_record_ip_type: converted,
      }
    ),
    with_private_dns_only_for_inbound_resolver_endpoint(value):: (
      local converted = value;
      assert std.isBoolean(converted) : '"private_dns_only_for_inbound_resolver_endpoint" expected to be of type "bool"';
      {
        private_dns_only_for_inbound_resolver_endpoint: converted,
      }
    ),
  },
  subnet_configuration:: {
    local block = self,
    new():: (
      {}
    ),
    with_ipv4(value):: (
      local converted = value;
      assert std.isString(converted) : '"ipv4" expected to be of type "string"';
      {
        ipv4: converted,
      }
    ),
    with_ipv6(value):: (
      local converted = value;
      assert std.isString(converted) : '"ipv6" expected to be of type "string"';
      {
        ipv6: converted,
      }
    ),
    with_subnet_id(value):: (
      local converted = value;
      assert std.isString(converted) : '"subnet_id" expected to be of type "string"';
      {
        subnet_id: converted,
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
  with_dns_options(value):: (
    local converted = if std.isArray(value) then value else [value];
    {
      dns_options: value,
    }
  ),
  with_subnet_configuration(value):: (
    local converted = if std.isArray(value) then value else [value];
    {
      subnet_configuration: value,
    }
  ),
  with_timeouts(value):: (
    local converted = value;
    {
      timeouts: value,
    }
  ),
  with_dns_options_mixin(value):: (
    local converted = if std.isArray(value) then value else [value];
    {
      dns_options+: converted,
    }
  ),
  with_subnet_configuration_mixin(value):: (
    local converted = if std.isArray(value) then value else [value];
    {
      subnet_configuration+: converted,
    }
  ),
}
