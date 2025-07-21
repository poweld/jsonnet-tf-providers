{
  local block = self,
  new(address_family, bgp_asn, virtual_interface_id):: (
    {}
    + block.with_address_family(address_family)
    + block.with_bgp_asn(bgp_asn)
    + block.with_virtual_interface_id(virtual_interface_id)
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
  with_bgp_peer_id(value):: (
    local converted = value;
    assert std.isString(converted) : '"bgp_peer_id" expected to be of type "string"';
    {
      bgp_peer_id: converted,
    }
  ),
  with_bgp_status(value):: (
    local converted = value;
    assert std.isString(converted) : '"bgp_status" expected to be of type "string"';
    {
      bgp_status: converted,
    }
  ),
  with_customer_address(value):: (
    local converted = value;
    assert std.isString(converted) : '"customer_address" expected to be of type "string"';
    {
      customer_address: converted,
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
  with_virtual_interface_id(value):: (
    local converted = value;
    assert std.isString(converted) : '"virtual_interface_id" expected to be of type "string"';
    {
      virtual_interface_id: converted,
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
