{
  local block = self,
  new(vpc_id):: (
    {}
    + block.with_vpc_id(vpc_id)
  ),
  with_arn(value):: (
    local converted = value;
    assert std.isString(converted) : '"arn" expected to be of type "string"';
    {
      arn: converted,
    }
  ),
  with_assign_ipv6_address_on_creation(value):: (
    local converted = value;
    assert std.isBoolean(converted) : '"assign_ipv6_address_on_creation" expected to be of type "bool"';
    {
      assign_ipv6_address_on_creation: converted,
    }
  ),
  with_availability_zone(value):: (
    local converted = value;
    assert std.isString(converted) : '"availability_zone" expected to be of type "string"';
    {
      availability_zone: converted,
    }
  ),
  with_availability_zone_id(value):: (
    local converted = value;
    assert std.isString(converted) : '"availability_zone_id" expected to be of type "string"';
    {
      availability_zone_id: converted,
    }
  ),
  with_cidr_block(value):: (
    local converted = value;
    assert std.isString(converted) : '"cidr_block" expected to be of type "string"';
    {
      cidr_block: converted,
    }
  ),
  with_customer_owned_ipv4_pool(value):: (
    local converted = value;
    assert std.isString(converted) : '"customer_owned_ipv4_pool" expected to be of type "string"';
    {
      customer_owned_ipv4_pool: converted,
    }
  ),
  with_enable_dns64(value):: (
    local converted = value;
    assert std.isBoolean(converted) : '"enable_dns64" expected to be of type "bool"';
    {
      enable_dns64: converted,
    }
  ),
  with_enable_lni_at_device_index(value):: (
    local converted = value;
    assert std.isNumber(converted) : '"enable_lni_at_device_index" expected to be of type "number"';
    {
      enable_lni_at_device_index: converted,
    }
  ),
  with_enable_resource_name_dns_a_record_on_launch(value):: (
    local converted = value;
    assert std.isBoolean(converted) : '"enable_resource_name_dns_a_record_on_launch" expected to be of type "bool"';
    {
      enable_resource_name_dns_a_record_on_launch: converted,
    }
  ),
  with_enable_resource_name_dns_aaaa_record_on_launch(value):: (
    local converted = value;
    assert std.isBoolean(converted) : '"enable_resource_name_dns_aaaa_record_on_launch" expected to be of type "bool"';
    {
      enable_resource_name_dns_aaaa_record_on_launch: converted,
    }
  ),
  with_id(value):: (
    local converted = value;
    assert std.isString(converted) : '"id" expected to be of type "string"';
    {
      id: converted,
    }
  ),
  with_ipv6_cidr_block(value):: (
    local converted = value;
    assert std.isString(converted) : '"ipv6_cidr_block" expected to be of type "string"';
    {
      ipv6_cidr_block: converted,
    }
  ),
  with_ipv6_cidr_block_association_id(value):: (
    local converted = value;
    assert std.isString(converted) : '"ipv6_cidr_block_association_id" expected to be of type "string"';
    {
      ipv6_cidr_block_association_id: converted,
    }
  ),
  with_ipv6_native(value):: (
    local converted = value;
    assert std.isBoolean(converted) : '"ipv6_native" expected to be of type "bool"';
    {
      ipv6_native: converted,
    }
  ),
  with_map_customer_owned_ip_on_launch(value):: (
    local converted = value;
    assert std.isBoolean(converted) : '"map_customer_owned_ip_on_launch" expected to be of type "bool"';
    {
      map_customer_owned_ip_on_launch: converted,
    }
  ),
  with_map_public_ip_on_launch(value):: (
    local converted = value;
    assert std.isBoolean(converted) : '"map_public_ip_on_launch" expected to be of type "bool"';
    {
      map_public_ip_on_launch: converted,
    }
  ),
  with_outpost_arn(value):: (
    local converted = value;
    assert std.isString(converted) : '"outpost_arn" expected to be of type "string"';
    {
      outpost_arn: converted,
    }
  ),
  with_owner_id(value):: (
    local converted = value;
    assert std.isString(converted) : '"owner_id" expected to be of type "string"';
    {
      owner_id: converted,
    }
  ),
  with_private_dns_hostname_type_on_launch(value):: (
    local converted = value;
    assert std.isString(converted) : '"private_dns_hostname_type_on_launch" expected to be of type "string"';
    {
      private_dns_hostname_type_on_launch: converted,
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
