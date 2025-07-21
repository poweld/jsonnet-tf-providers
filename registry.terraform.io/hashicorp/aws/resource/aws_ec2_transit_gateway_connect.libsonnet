{
  local block = self,
  new(transit_gateway_id, transport_attachment_id):: (
    {}
    + block.with_transit_gateway_id(transit_gateway_id)
    + block.with_transport_attachment_id(transport_attachment_id)
  ),
  with_id(value):: (
    local converted = value;
    assert std.isString(converted) : '"id" expected to be of type "string"';
    {
      id: converted,
    }
  ),
  with_protocol(value):: (
    local converted = value;
    assert std.isString(converted) : '"protocol" expected to be of type "string"';
    {
      protocol: converted,
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
  with_transit_gateway_default_route_table_association(value):: (
    local converted = value;
    assert std.isBoolean(converted) : '"transit_gateway_default_route_table_association" expected to be of type "bool"';
    {
      transit_gateway_default_route_table_association: converted,
    }
  ),
  with_transit_gateway_default_route_table_propagation(value):: (
    local converted = value;
    assert std.isBoolean(converted) : '"transit_gateway_default_route_table_propagation" expected to be of type "bool"';
    {
      transit_gateway_default_route_table_propagation: converted,
    }
  ),
  with_transit_gateway_id(value):: (
    local converted = value;
    assert std.isString(converted) : '"transit_gateway_id" expected to be of type "string"';
    {
      transit_gateway_id: converted,
    }
  ),
  with_transport_attachment_id(value):: (
    local converted = value;
    assert std.isString(converted) : '"transport_attachment_id" expected to be of type "string"';
    {
      transport_attachment_id: converted,
    }
  ),
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
  with_timeouts(value):: (
    local converted = value;
    {
      timeouts: value,
    }
  ),
}
