{
  local block = self,
  new(core_network_id, transit_gateway_arn):: (
    {}
    + block.with_core_network_id(core_network_id)
    + block.with_transit_gateway_arn(transit_gateway_arn)
  ),
  with_arn(value):: (
    local converted = value;
    assert std.isString(converted) : '"arn" expected to be of type "string"';
    {
      arn: converted,
    }
  ),
  with_core_network_arn(value):: (
    local converted = value;
    assert std.isString(converted) : '"core_network_arn" expected to be of type "string"';
    {
      core_network_arn: converted,
    }
  ),
  with_core_network_id(value):: (
    local converted = value;
    assert std.isString(converted) : '"core_network_id" expected to be of type "string"';
    {
      core_network_id: converted,
    }
  ),
  with_edge_location(value):: (
    local converted = value;
    assert std.isString(converted) : '"edge_location" expected to be of type "string"';
    {
      edge_location: converted,
    }
  ),
  with_id(value):: (
    local converted = value;
    assert std.isString(converted) : '"id" expected to be of type "string"';
    {
      id: converted,
    }
  ),
  with_owner_account_id(value):: (
    local converted = value;
    assert std.isString(converted) : '"owner_account_id" expected to be of type "string"';
    {
      owner_account_id: converted,
    }
  ),
  with_peering_type(value):: (
    local converted = value;
    assert std.isString(converted) : '"peering_type" expected to be of type "string"';
    {
      peering_type: converted,
    }
  ),
  with_resource_arn(value):: (
    local converted = value;
    assert std.isString(converted) : '"resource_arn" expected to be of type "string"';
    {
      resource_arn: converted,
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
  with_transit_gateway_arn(value):: (
    local converted = value;
    assert std.isString(converted) : '"transit_gateway_arn" expected to be of type "string"';
    {
      transit_gateway_arn: converted,
    }
  ),
  with_transit_gateway_peering_attachment_id(value):: (
    local converted = value;
    assert std.isString(converted) : '"transit_gateway_peering_attachment_id" expected to be of type "string"';
    {
      transit_gateway_peering_attachment_id: converted,
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
  },
  with_timeouts(value):: (
    local converted = value;
    {
      timeouts: value,
    }
  ),
}
