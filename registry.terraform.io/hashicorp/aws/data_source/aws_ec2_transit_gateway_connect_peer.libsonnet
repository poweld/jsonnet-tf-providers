{
  local block = self,
  new():: (
    {}
  ),
  with_arn(value):: (
    local converted = value;
    assert std.isString(converted) : '"arn" expected to be of type "string"';
    {
      arn: converted,
    }
  ),
  with_bgp_asn(value):: (
    local converted = value;
    assert std.isString(converted) : '"bgp_asn" expected to be of type "string"';
    {
      bgp_asn: converted,
    }
  ),
  with_bgp_peer_address(value):: (
    local converted = value;
    assert std.isString(converted) : '"bgp_peer_address" expected to be of type "string"';
    {
      bgp_peer_address: converted,
    }
  ),
  with_bgp_transit_gateway_addresses(value):: (
    local converted = if std.isArray(value) then value else [value];
    assert (std.isArray(converted) && std.length(std.set(converted)) == std.length(converted)) : '"bgp_transit_gateway_addresses" expected to be of type "set"';
    {
      bgp_transit_gateway_addresses: converted,
    }
  ),
  with_bgp_transit_gateway_addresses_mixin(value):: (
    local converted = if std.isArray(value) then value else [value];
    assert (std.isArray(converted) && std.length(std.set(converted)) == std.length(converted)) : '"bgp_transit_gateway_addresses" expected to be of type "set"';
    {
      bgp_transit_gateway_addresses+: converted,
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
  with_transit_gateway_address(value):: (
    local converted = value;
    assert std.isString(converted) : '"transit_gateway_address" expected to be of type "string"';
    {
      transit_gateway_address: converted,
    }
  ),
  with_transit_gateway_attachment_id(value):: (
    local converted = value;
    assert std.isString(converted) : '"transit_gateway_attachment_id" expected to be of type "string"';
    {
      transit_gateway_attachment_id: converted,
    }
  ),
  with_transit_gateway_connect_peer_id(value):: (
    local converted = value;
    assert std.isString(converted) : '"transit_gateway_connect_peer_id" expected to be of type "string"';
    {
      transit_gateway_connect_peer_id: converted,
    }
  ),
  filter:: {
    local block = self,
    new(name, values):: (
      {}
      + block.with_name(name)
      + block.with_values(values)
    ),
    with_name(value):: (
      local converted = value;
      assert std.isString(converted) : '"name" expected to be of type "string"';
      {
        name: converted,
      }
    ),
    with_values(value):: (
      local converted = if std.isArray(value) then value else [value];
      assert (std.isArray(converted) && std.length(std.set(converted)) == std.length(converted)) : '"values" expected to be of type "set"';
      {
        values: converted,
      }
    ),
    with_values_mixin(value):: (
      local converted = if std.isArray(value) then value else [value];
      assert (std.isArray(converted) && std.length(std.set(converted)) == std.length(converted)) : '"values" expected to be of type "set"';
      {
        values+: converted,
      }
    ),
  },
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
  with_filter(value):: (
    local converted = if std.isArray(value) then value else [value];
    {
      filter: value,
    }
  ),
  with_timeouts(value):: (
    local converted = value;
    {
      timeouts: value,
    }
  ),
  with_filter_mixin(value):: (
    local converted = if std.isArray(value) then value else [value];
    {
      filter+: converted,
    }
  ),
}
