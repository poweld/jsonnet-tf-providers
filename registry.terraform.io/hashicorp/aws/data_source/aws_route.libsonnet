{
  local block = self,
  new(route_table_id):: (
    {}
    + block.with_route_table_id(route_table_id)
  ),
  with_carrier_gateway_id(value):: (
    local converted = value;
    assert std.isString(converted) : '"carrier_gateway_id" expected to be of type "string"';
    {
      carrier_gateway_id: converted,
    }
  ),
  with_core_network_arn(value):: (
    local converted = value;
    assert std.isString(converted) : '"core_network_arn" expected to be of type "string"';
    {
      core_network_arn: converted,
    }
  ),
  with_destination_cidr_block(value):: (
    local converted = value;
    assert std.isString(converted) : '"destination_cidr_block" expected to be of type "string"';
    {
      destination_cidr_block: converted,
    }
  ),
  with_destination_ipv6_cidr_block(value):: (
    local converted = value;
    assert std.isString(converted) : '"destination_ipv6_cidr_block" expected to be of type "string"';
    {
      destination_ipv6_cidr_block: converted,
    }
  ),
  with_destination_prefix_list_id(value):: (
    local converted = value;
    assert std.isString(converted) : '"destination_prefix_list_id" expected to be of type "string"';
    {
      destination_prefix_list_id: converted,
    }
  ),
  with_egress_only_gateway_id(value):: (
    local converted = value;
    assert std.isString(converted) : '"egress_only_gateway_id" expected to be of type "string"';
    {
      egress_only_gateway_id: converted,
    }
  ),
  with_gateway_id(value):: (
    local converted = value;
    assert std.isString(converted) : '"gateway_id" expected to be of type "string"';
    {
      gateway_id: converted,
    }
  ),
  with_id(value):: (
    local converted = value;
    assert std.isString(converted) : '"id" expected to be of type "string"';
    {
      id: converted,
    }
  ),
  with_instance_id(value):: (
    local converted = value;
    assert std.isString(converted) : '"instance_id" expected to be of type "string"';
    {
      instance_id: converted,
    }
  ),
  with_local_gateway_id(value):: (
    local converted = value;
    assert std.isString(converted) : '"local_gateway_id" expected to be of type "string"';
    {
      local_gateway_id: converted,
    }
  ),
  with_nat_gateway_id(value):: (
    local converted = value;
    assert std.isString(converted) : '"nat_gateway_id" expected to be of type "string"';
    {
      nat_gateway_id: converted,
    }
  ),
  with_network_interface_id(value):: (
    local converted = value;
    assert std.isString(converted) : '"network_interface_id" expected to be of type "string"';
    {
      network_interface_id: converted,
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
  with_route_table_id(value):: (
    local converted = value;
    assert std.isString(converted) : '"route_table_id" expected to be of type "string"';
    {
      route_table_id: converted,
    }
  ),
  with_transit_gateway_id(value):: (
    local converted = value;
    assert std.isString(converted) : '"transit_gateway_id" expected to be of type "string"';
    {
      transit_gateway_id: converted,
    }
  ),
  with_vpc_peering_connection_id(value):: (
    local converted = value;
    assert std.isString(converted) : '"vpc_peering_connection_id" expected to be of type "string"';
    {
      vpc_peering_connection_id: converted,
    }
  ),
  timeouts:: {
    local block = self,
    new():: (
      {}
    ),
    with_read(value):: (
      local converted = value;
      assert std.isString(converted) : '"read" expected to be of type "string"';
      {
        read: converted,
      }
    ),
  },
  with_timeouts(value):: (
    local converted = value;
    {
      timeouts: value,
    }
  ),
}
