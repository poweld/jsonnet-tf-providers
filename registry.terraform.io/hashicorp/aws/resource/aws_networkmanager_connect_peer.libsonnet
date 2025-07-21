{
  local block = self,
  new(connect_attachment_id, peer_address):: (
    {}
    + block.with_connect_attachment_id(connect_attachment_id)
    + block.with_peer_address(peer_address)
  ),
  with_arn(value):: (
    local converted = value;
    assert std.isString(converted) : '"arn" expected to be of type "string"';
    {
      arn: converted,
    }
  ),
  with_configuration(value):: (
    local converted = if std.isArray(value) then value else [value];
    assert std.isArray(converted) : '"configuration" expected to be of type "list"';
    {
      configuration: converted,
    }
  ),
  with_configuration_mixin(value):: (
    local converted = if std.isArray(value) then value else [value];
    assert std.isArray(converted) : '"configuration" expected to be of type "list"';
    {
      configuration+: converted,
    }
  ),
  with_connect_attachment_id(value):: (
    local converted = value;
    assert std.isString(converted) : '"connect_attachment_id" expected to be of type "string"';
    {
      connect_attachment_id: converted,
    }
  ),
  with_connect_peer_id(value):: (
    local converted = value;
    assert std.isString(converted) : '"connect_peer_id" expected to be of type "string"';
    {
      connect_peer_id: converted,
    }
  ),
  with_core_network_address(value):: (
    local converted = value;
    assert std.isString(converted) : '"core_network_address" expected to be of type "string"';
    {
      core_network_address: converted,
    }
  ),
  with_core_network_id(value):: (
    local converted = value;
    assert std.isString(converted) : '"core_network_id" expected to be of type "string"';
    {
      core_network_id: converted,
    }
  ),
  with_created_at(value):: (
    local converted = value;
    assert std.isString(converted) : '"created_at" expected to be of type "string"';
    {
      created_at: converted,
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
  with_peer_address(value):: (
    local converted = value;
    assert std.isString(converted) : '"peer_address" expected to be of type "string"';
    {
      peer_address: converted,
    }
  ),
  with_state(value):: (
    local converted = value;
    assert std.isString(converted) : '"state" expected to be of type "string"';
    {
      state: converted,
    }
  ),
  with_subnet_arn(value):: (
    local converted = value;
    assert std.isString(converted) : '"subnet_arn" expected to be of type "string"';
    {
      subnet_arn: converted,
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
  bgp_options:: {
    local block = self,
    new():: (
      {}
    ),
    with_peer_asn(value):: (
      local converted = value;
      assert std.isNumber(converted) : '"peer_asn" expected to be of type "number"';
      {
        peer_asn: converted,
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
  },
  with_bgp_options(value):: (
    local converted = if std.isArray(value) then value else [value];
    {
      bgp_options: value,
    }
  ),
  with_timeouts(value):: (
    local converted = value;
    {
      timeouts: value,
    }
  ),
  with_bgp_options_mixin(value):: (
    local converted = if std.isArray(value) then value else [value];
    {
      bgp_options+: converted,
    }
  ),
}
