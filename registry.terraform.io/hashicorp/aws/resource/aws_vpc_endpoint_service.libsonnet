{
  local block = self,
  new(acceptance_required):: (
    {}
    + block.with_acceptance_required(acceptance_required)
  ),
  with_acceptance_required(value):: (
    local converted = value;
    assert std.isBoolean(converted) : '"acceptance_required" expected to be of type "bool"';
    {
      acceptance_required: converted,
    }
  ),
  with_allowed_principals(value):: (
    local converted = if std.isArray(value) then value else [value];
    assert (std.isArray(converted) && std.length(std.set(converted)) == std.length(converted)) : '"allowed_principals" expected to be of type "set"';
    {
      allowed_principals: converted,
    }
  ),
  with_allowed_principals_mixin(value):: (
    local converted = if std.isArray(value) then value else [value];
    assert (std.isArray(converted) && std.length(std.set(converted)) == std.length(converted)) : '"allowed_principals" expected to be of type "set"';
    {
      allowed_principals+: converted,
    }
  ),
  with_arn(value):: (
    local converted = value;
    assert std.isString(converted) : '"arn" expected to be of type "string"';
    {
      arn: converted,
    }
  ),
  with_availability_zones(value):: (
    local converted = if std.isArray(value) then value else [value];
    assert (std.isArray(converted) && std.length(std.set(converted)) == std.length(converted)) : '"availability_zones" expected to be of type "set"';
    {
      availability_zones: converted,
    }
  ),
  with_availability_zones_mixin(value):: (
    local converted = if std.isArray(value) then value else [value];
    assert (std.isArray(converted) && std.length(std.set(converted)) == std.length(converted)) : '"availability_zones" expected to be of type "set"';
    {
      availability_zones+: converted,
    }
  ),
  with_base_endpoint_dns_names(value):: (
    local converted = if std.isArray(value) then value else [value];
    assert (std.isArray(converted) && std.length(std.set(converted)) == std.length(converted)) : '"base_endpoint_dns_names" expected to be of type "set"';
    {
      base_endpoint_dns_names: converted,
    }
  ),
  with_base_endpoint_dns_names_mixin(value):: (
    local converted = if std.isArray(value) then value else [value];
    assert (std.isArray(converted) && std.length(std.set(converted)) == std.length(converted)) : '"base_endpoint_dns_names" expected to be of type "set"';
    {
      base_endpoint_dns_names+: converted,
    }
  ),
  with_gateway_load_balancer_arns(value):: (
    local converted = if std.isArray(value) then value else [value];
    assert (std.isArray(converted) && std.length(std.set(converted)) == std.length(converted)) : '"gateway_load_balancer_arns" expected to be of type "set"';
    {
      gateway_load_balancer_arns: converted,
    }
  ),
  with_gateway_load_balancer_arns_mixin(value):: (
    local converted = if std.isArray(value) then value else [value];
    assert (std.isArray(converted) && std.length(std.set(converted)) == std.length(converted)) : '"gateway_load_balancer_arns" expected to be of type "set"';
    {
      gateway_load_balancer_arns+: converted,
    }
  ),
  with_id(value):: (
    local converted = value;
    assert std.isString(converted) : '"id" expected to be of type "string"';
    {
      id: converted,
    }
  ),
  with_manages_vpc_endpoints(value):: (
    local converted = value;
    assert std.isBoolean(converted) : '"manages_vpc_endpoints" expected to be of type "bool"';
    {
      manages_vpc_endpoints: converted,
    }
  ),
  with_network_load_balancer_arns(value):: (
    local converted = if std.isArray(value) then value else [value];
    assert (std.isArray(converted) && std.length(std.set(converted)) == std.length(converted)) : '"network_load_balancer_arns" expected to be of type "set"';
    {
      network_load_balancer_arns: converted,
    }
  ),
  with_network_load_balancer_arns_mixin(value):: (
    local converted = if std.isArray(value) then value else [value];
    assert (std.isArray(converted) && std.length(std.set(converted)) == std.length(converted)) : '"network_load_balancer_arns" expected to be of type "set"';
    {
      network_load_balancer_arns+: converted,
    }
  ),
  with_private_dns_name(value):: (
    local converted = value;
    assert std.isString(converted) : '"private_dns_name" expected to be of type "string"';
    {
      private_dns_name: converted,
    }
  ),
  with_private_dns_name_configuration(value):: (
    local converted = if std.isArray(value) then value else [value];
    assert std.isArray(converted) : '"private_dns_name_configuration" expected to be of type "list"';
    {
      private_dns_name_configuration: converted,
    }
  ),
  with_private_dns_name_configuration_mixin(value):: (
    local converted = if std.isArray(value) then value else [value];
    assert std.isArray(converted) : '"private_dns_name_configuration" expected to be of type "list"';
    {
      private_dns_name_configuration+: converted,
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
  with_service_name(value):: (
    local converted = value;
    assert std.isString(converted) : '"service_name" expected to be of type "string"';
    {
      service_name: converted,
    }
  ),
  with_service_type(value):: (
    local converted = value;
    assert std.isString(converted) : '"service_type" expected to be of type "string"';
    {
      service_type: converted,
    }
  ),
  with_state(value):: (
    local converted = value;
    assert std.isString(converted) : '"state" expected to be of type "string"';
    {
      state: converted,
    }
  ),
  with_supported_ip_address_types(value):: (
    local converted = if std.isArray(value) then value else [value];
    assert (std.isArray(converted) && std.length(std.set(converted)) == std.length(converted)) : '"supported_ip_address_types" expected to be of type "set"';
    {
      supported_ip_address_types: converted,
    }
  ),
  with_supported_ip_address_types_mixin(value):: (
    local converted = if std.isArray(value) then value else [value];
    assert (std.isArray(converted) && std.length(std.set(converted)) == std.length(converted)) : '"supported_ip_address_types" expected to be of type "set"';
    {
      supported_ip_address_types+: converted,
    }
  ),
  with_supported_regions(value):: (
    local converted = if std.isArray(value) then value else [value];
    assert (std.isArray(converted) && std.length(std.set(converted)) == std.length(converted)) : '"supported_regions" expected to be of type "set"';
    {
      supported_regions: converted,
    }
  ),
  with_supported_regions_mixin(value):: (
    local converted = if std.isArray(value) then value else [value];
    assert (std.isArray(converted) && std.length(std.set(converted)) == std.length(converted)) : '"supported_regions" expected to be of type "set"';
    {
      supported_regions+: converted,
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
