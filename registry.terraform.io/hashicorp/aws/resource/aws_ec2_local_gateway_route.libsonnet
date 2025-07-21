{
  local block = self,
  new(destination_cidr_block, local_gateway_route_table_id, local_gateway_virtual_interface_group_id):: (
    {}
    + block.with_destination_cidr_block(destination_cidr_block)
    + block.with_local_gateway_route_table_id(local_gateway_route_table_id)
    + block.with_local_gateway_virtual_interface_group_id(local_gateway_virtual_interface_group_id)
  ),
  with_destination_cidr_block(value):: (
    local converted = value;
    assert std.isString(converted) : '"destination_cidr_block" expected to be of type "string"';
    {
      destination_cidr_block: converted,
    }
  ),
  with_id(value):: (
    local converted = value;
    assert std.isString(converted) : '"id" expected to be of type "string"';
    {
      id: converted,
    }
  ),
  with_local_gateway_route_table_id(value):: (
    local converted = value;
    assert std.isString(converted) : '"local_gateway_route_table_id" expected to be of type "string"';
    {
      local_gateway_route_table_id: converted,
    }
  ),
  with_local_gateway_virtual_interface_group_id(value):: (
    local converted = value;
    assert std.isString(converted) : '"local_gateway_virtual_interface_group_id" expected to be of type "string"';
    {
      local_gateway_virtual_interface_group_id: converted,
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
}
