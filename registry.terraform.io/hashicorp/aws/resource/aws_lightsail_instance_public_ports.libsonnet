{
  local block = self,
  new(instance_name):: (
    {}
    + block.with_instance_name(instance_name)
  ),
  with_id(value):: (
    local converted = value;
    assert std.isString(converted) : '"id" expected to be of type "string"';
    {
      id: converted,
    }
  ),
  with_instance_name(value):: (
    local converted = value;
    assert std.isString(converted) : '"instance_name" expected to be of type "string"';
    {
      instance_name: converted,
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
  port_info:: {
    local block = self,
    new(from_port, protocol, to_port):: (
      {}
      + block.with_from_port(from_port)
      + block.with_protocol(protocol)
      + block.with_to_port(to_port)
    ),
    with_cidr_list_aliases(value):: (
      local converted = if std.isArray(value) then value else [value];
      assert (std.isArray(converted) && std.length(std.set(converted)) == std.length(converted)) : '"cidr_list_aliases" expected to be of type "set"';
      {
        cidr_list_aliases: converted,
      }
    ),
    with_cidr_list_aliases_mixin(value):: (
      local converted = if std.isArray(value) then value else [value];
      assert (std.isArray(converted) && std.length(std.set(converted)) == std.length(converted)) : '"cidr_list_aliases" expected to be of type "set"';
      {
        cidr_list_aliases+: converted,
      }
    ),
    with_cidrs(value):: (
      local converted = if std.isArray(value) then value else [value];
      assert (std.isArray(converted) && std.length(std.set(converted)) == std.length(converted)) : '"cidrs" expected to be of type "set"';
      {
        cidrs: converted,
      }
    ),
    with_cidrs_mixin(value):: (
      local converted = if std.isArray(value) then value else [value];
      assert (std.isArray(converted) && std.length(std.set(converted)) == std.length(converted)) : '"cidrs" expected to be of type "set"';
      {
        cidrs+: converted,
      }
    ),
    with_from_port(value):: (
      local converted = value;
      assert std.isNumber(converted) : '"from_port" expected to be of type "number"';
      {
        from_port: converted,
      }
    ),
    with_ipv6_cidrs(value):: (
      local converted = if std.isArray(value) then value else [value];
      assert (std.isArray(converted) && std.length(std.set(converted)) == std.length(converted)) : '"ipv6_cidrs" expected to be of type "set"';
      {
        ipv6_cidrs: converted,
      }
    ),
    with_ipv6_cidrs_mixin(value):: (
      local converted = if std.isArray(value) then value else [value];
      assert (std.isArray(converted) && std.length(std.set(converted)) == std.length(converted)) : '"ipv6_cidrs" expected to be of type "set"';
      {
        ipv6_cidrs+: converted,
      }
    ),
    with_protocol(value):: (
      local converted = value;
      assert std.isString(converted) : '"protocol" expected to be of type "string"';
      {
        protocol: converted,
      }
    ),
    with_to_port(value):: (
      local converted = value;
      assert std.isNumber(converted) : '"to_port" expected to be of type "number"';
      {
        to_port: converted,
      }
    ),
  },
  with_port_info(value):: (
    local converted = if std.isArray(value) then value else [value];
    {
      port_info: value,
    }
  ),
  with_port_info_mixin(value):: (
    local converted = if std.isArray(value) then value else [value];
    {
      port_info+: converted,
    }
  ),
}
