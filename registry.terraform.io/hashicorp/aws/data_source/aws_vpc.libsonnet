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
  with_cidr_block(value):: (
    local converted = value;
    assert std.isString(converted) : '"cidr_block" expected to be of type "string"';
    {
      cidr_block: converted,
    }
  ),
  with_cidr_block_associations(value):: (
    local converted = if std.isArray(value) then value else [value];
    assert std.isArray(converted) : '"cidr_block_associations" expected to be of type "list"';
    {
      cidr_block_associations: converted,
    }
  ),
  with_cidr_block_associations_mixin(value):: (
    local converted = if std.isArray(value) then value else [value];
    assert std.isArray(converted) : '"cidr_block_associations" expected to be of type "list"';
    {
      cidr_block_associations+: converted,
    }
  ),
  with_default(value):: (
    local converted = value;
    assert std.isBoolean(converted) : '"default" expected to be of type "bool"';
    {
      default: converted,
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
  with_state(value):: (
    local converted = value;
    assert std.isString(converted) : '"state" expected to be of type "string"';
    {
      state: converted,
    }
  ),
  with_tags(value):: (
    local converted = value;
    assert std.isObject(converted) : '"tags" expected to be of type "map"';
    {
      tags: converted,
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
