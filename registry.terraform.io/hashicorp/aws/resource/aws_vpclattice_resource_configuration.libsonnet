{
  local block = self,
  new(name):: (
    {}
    + block.with_name(name)
  ),
  with_allow_association_to_shareable_service_network(value):: (
    local converted = value;
    assert std.isBoolean(converted) : '"allow_association_to_shareable_service_network" expected to be of type "bool"';
    {
      allow_association_to_shareable_service_network: converted,
    }
  ),
  with_arn(value):: (
    local converted = value;
    assert std.isString(converted) : '"arn" expected to be of type "string"';
    {
      arn: converted,
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
  with_port_ranges(value):: (
    local converted = if std.isArray(value) then value else [value];
    assert (std.isArray(converted) && std.length(std.set(converted)) == std.length(converted)) : '"port_ranges" expected to be of type "set"';
    {
      port_ranges: converted,
    }
  ),
  with_port_ranges_mixin(value):: (
    local converted = if std.isArray(value) then value else [value];
    assert (std.isArray(converted) && std.length(std.set(converted)) == std.length(converted)) : '"port_ranges" expected to be of type "set"';
    {
      port_ranges+: converted,
    }
  ),
  with_protocol(value):: (
    local converted = value;
    assert std.isString(converted) : '"protocol" expected to be of type "string"';
    {
      protocol: converted,
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
  with_resource_configuration_group_id(value):: (
    local converted = value;
    assert std.isString(converted) : '"resource_configuration_group_id" expected to be of type "string"';
    {
      resource_configuration_group_id: converted,
    }
  ),
  with_resource_gateway_identifier(value):: (
    local converted = value;
    assert std.isString(converted) : '"resource_gateway_identifier" expected to be of type "string"';
    {
      resource_gateway_identifier: converted,
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
  with_type(value):: (
    local converted = value;
    assert std.isString(converted) : '"type" expected to be of type "string"';
    {
      type: converted,
    }
  ),
  resource_configuration_definition:: {
    local block = self,
    new():: (
      {}
    ),
    arn_resource:: {
      local block = self,
      new(arn):: (
        {}
        + block.with_arn(arn)
      ),
      with_arn(value):: (
        local converted = value;
        assert std.isString(converted) : '"arn" expected to be of type "string"';
        {
          arn: converted,
        }
      ),
    },
    dns_resource:: {
      local block = self,
      new(domain_name, ip_address_type):: (
        {}
        + block.with_domain_name(domain_name)
        + block.with_ip_address_type(ip_address_type)
      ),
      with_domain_name(value):: (
        local converted = value;
        assert std.isString(converted) : '"domain_name" expected to be of type "string"';
        {
          domain_name: converted,
        }
      ),
      with_ip_address_type(value):: (
        local converted = value;
        assert std.isString(converted) : '"ip_address_type" expected to be of type "string"';
        {
          ip_address_type: converted,
        }
      ),
    },
    ip_resource:: {
      local block = self,
      new(ip_address):: (
        {}
        + block.with_ip_address(ip_address)
      ),
      with_ip_address(value):: (
        local converted = value;
        assert std.isString(converted) : '"ip_address" expected to be of type "string"';
        {
          ip_address: converted,
        }
      ),
    },
    with_arn_resource(value):: (
      local converted = if std.isArray(value) then value else [value];
      {
        arn_resource: value,
      }
    ),
    with_dns_resource(value):: (
      local converted = if std.isArray(value) then value else [value];
      {
        dns_resource: value,
      }
    ),
    with_ip_resource(value):: (
      local converted = if std.isArray(value) then value else [value];
      {
        ip_resource: value,
      }
    ),
    with_arn_resource_mixin(value):: (
      local converted = if std.isArray(value) then value else [value];
      {
        arn_resource+: converted,
      }
    ),
    with_dns_resource_mixin(value):: (
      local converted = if std.isArray(value) then value else [value];
      {
        dns_resource+: converted,
      }
    ),
    with_ip_resource_mixin(value):: (
      local converted = if std.isArray(value) then value else [value];
      {
        ip_resource+: converted,
      }
    ),
  },
  timeouts:: {
    local block = self,
    new():: (
      {}
    ),
    '#with_create':: "A string that can be [parsed as a duration](https://pkg.go.dev/time#ParseDuration) consisting of numbers and unit suffixes, such as '30s' or '2h45m'. Valid time units are 's' (seconds), 'm' (minutes), 'h' (hours).",
    with_create(value):: (
      local converted = value;
      assert std.isString(converted) : '"create" expected to be of type "string"';
      {
        create: converted,
      }
    ),
    '#with_delete':: "A string that can be [parsed as a duration](https://pkg.go.dev/time#ParseDuration) consisting of numbers and unit suffixes, such as '30s' or '2h45m'. Valid time units are 's' (seconds), 'm' (minutes), 'h' (hours). Setting a timeout for a Delete operation is only applicable if changes are saved into state before the destroy operation occurs.",
    with_delete(value):: (
      local converted = value;
      assert std.isString(converted) : '"delete" expected to be of type "string"';
      {
        delete: converted,
      }
    ),
    '#with_update':: "A string that can be [parsed as a duration](https://pkg.go.dev/time#ParseDuration) consisting of numbers and unit suffixes, such as '30s' or '2h45m'. Valid time units are 's' (seconds), 'm' (minutes), 'h' (hours).",
    with_update(value):: (
      local converted = value;
      assert std.isString(converted) : '"update" expected to be of type "string"';
      {
        update: converted,
      }
    ),
  },
  with_resource_configuration_definition(value):: (
    local converted = if std.isArray(value) then value else [value];
    {
      resource_configuration_definition: value,
    }
  ),
  with_timeouts(value):: (
    local converted = value;
    {
      timeouts: value,
    }
  ),
  with_resource_configuration_definition_mixin(value):: (
    local converted = if std.isArray(value) then value else [value];
    {
      resource_configuration_definition+: converted,
    }
  ),
}
