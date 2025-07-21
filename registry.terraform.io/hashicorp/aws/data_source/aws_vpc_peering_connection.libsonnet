{
  local block = self,
  new():: (
    {}
  ),
  with_accepter(value):: (
    local converted = value;
    assert std.isObject(converted) : '"accepter" expected to be of type "map"';
    {
      accepter: converted,
    }
  ),
  with_cidr_block(value):: (
    local converted = value;
    assert std.isString(converted) : '"cidr_block" expected to be of type "string"';
    {
      cidr_block: converted,
    }
  ),
  with_cidr_block_set(value):: (
    local converted = if std.isArray(value) then value else [value];
    assert std.isArray(converted) : '"cidr_block_set" expected to be of type "list"';
    {
      cidr_block_set: converted,
    }
  ),
  with_cidr_block_set_mixin(value):: (
    local converted = if std.isArray(value) then value else [value];
    assert std.isArray(converted) : '"cidr_block_set" expected to be of type "list"';
    {
      cidr_block_set+: converted,
    }
  ),
  with_id(value):: (
    local converted = value;
    assert std.isString(converted) : '"id" expected to be of type "string"';
    {
      id: converted,
    }
  ),
  with_ipv6_cidr_block_set(value):: (
    local converted = if std.isArray(value) then value else [value];
    assert std.isArray(converted) : '"ipv6_cidr_block_set" expected to be of type "list"';
    {
      ipv6_cidr_block_set: converted,
    }
  ),
  with_ipv6_cidr_block_set_mixin(value):: (
    local converted = if std.isArray(value) then value else [value];
    assert std.isArray(converted) : '"ipv6_cidr_block_set" expected to be of type "list"';
    {
      ipv6_cidr_block_set+: converted,
    }
  ),
  with_owner_id(value):: (
    local converted = value;
    assert std.isString(converted) : '"owner_id" expected to be of type "string"';
    {
      owner_id: converted,
    }
  ),
  with_peer_cidr_block(value):: (
    local converted = value;
    assert std.isString(converted) : '"peer_cidr_block" expected to be of type "string"';
    {
      peer_cidr_block: converted,
    }
  ),
  with_peer_cidr_block_set(value):: (
    local converted = if std.isArray(value) then value else [value];
    assert std.isArray(converted) : '"peer_cidr_block_set" expected to be of type "list"';
    {
      peer_cidr_block_set: converted,
    }
  ),
  with_peer_cidr_block_set_mixin(value):: (
    local converted = if std.isArray(value) then value else [value];
    assert std.isArray(converted) : '"peer_cidr_block_set" expected to be of type "list"';
    {
      peer_cidr_block_set+: converted,
    }
  ),
  with_peer_ipv6_cidr_block_set(value):: (
    local converted = if std.isArray(value) then value else [value];
    assert std.isArray(converted) : '"peer_ipv6_cidr_block_set" expected to be of type "list"';
    {
      peer_ipv6_cidr_block_set: converted,
    }
  ),
  with_peer_ipv6_cidr_block_set_mixin(value):: (
    local converted = if std.isArray(value) then value else [value];
    assert std.isArray(converted) : '"peer_ipv6_cidr_block_set" expected to be of type "list"';
    {
      peer_ipv6_cidr_block_set+: converted,
    }
  ),
  with_peer_owner_id(value):: (
    local converted = value;
    assert std.isString(converted) : '"peer_owner_id" expected to be of type "string"';
    {
      peer_owner_id: converted,
    }
  ),
  with_peer_region(value):: (
    local converted = value;
    assert std.isString(converted) : '"peer_region" expected to be of type "string"';
    {
      peer_region: converted,
    }
  ),
  with_peer_vpc_id(value):: (
    local converted = value;
    assert std.isString(converted) : '"peer_vpc_id" expected to be of type "string"';
    {
      peer_vpc_id: converted,
    }
  ),
  with_region(value):: (
    local converted = value;
    assert std.isString(converted) : '"region" expected to be of type "string"';
    {
      region: converted,
    }
  ),
  with_requester(value):: (
    local converted = value;
    assert std.isObject(converted) : '"requester" expected to be of type "map"';
    {
      requester: converted,
    }
  ),
  with_requester_region(value):: (
    local converted = value;
    assert std.isString(converted) : '"requester_region" expected to be of type "string"';
    {
      requester_region: converted,
    }
  ),
  with_status(value):: (
    local converted = value;
    assert std.isString(converted) : '"status" expected to be of type "string"';
    {
      status: converted,
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
