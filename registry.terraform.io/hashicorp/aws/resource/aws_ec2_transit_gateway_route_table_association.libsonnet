{
  local block = self,
  new(transit_gateway_attachment_id, transit_gateway_route_table_id):: (
    {}
    + block.with_transit_gateway_attachment_id(transit_gateway_attachment_id)
    + block.with_transit_gateway_route_table_id(transit_gateway_route_table_id)
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
  with_replace_existing_association(value):: (
    local converted = value;
    assert std.isBoolean(converted) : '"replace_existing_association" expected to be of type "bool"';
    {
      replace_existing_association: converted,
    }
  ),
  with_resource_id(value):: (
    local converted = value;
    assert std.isString(converted) : '"resource_id" expected to be of type "string"';
    {
      resource_id: converted,
    }
  ),
  with_resource_type(value):: (
    local converted = value;
    assert std.isString(converted) : '"resource_type" expected to be of type "string"';
    {
      resource_type: converted,
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
