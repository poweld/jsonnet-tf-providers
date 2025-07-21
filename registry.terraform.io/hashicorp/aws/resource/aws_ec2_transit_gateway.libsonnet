{
  local block = self,
  new():: (
    {}
  ),
  with_amazon_side_asn(value):: (
    local converted = value;
    assert std.isNumber(converted) : '"amazon_side_asn" expected to be of type "number"';
    {
      amazon_side_asn: converted,
    }
  ),
  with_arn(value):: (
    local converted = value;
    assert std.isString(converted) : '"arn" expected to be of type "string"';
    {
      arn: converted,
    }
  ),
  with_association_default_route_table_id(value):: (
    local converted = value;
    assert std.isString(converted) : '"association_default_route_table_id" expected to be of type "string"';
    {
      association_default_route_table_id: converted,
    }
  ),
  with_auto_accept_shared_attachments(value):: (
    local converted = value;
    assert std.isString(converted) : '"auto_accept_shared_attachments" expected to be of type "string"';
    {
      auto_accept_shared_attachments: converted,
    }
  ),
  with_default_route_table_association(value):: (
    local converted = value;
    assert std.isString(converted) : '"default_route_table_association" expected to be of type "string"';
    {
      default_route_table_association: converted,
    }
  ),
  with_default_route_table_propagation(value):: (
    local converted = value;
    assert std.isString(converted) : '"default_route_table_propagation" expected to be of type "string"';
    {
      default_route_table_propagation: converted,
    }
  ),
  with_description(value):: (
    local converted = value;
    assert std.isString(converted) : '"description" expected to be of type "string"';
    {
      description: converted,
    }
  ),
  with_dns_support(value):: (
    local converted = value;
    assert std.isString(converted) : '"dns_support" expected to be of type "string"';
    {
      dns_support: converted,
    }
  ),
  with_id(value):: (
    local converted = value;
    assert std.isString(converted) : '"id" expected to be of type "string"';
    {
      id: converted,
    }
  ),
  with_multicast_support(value):: (
    local converted = value;
    assert std.isString(converted) : '"multicast_support" expected to be of type "string"';
    {
      multicast_support: converted,
    }
  ),
  with_owner_id(value):: (
    local converted = value;
    assert std.isString(converted) : '"owner_id" expected to be of type "string"';
    {
      owner_id: converted,
    }
  ),
  with_propagation_default_route_table_id(value):: (
    local converted = value;
    assert std.isString(converted) : '"propagation_default_route_table_id" expected to be of type "string"';
    {
      propagation_default_route_table_id: converted,
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
  with_security_group_referencing_support(value):: (
    local converted = value;
    assert std.isString(converted) : '"security_group_referencing_support" expected to be of type "string"';
    {
      security_group_referencing_support: converted,
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
  with_transit_gateway_cidr_blocks(value):: (
    local converted = if std.isArray(value) then value else [value];
    assert (std.isArray(converted) && std.length(std.set(converted)) == std.length(converted)) : '"transit_gateway_cidr_blocks" expected to be of type "set"';
    {
      transit_gateway_cidr_blocks: converted,
    }
  ),
  with_transit_gateway_cidr_blocks_mixin(value):: (
    local converted = if std.isArray(value) then value else [value];
    assert (std.isArray(converted) && std.length(std.set(converted)) == std.length(converted)) : '"transit_gateway_cidr_blocks" expected to be of type "set"';
    {
      transit_gateway_cidr_blocks+: converted,
    }
  ),
  with_vpn_ecmp_support(value):: (
    local converted = value;
    assert std.isString(converted) : '"vpn_ecmp_support" expected to be of type "string"';
    {
      vpn_ecmp_support: converted,
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
    with_update(value):: (
      local converted = value;
      assert std.isString(converted) : '"update" expected to be of type "string"';
      {
        update: converted,
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
