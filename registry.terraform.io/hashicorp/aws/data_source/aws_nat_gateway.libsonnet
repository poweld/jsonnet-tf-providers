{
  local block = self,
  new():: (
    {}
  ),
  with_allocation_id(value):: (
    local converted = value;
    assert std.isString(converted) : '"allocation_id" expected to be of type "string"';
    {
      allocation_id: converted,
    }
  ),
  with_association_id(value):: (
    local converted = value;
    assert std.isString(converted) : '"association_id" expected to be of type "string"';
    {
      association_id: converted,
    }
  ),
  with_connectivity_type(value):: (
    local converted = value;
    assert std.isString(converted) : '"connectivity_type" expected to be of type "string"';
    {
      connectivity_type: converted,
    }
  ),
  with_id(value):: (
    local converted = value;
    assert std.isString(converted) : '"id" expected to be of type "string"';
    {
      id: converted,
    }
  ),
  with_network_interface_id(value):: (
    local converted = value;
    assert std.isString(converted) : '"network_interface_id" expected to be of type "string"';
    {
      network_interface_id: converted,
    }
  ),
  with_private_ip(value):: (
    local converted = value;
    assert std.isString(converted) : '"private_ip" expected to be of type "string"';
    {
      private_ip: converted,
    }
  ),
  with_public_ip(value):: (
    local converted = value;
    assert std.isString(converted) : '"public_ip" expected to be of type "string"';
    {
      public_ip: converted,
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
  with_secondary_allocation_ids(value):: (
    local converted = if std.isArray(value) then value else [value];
    assert std.isArray(converted) : '"secondary_allocation_ids" expected to be of type "list"';
    {
      secondary_allocation_ids: converted,
    }
  ),
  with_secondary_allocation_ids_mixin(value):: (
    local converted = if std.isArray(value) then value else [value];
    assert std.isArray(converted) : '"secondary_allocation_ids" expected to be of type "list"';
    {
      secondary_allocation_ids+: converted,
    }
  ),
  with_secondary_private_ip_address_count(value):: (
    local converted = value;
    assert std.isNumber(converted) : '"secondary_private_ip_address_count" expected to be of type "number"';
    {
      secondary_private_ip_address_count: converted,
    }
  ),
  with_secondary_private_ip_addresses(value):: (
    local converted = if std.isArray(value) then value else [value];
    assert std.isArray(converted) : '"secondary_private_ip_addresses" expected to be of type "list"';
    {
      secondary_private_ip_addresses: converted,
    }
  ),
  with_secondary_private_ip_addresses_mixin(value):: (
    local converted = if std.isArray(value) then value else [value];
    assert std.isArray(converted) : '"secondary_private_ip_addresses" expected to be of type "list"';
    {
      secondary_private_ip_addresses+: converted,
    }
  ),
  with_state(value):: (
    local converted = value;
    assert std.isString(converted) : '"state" expected to be of type "string"';
    {
      state: converted,
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
  with_vpc_id(value):: (
    local converted = value;
    assert std.isString(converted) : '"vpc_id" expected to be of type "string"';
    {
      vpc_id: converted,
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
