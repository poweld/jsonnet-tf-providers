{
  local block = self,
  new(transit_gateway_attachment_id):: (
    {}
    + block.with_transit_gateway_attachment_id(transit_gateway_attachment_id)
  ),
  with_appliance_mode_support(value):: (
    local converted = value;
    assert std.isString(converted) : '"appliance_mode_support" expected to be of type "string"';
    {
      appliance_mode_support: converted,
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
  with_ipv6_support(value):: (
    local converted = value;
    assert std.isString(converted) : '"ipv6_support" expected to be of type "string"';
    {
      ipv6_support: converted,
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
  with_subnet_ids(value):: (
    local converted = if std.isArray(value) then value else [value];
    assert (std.isArray(converted) && std.length(std.set(converted)) == std.length(converted)) : '"subnet_ids" expected to be of type "set"';
    {
      subnet_ids: converted,
    }
  ),
  with_subnet_ids_mixin(value):: (
    local converted = if std.isArray(value) then value else [value];
    assert (std.isArray(converted) && std.length(std.set(converted)) == std.length(converted)) : '"subnet_ids" expected to be of type "set"';
    {
      subnet_ids+: converted,
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
  with_transit_gateway_attachment_id(value):: (
    local converted = value;
    assert std.isString(converted) : '"transit_gateway_attachment_id" expected to be of type "string"';
    {
      transit_gateway_attachment_id: converted,
    }
  ),
  with_transit_gateway_default_route_table_association(value):: (
    local converted = value;
    assert std.isBoolean(converted) : '"transit_gateway_default_route_table_association" expected to be of type "bool"';
    {
      transit_gateway_default_route_table_association: converted,
    }
  ),
  with_transit_gateway_default_route_table_propagation(value):: (
    local converted = value;
    assert std.isBoolean(converted) : '"transit_gateway_default_route_table_propagation" expected to be of type "bool"';
    {
      transit_gateway_default_route_table_propagation: converted,
    }
  ),
  with_transit_gateway_id(value):: (
    local converted = value;
    assert std.isString(converted) : '"transit_gateway_id" expected to be of type "string"';
    {
      transit_gateway_id: converted,
    }
  ),
  with_vpc_id(value):: (
    local converted = value;
    assert std.isString(converted) : '"vpc_id" expected to be of type "string"';
    {
      vpc_id: converted,
    }
  ),
  with_vpc_owner_id(value):: (
    local converted = value;
    assert std.isString(converted) : '"vpc_owner_id" expected to be of type "string"';
    {
      vpc_owner_id: converted,
    }
  ),
}
