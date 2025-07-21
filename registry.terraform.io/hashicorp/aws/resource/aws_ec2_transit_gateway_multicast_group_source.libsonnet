{
  local block = self,
  new(group_ip_address, network_interface_id, transit_gateway_multicast_domain_id):: (
    {}
    + block.with_group_ip_address(group_ip_address)
    + block.with_network_interface_id(network_interface_id)
    + block.with_transit_gateway_multicast_domain_id(transit_gateway_multicast_domain_id)
  ),
  with_group_ip_address(value):: (
    local converted = value;
    assert std.isString(converted) : '"group_ip_address" expected to be of type "string"';
    {
      group_ip_address: converted,
    }
  ),
  with_id(value):: (
    local converted = value;
    assert std.isString(converted) : '"id" expected to be of type "string"';
    {
      id: converted,
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
  with_transit_gateway_multicast_domain_id(value):: (
    local converted = value;
    assert std.isString(converted) : '"transit_gateway_multicast_domain_id" expected to be of type "string"';
    {
      transit_gateway_multicast_domain_id: converted,
    }
  ),
}
