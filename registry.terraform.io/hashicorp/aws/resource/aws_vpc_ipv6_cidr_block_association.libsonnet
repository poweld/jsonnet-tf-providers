{
  local block = self,
  new(vpc_id):: (
    {}
    + block.with_vpc_id(vpc_id)
  ),
  with_assign_generated_ipv6_cidr_block(value):: (
    local converted = value;
    assert std.isBoolean(converted) : '"assign_generated_ipv6_cidr_block" expected to be of type "bool"';
    {
      assign_generated_ipv6_cidr_block: converted,
    }
  ),
  with_id(value):: (
    local converted = value;
    assert std.isString(converted) : '"id" expected to be of type "string"';
    {
      id: converted,
    }
  ),
  with_ip_source(value):: (
    local converted = value;
    assert std.isString(converted) : '"ip_source" expected to be of type "string"';
    {
      ip_source: converted,
    }
  ),
  with_ipv6_address_attribute(value):: (
    local converted = value;
    assert std.isString(converted) : '"ipv6_address_attribute" expected to be of type "string"';
    {
      ipv6_address_attribute: converted,
    }
  ),
  with_ipv6_cidr_block(value):: (
    local converted = value;
    assert std.isString(converted) : '"ipv6_cidr_block" expected to be of type "string"';
    {
      ipv6_cidr_block: converted,
    }
  ),
  with_ipv6_ipam_pool_id(value):: (
    local converted = value;
    assert std.isString(converted) : '"ipv6_ipam_pool_id" expected to be of type "string"';
    {
      ipv6_ipam_pool_id: converted,
    }
  ),
  with_ipv6_netmask_length(value):: (
    local converted = value;
    assert std.isNumber(converted) : '"ipv6_netmask_length" expected to be of type "number"';
    {
      ipv6_netmask_length: converted,
    }
  ),
  with_ipv6_pool(value):: (
    local converted = value;
    assert std.isString(converted) : '"ipv6_pool" expected to be of type "string"';
    {
      ipv6_pool: converted,
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
  with_vpc_id(value):: (
    local converted = value;
    assert std.isString(converted) : '"vpc_id" expected to be of type "string"';
    {
      vpc_id: converted,
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
