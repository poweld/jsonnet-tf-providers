{
  local block = self,
  new(direction, security_group_ids):: (
    {}
    + block.with_direction(direction)
    + block.with_security_group_ids(security_group_ids)
  ),
  with_arn(value):: (
    local converted = value;
    assert std.isString(converted) : '"arn" expected to be of type "string"';
    {
      arn: converted,
    }
  ),
  with_direction(value):: (
    local converted = value;
    assert std.isString(converted) : '"direction" expected to be of type "string"';
    {
      direction: converted,
    }
  ),
  with_host_vpc_id(value):: (
    local converted = value;
    assert std.isString(converted) : '"host_vpc_id" expected to be of type "string"';
    {
      host_vpc_id: converted,
    }
  ),
  with_id(value):: (
    local converted = value;
    assert std.isString(converted) : '"id" expected to be of type "string"';
    {
      id: converted,
    }
  ),
  with_name(value):: (
    local converted = value;
    assert std.isString(converted) : '"name" expected to be of type "string"';
    {
      name: converted,
    }
  ),
  with_protocols(value):: (
    local converted = if std.isArray(value) then value else [value];
    assert (std.isArray(converted) && std.length(std.set(converted)) == std.length(converted)) : '"protocols" expected to be of type "set"';
    {
      protocols: converted,
    }
  ),
  with_protocols_mixin(value):: (
    local converted = if std.isArray(value) then value else [value];
    assert (std.isArray(converted) && std.length(std.set(converted)) == std.length(converted)) : '"protocols" expected to be of type "set"';
    {
      protocols+: converted,
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
  with_resolver_endpoint_type(value):: (
    local converted = value;
    assert std.isString(converted) : '"resolver_endpoint_type" expected to be of type "string"';
    {
      resolver_endpoint_type: converted,
    }
  ),
  with_security_group_ids(value):: (
    local converted = if std.isArray(value) then value else [value];
    assert (std.isArray(converted) && std.length(std.set(converted)) == std.length(converted)) : '"security_group_ids" expected to be of type "set"';
    {
      security_group_ids: converted,
    }
  ),
  with_security_group_ids_mixin(value):: (
    local converted = if std.isArray(value) then value else [value];
    assert (std.isArray(converted) && std.length(std.set(converted)) == std.length(converted)) : '"security_group_ids" expected to be of type "set"';
    {
      security_group_ids+: converted,
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
  ip_address:: {
    local block = self,
    new(subnet_id):: (
      {}
      + block.with_subnet_id(subnet_id)
    ),
    with_ip(value):: (
      local converted = value;
      assert std.isString(converted) : '"ip" expected to be of type "string"';
      {
        ip: converted,
      }
    ),
    with_ip_id(value):: (
      local converted = value;
      assert std.isString(converted) : '"ip_id" expected to be of type "string"';
      {
        ip_id: converted,
      }
    ),
    with_ipv6(value):: (
      local converted = value;
      assert std.isString(converted) : '"ipv6" expected to be of type "string"';
      {
        ipv6: converted,
      }
    ),
    with_subnet_id(value):: (
      local converted = value;
      assert std.isString(converted) : '"subnet_id" expected to be of type "string"';
      {
        subnet_id: converted,
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
    with_delete(value):: (
      local converted = value;
      assert std.isString(converted) : '"delete" expected to be of type "string"';
      {
        delete: converted,
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
  with_ip_address(value):: (
    local converted = if std.isArray(value) then value else [value];
    {
      ip_address: value,
    }
  ),
  with_timeouts(value):: (
    local converted = value;
    {
      timeouts: value,
    }
  ),
  with_ip_address_mixin(value):: (
    local converted = if std.isArray(value) then value else [value];
    {
      ip_address+: converted,
    }
  ),
}
