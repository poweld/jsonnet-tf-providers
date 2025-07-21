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
  with_dhcp_options_id(value):: (
    local converted = value;
    assert std.isString(converted) : '"dhcp_options_id" expected to be of type "string"';
    {
      dhcp_options_id: converted,
    }
  ),
  with_domain_name(value):: (
    local converted = value;
    assert std.isString(converted) : '"domain_name" expected to be of type "string"';
    {
      domain_name: converted,
    }
  ),
  with_domain_name_servers(value):: (
    local converted = if std.isArray(value) then value else [value];
    assert std.isArray(converted) : '"domain_name_servers" expected to be of type "list"';
    {
      domain_name_servers: converted,
    }
  ),
  with_domain_name_servers_mixin(value):: (
    local converted = if std.isArray(value) then value else [value];
    assert std.isArray(converted) : '"domain_name_servers" expected to be of type "list"';
    {
      domain_name_servers+: converted,
    }
  ),
  with_id(value):: (
    local converted = value;
    assert std.isString(converted) : '"id" expected to be of type "string"';
    {
      id: converted,
    }
  ),
  with_ipv6_address_preferred_lease_time(value):: (
    local converted = value;
    assert std.isString(converted) : '"ipv6_address_preferred_lease_time" expected to be of type "string"';
    {
      ipv6_address_preferred_lease_time: converted,
    }
  ),
  with_netbios_name_servers(value):: (
    local converted = if std.isArray(value) then value else [value];
    assert std.isArray(converted) : '"netbios_name_servers" expected to be of type "list"';
    {
      netbios_name_servers: converted,
    }
  ),
  with_netbios_name_servers_mixin(value):: (
    local converted = if std.isArray(value) then value else [value];
    assert std.isArray(converted) : '"netbios_name_servers" expected to be of type "list"';
    {
      netbios_name_servers+: converted,
    }
  ),
  with_netbios_node_type(value):: (
    local converted = value;
    assert std.isString(converted) : '"netbios_node_type" expected to be of type "string"';
    {
      netbios_node_type: converted,
    }
  ),
  with_ntp_servers(value):: (
    local converted = if std.isArray(value) then value else [value];
    assert std.isArray(converted) : '"ntp_servers" expected to be of type "list"';
    {
      ntp_servers: converted,
    }
  ),
  with_ntp_servers_mixin(value):: (
    local converted = if std.isArray(value) then value else [value];
    assert std.isArray(converted) : '"ntp_servers" expected to be of type "list"';
    {
      ntp_servers+: converted,
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
