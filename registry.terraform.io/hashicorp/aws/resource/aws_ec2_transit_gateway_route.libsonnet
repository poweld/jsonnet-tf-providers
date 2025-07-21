{
  local block = self,
  new(destination_cidr_block, transit_gateway_route_table_id):: (
    {}
    + block.with_destination_cidr_block(destination_cidr_block)
    + block.with_transit_gateway_route_table_id(transit_gateway_route_table_id)
  ),
  with_blackhole(value):: (
    local converted = value;
    assert std.isBoolean(converted) : '"blackhole" expected to be of type "bool"';
    {
      blackhole: converted,
    }
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
  '#with_region':: 'Region where this resource will be [managed](https://docs.aws.amazon.com/general/latest/gr/rande.html#regional-endpoints). Defaults to the Region set in the [provider configuration](https://registry.terraform.io/providers/hashicorp/aws/latest/docs#aws-configuration-reference).',
  with_region(value):: (
    local converted = value;
    assert std.isString(converted) : '"region" expected to be of type "string"';
    {
      region: converted,
    }
  ),
  with_transit_gateway_attachment_id(value):: (
    local converted = value;
    assert std.isString(converted) : '"transit_gateway_attachment_id" expected to be of type "string"';
    {
      transit_gateway_attachment_id: converted,
    }
  ),
  with_transit_gateway_route_table_id(value):: (
    local converted = value;
    assert std.isString(converted) : '"transit_gateway_route_table_id" expected to be of type "string"';
    {
      transit_gateway_route_table_id: converted,
    }
  ),
}
