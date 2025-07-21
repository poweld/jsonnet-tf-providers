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
  with_assign_generated_ipv6_cidr_block(value):: (
    local converted = value;
    assert std.isBoolean(converted) : '"assign_generated_ipv6_cidr_block" expected to be of type "bool"';
    {
      assign_generated_ipv6_cidr_block: converted,
    }
  ),
  with_cidr_block(value):: (
    local converted = value;
    assert std.isString(converted) : '"cidr_block" expected to be of type "string"';
    {
      cidr_block: converted,
    }
  ),
  with_default_network_acl_id(value):: (
    local converted = value;
    assert std.isString(converted) : '"default_network_acl_id" expected to be of type "string"';
    {
      default_network_acl_id: converted,
    }
  ),
  with_default_route_table_id(value):: (
    local converted = value;
    assert std.isString(converted) : '"default_route_table_id" expected to be of type "string"';
    {
      default_route_table_id: converted,
    }
  ),
  with_default_security_group_id(value):: (
    local converted = value;
    assert std.isString(converted) : '"default_security_group_id" expected to be of type "string"';
    {
      default_security_group_id: converted,
    }
  ),
  with_dhcp_options_id(value):: (
    local converted = value;
    assert std.isString(converted) : '"dhcp_options_id" expected to be of type "string"';
    {
      dhcp_options_id: converted,
    }
  ),
  with_enable_dns_hostnames(value):: (
    local converted = value;
    assert std.isBoolean(converted) : '"enable_dns_hostnames" expected to be of type "bool"';
    {
      enable_dns_hostnames: converted,
    }
  ),
  with_enable_dns_support(value):: (
    local converted = value;
    assert std.isBoolean(converted) : '"enable_dns_support" expected to be of type "bool"';
    {
      enable_dns_support: converted,
    }
  ),
  with_enable_network_address_usage_metrics(value):: (
    local converted = value;
    assert std.isBoolean(converted) : '"enable_network_address_usage_metrics" expected to be of type "bool"';
    {
      enable_network_address_usage_metrics: converted,
    }
  ),
  with_existing_default_vpc(value):: (
    local converted = value;
    assert std.isBoolean(converted) : '"existing_default_vpc" expected to be of type "bool"';
    {
      existing_default_vpc: converted,
    }
  ),
  with_force_destroy(value):: (
    local converted = value;
    assert std.isBoolean(converted) : '"force_destroy" expected to be of type "bool"';
    {
      force_destroy: converted,
    }
  ),
  with_id(value):: (
    local converted = value;
    assert std.isString(converted) : '"id" expected to be of type "string"';
    {
      id: converted,
    }
  ),
  with_instance_tenancy(value):: (
    local converted = value;
    assert std.isString(converted) : '"instance_tenancy" expected to be of type "string"';
    {
      instance_tenancy: converted,
    }
  ),
  with_ipv6_association_id(value):: (
    local converted = value;
    assert std.isString(converted) : '"ipv6_association_id" expected to be of type "string"';
    {
      ipv6_association_id: converted,
    }
  ),
  with_ipv6_cidr_block(value):: (
    local converted = value;
    assert std.isString(converted) : '"ipv6_cidr_block" expected to be of type "string"';
    {
      ipv6_cidr_block: converted,
    }
  ),
  with_ipv6_cidr_block_network_border_group(value):: (
    local converted = value;
    assert std.isString(converted) : '"ipv6_cidr_block_network_border_group" expected to be of type "string"';
    {
      ipv6_cidr_block_network_border_group: converted,
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
  with_main_route_table_id(value):: (
    local converted = value;
    assert std.isString(converted) : '"main_route_table_id" expected to be of type "string"';
    {
      main_route_table_id: converted,
    }
  ),
  with_owner_id(value):: (
    local converted = value;
    assert std.isString(converted) : '"owner_id" expected to be of type "string"';
    {
      owner_id: converted,
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
}
