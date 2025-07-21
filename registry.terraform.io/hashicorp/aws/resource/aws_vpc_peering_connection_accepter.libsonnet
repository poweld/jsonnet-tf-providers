{
  local block = self,
  new(vpc_peering_connection_id):: (
    {}
    + block.with_vpc_peering_connection_id(vpc_peering_connection_id)
  ),
  with_accept_status(value):: (
    local converted = value;
    assert std.isString(converted) : '"accept_status" expected to be of type "string"';
    {
      accept_status: converted,
    }
  ),
  with_auto_accept(value):: (
    local converted = value;
    assert std.isBoolean(converted) : '"auto_accept" expected to be of type "bool"';
    {
      auto_accept: converted,
    }
  ),
  with_id(value):: (
    local converted = value;
    assert std.isString(converted) : '"id" expected to be of type "string"';
    {
      id: converted,
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
  with_vpc_peering_connection_id(value):: (
    local converted = value;
    assert std.isString(converted) : '"vpc_peering_connection_id" expected to be of type "string"';
    {
      vpc_peering_connection_id: converted,
    }
  ),
  accepter:: {
    local block = self,
    new():: (
      {}
    ),
    with_allow_remote_vpc_dns_resolution(value):: (
      local converted = value;
      assert std.isBoolean(converted) : '"allow_remote_vpc_dns_resolution" expected to be of type "bool"';
      {
        allow_remote_vpc_dns_resolution: converted,
      }
    ),
  },
  requester:: {
    local block = self,
    new():: (
      {}
    ),
    with_allow_remote_vpc_dns_resolution(value):: (
      local converted = value;
      assert std.isBoolean(converted) : '"allow_remote_vpc_dns_resolution" expected to be of type "bool"';
      {
        allow_remote_vpc_dns_resolution: converted,
      }
    ),
  },
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
    with_update(value):: (
      local converted = value;
      assert std.isString(converted) : '"update" expected to be of type "string"';
      {
        update: converted,
      }
    ),
  },
  with_accepter(value):: (
    local converted = if std.isArray(value) then value else [value];
    {
      accepter: value,
    }
  ),
  with_requester(value):: (
    local converted = if std.isArray(value) then value else [value];
    {
      requester: value,
    }
  ),
  with_timeouts(value):: (
    local converted = value;
    {
      timeouts: value,
    }
  ),
  with_accepter_mixin(value):: (
    local converted = if std.isArray(value) then value else [value];
    {
      accepter+: converted,
    }
  ),
  with_requester_mixin(value):: (
    local converted = if std.isArray(value) then value else [value];
    {
      requester+: converted,
    }
  ),
}
