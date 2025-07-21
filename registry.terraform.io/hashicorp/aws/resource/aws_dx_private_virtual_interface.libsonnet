{
  local block = self,
  new(address_family, bgp_asn, connection_id, name, vlan):: (
    {}
    + block.with_address_family(address_family)
    + block.with_bgp_asn(bgp_asn)
    + block.with_connection_id(connection_id)
    + block.with_name(name)
    + block.with_vlan(vlan)
  ),
  with_address_family(value):: (
    local converted = value;
    assert std.isString(converted) : '"address_family" expected to be of type "string"';
    {
      address_family: converted,
    }
  ),
  with_amazon_address(value):: (
    local converted = value;
    assert std.isString(converted) : '"amazon_address" expected to be of type "string"';
    {
      amazon_address: converted,
    }
  ),
  with_amazon_side_asn(value):: (
    local converted = value;
    assert std.isString(converted) : '"amazon_side_asn" expected to be of type "string"';
    {
      amazon_side_asn: converted,
    }
  ),
  with_arn(value):: (
    local converted = value;
    assert std.isString(converted) : '"arn" expected to be of type "string"';
    {
      arn: converted,
    }
  ),
  with_aws_device(value):: (
    local converted = value;
    assert std.isString(converted) : '"aws_device" expected to be of type "string"';
    {
      aws_device: converted,
    }
  ),
  with_bgp_asn(value):: (
    local converted = value;
    assert std.isNumber(converted) : '"bgp_asn" expected to be of type "number"';
    {
      bgp_asn: converted,
    }
  ),
  with_bgp_auth_key(value):: (
    local converted = value;
    assert std.isString(converted) : '"bgp_auth_key" expected to be of type "string"';
    {
      bgp_auth_key: converted,
    }
  ),
  with_connection_id(value):: (
    local converted = value;
    assert std.isString(converted) : '"connection_id" expected to be of type "string"';
    {
      connection_id: converted,
    }
  ),
  with_customer_address(value):: (
    local converted = value;
    assert std.isString(converted) : '"customer_address" expected to be of type "string"';
    {
      customer_address: converted,
    }
  ),
  with_dx_gateway_id(value):: (
    local converted = value;
    assert std.isString(converted) : '"dx_gateway_id" expected to be of type "string"';
    {
      dx_gateway_id: converted,
    }
  ),
  with_id(value):: (
    local converted = value;
    assert std.isString(converted) : '"id" expected to be of type "string"';
    {
      id: converted,
    }
  ),
  with_jumbo_frame_capable(value):: (
    local converted = value;
    assert std.isBoolean(converted) : '"jumbo_frame_capable" expected to be of type "bool"';
    {
      jumbo_frame_capable: converted,
    }
  ),
  with_mtu(value):: (
    local converted = value;
    assert std.isNumber(converted) : '"mtu" expected to be of type "number"';
    {
      mtu: converted,
    }
  ),
  with_name(value):: (
    local converted = value;
    assert std.isString(converted) : '"name" expected to be of type "string"';
    {
      name: converted,
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
  with_sitelink_enabled(value):: (
    local converted = value;
    assert std.isBoolean(converted) : '"sitelink_enabled" expected to be of type "bool"';
    {
      sitelink_enabled: converted,
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
  with_vlan(value):: (
    local converted = value;
    assert std.isNumber(converted) : '"vlan" expected to be of type "number"';
    {
      vlan: converted,
    }
  ),
  with_vpn_gateway_id(value):: (
    local converted = value;
    assert std.isString(converted) : '"vpn_gateway_id" expected to be of type "string"';
    {
      vpn_gateway_id: converted,
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
