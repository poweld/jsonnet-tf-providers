{
  local block = self,
  new(subnet_id):: (
    {}
    + block.with_subnet_id(subnet_id)
  ),
  with_arn(value):: (
    local converted = value;
    assert std.isString(converted) : '"arn" expected to be of type "string"';
    {
      arn: converted,
    }
  ),
  with_description(value):: (
    local converted = value;
    assert std.isString(converted) : '"description" expected to be of type "string"';
    {
      description: converted,
    }
  ),
  with_enable_primary_ipv6(value):: (
    local converted = value;
    assert std.isBoolean(converted) : '"enable_primary_ipv6" expected to be of type "bool"';
    {
      enable_primary_ipv6: converted,
    }
  ),
  with_id(value):: (
    local converted = value;
    assert std.isString(converted) : '"id" expected to be of type "string"';
    {
      id: converted,
    }
  ),
  with_interface_type(value):: (
    local converted = value;
    assert std.isString(converted) : '"interface_type" expected to be of type "string"';
    {
      interface_type: converted,
    }
  ),
  with_ipv4_prefix_count(value):: (
    local converted = value;
    assert std.isNumber(converted) : '"ipv4_prefix_count" expected to be of type "number"';
    {
      ipv4_prefix_count: converted,
    }
  ),
  with_ipv4_prefixes(value):: (
    local converted = if std.isArray(value) then value else [value];
    assert (std.isArray(converted) && std.length(std.set(converted)) == std.length(converted)) : '"ipv4_prefixes" expected to be of type "set"';
    {
      ipv4_prefixes: converted,
    }
  ),
  with_ipv4_prefixes_mixin(value):: (
    local converted = if std.isArray(value) then value else [value];
    assert (std.isArray(converted) && std.length(std.set(converted)) == std.length(converted)) : '"ipv4_prefixes" expected to be of type "set"';
    {
      ipv4_prefixes+: converted,
    }
  ),
  with_ipv6_address_count(value):: (
    local converted = value;
    assert std.isNumber(converted) : '"ipv6_address_count" expected to be of type "number"';
    {
      ipv6_address_count: converted,
    }
  ),
  with_ipv6_address_list(value):: (
    local converted = if std.isArray(value) then value else [value];
    assert std.isArray(converted) : '"ipv6_address_list" expected to be of type "list"';
    {
      ipv6_address_list: converted,
    }
  ),
  with_ipv6_address_list_mixin(value):: (
    local converted = if std.isArray(value) then value else [value];
    assert std.isArray(converted) : '"ipv6_address_list" expected to be of type "list"';
    {
      ipv6_address_list+: converted,
    }
  ),
  with_ipv6_address_list_enabled(value):: (
    local converted = value;
    assert std.isBoolean(converted) : '"ipv6_address_list_enabled" expected to be of type "bool"';
    {
      ipv6_address_list_enabled: converted,
    }
  ),
  with_ipv6_addresses(value):: (
    local converted = if std.isArray(value) then value else [value];
    assert (std.isArray(converted) && std.length(std.set(converted)) == std.length(converted)) : '"ipv6_addresses" expected to be of type "set"';
    {
      ipv6_addresses: converted,
    }
  ),
  with_ipv6_addresses_mixin(value):: (
    local converted = if std.isArray(value) then value else [value];
    assert (std.isArray(converted) && std.length(std.set(converted)) == std.length(converted)) : '"ipv6_addresses" expected to be of type "set"';
    {
      ipv6_addresses+: converted,
    }
  ),
  with_ipv6_prefix_count(value):: (
    local converted = value;
    assert std.isNumber(converted) : '"ipv6_prefix_count" expected to be of type "number"';
    {
      ipv6_prefix_count: converted,
    }
  ),
  with_ipv6_prefixes(value):: (
    local converted = if std.isArray(value) then value else [value];
    assert (std.isArray(converted) && std.length(std.set(converted)) == std.length(converted)) : '"ipv6_prefixes" expected to be of type "set"';
    {
      ipv6_prefixes: converted,
    }
  ),
  with_ipv6_prefixes_mixin(value):: (
    local converted = if std.isArray(value) then value else [value];
    assert (std.isArray(converted) && std.length(std.set(converted)) == std.length(converted)) : '"ipv6_prefixes" expected to be of type "set"';
    {
      ipv6_prefixes+: converted,
    }
  ),
  with_mac_address(value):: (
    local converted = value;
    assert std.isString(converted) : '"mac_address" expected to be of type "string"';
    {
      mac_address: converted,
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
  with_private_dns_name(value):: (
    local converted = value;
    assert std.isString(converted) : '"private_dns_name" expected to be of type "string"';
    {
      private_dns_name: converted,
    }
  ),
  with_private_ip(value):: (
    local converted = value;
    assert std.isString(converted) : '"private_ip" expected to be of type "string"';
    {
      private_ip: converted,
    }
  ),
  with_private_ip_list(value):: (
    local converted = if std.isArray(value) then value else [value];
    assert std.isArray(converted) : '"private_ip_list" expected to be of type "list"';
    {
      private_ip_list: converted,
    }
  ),
  with_private_ip_list_mixin(value):: (
    local converted = if std.isArray(value) then value else [value];
    assert std.isArray(converted) : '"private_ip_list" expected to be of type "list"';
    {
      private_ip_list+: converted,
    }
  ),
  with_private_ip_list_enabled(value):: (
    local converted = value;
    assert std.isBoolean(converted) : '"private_ip_list_enabled" expected to be of type "bool"';
    {
      private_ip_list_enabled: converted,
    }
  ),
  with_private_ips(value):: (
    local converted = if std.isArray(value) then value else [value];
    assert (std.isArray(converted) && std.length(std.set(converted)) == std.length(converted)) : '"private_ips" expected to be of type "set"';
    {
      private_ips: converted,
    }
  ),
  with_private_ips_mixin(value):: (
    local converted = if std.isArray(value) then value else [value];
    assert (std.isArray(converted) && std.length(std.set(converted)) == std.length(converted)) : '"private_ips" expected to be of type "set"';
    {
      private_ips+: converted,
    }
  ),
  with_private_ips_count(value):: (
    local converted = value;
    assert std.isNumber(converted) : '"private_ips_count" expected to be of type "number"';
    {
      private_ips_count: converted,
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
  with_security_groups(value):: (
    local converted = if std.isArray(value) then value else [value];
    assert (std.isArray(converted) && std.length(std.set(converted)) == std.length(converted)) : '"security_groups" expected to be of type "set"';
    {
      security_groups: converted,
    }
  ),
  with_security_groups_mixin(value):: (
    local converted = if std.isArray(value) then value else [value];
    assert (std.isArray(converted) && std.length(std.set(converted)) == std.length(converted)) : '"security_groups" expected to be of type "set"';
    {
      security_groups+: converted,
    }
  ),
  with_source_dest_check(value):: (
    local converted = value;
    assert std.isBoolean(converted) : '"source_dest_check" expected to be of type "bool"';
    {
      source_dest_check: converted,
    }
  ),
  with_subnet_id(value):: (
    local converted = value;
    assert std.isString(converted) : '"subnet_id" expected to be of type "string"';
    {
      subnet_id: converted,
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
  attachment:: {
    local block = self,
    new(device_index, instance):: (
      {}
      + block.with_device_index(device_index)
      + block.with_instance(instance)
    ),
    with_attachment_id(value):: (
      local converted = value;
      assert std.isString(converted) : '"attachment_id" expected to be of type "string"';
      {
        attachment_id: converted,
      }
    ),
    with_device_index(value):: (
      local converted = value;
      assert std.isNumber(converted) : '"device_index" expected to be of type "number"';
      {
        device_index: converted,
      }
    ),
    with_instance(value):: (
      local converted = value;
      assert std.isString(converted) : '"instance" expected to be of type "string"';
      {
        instance: converted,
      }
    ),
  },
  with_attachment(value):: (
    local converted = if std.isArray(value) then value else [value];
    {
      attachment: value,
    }
  ),
  with_attachment_mixin(value):: (
    local converted = if std.isArray(value) then value else [value];
    {
      attachment+: converted,
    }
  ),
}
