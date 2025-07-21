{
  local block = self,
  new(default_network_acl_id):: (
    {}
    + block.with_default_network_acl_id(default_network_acl_id)
  ),
  with_arn(value):: (
    local converted = value;
    assert std.isString(converted) : '"arn" expected to be of type "string"';
    {
      arn: converted,
    }
  ),
  with_default_network_acl_id(value):: (
    local converted = value;
    assert std.isString(converted) : '"default_network_acl_id" expected to be of type "string"';
    {
      default_network_acl_id: converted,
    }
  ),
  with_id(value):: (
    local converted = value;
    assert std.isString(converted) : '"id" expected to be of type "string"';
    {
      id: converted,
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
  with_vpc_id(value):: (
    local converted = value;
    assert std.isString(converted) : '"vpc_id" expected to be of type "string"';
    {
      vpc_id: converted,
    }
  ),
  egress:: {
    local block = self,
    new(action, from_port, protocol, rule_no, to_port):: (
      {}
      + block.with_action(action)
      + block.with_from_port(from_port)
      + block.with_protocol(protocol)
      + block.with_rule_no(rule_no)
      + block.with_to_port(to_port)
    ),
    with_action(value):: (
      local converted = value;
      assert std.isString(converted) : '"action" expected to be of type "string"';
      {
        action: converted,
      }
    ),
    with_cidr_block(value):: (
      local converted = value;
      assert std.isString(converted) : '"cidr_block" expected to be of type "string"';
      {
        cidr_block: converted,
      }
    ),
    with_from_port(value):: (
      local converted = value;
      assert std.isNumber(converted) : '"from_port" expected to be of type "number"';
      {
        from_port: converted,
      }
    ),
    with_icmp_code(value):: (
      local converted = value;
      assert std.isNumber(converted) : '"icmp_code" expected to be of type "number"';
      {
        icmp_code: converted,
      }
    ),
    with_icmp_type(value):: (
      local converted = value;
      assert std.isNumber(converted) : '"icmp_type" expected to be of type "number"';
      {
        icmp_type: converted,
      }
    ),
    with_ipv6_cidr_block(value):: (
      local converted = value;
      assert std.isString(converted) : '"ipv6_cidr_block" expected to be of type "string"';
      {
        ipv6_cidr_block: converted,
      }
    ),
    with_protocol(value):: (
      local converted = value;
      assert std.isString(converted) : '"protocol" expected to be of type "string"';
      {
        protocol: converted,
      }
    ),
    with_rule_no(value):: (
      local converted = value;
      assert std.isNumber(converted) : '"rule_no" expected to be of type "number"';
      {
        rule_no: converted,
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
  ingress:: {
    local block = self,
    new(action, from_port, protocol, rule_no, to_port):: (
      {}
      + block.with_action(action)
      + block.with_from_port(from_port)
      + block.with_protocol(protocol)
      + block.with_rule_no(rule_no)
      + block.with_to_port(to_port)
    ),
    with_action(value):: (
      local converted = value;
      assert std.isString(converted) : '"action" expected to be of type "string"';
      {
        action: converted,
      }
    ),
    with_cidr_block(value):: (
      local converted = value;
      assert std.isString(converted) : '"cidr_block" expected to be of type "string"';
      {
        cidr_block: converted,
      }
    ),
    with_from_port(value):: (
      local converted = value;
      assert std.isNumber(converted) : '"from_port" expected to be of type "number"';
      {
        from_port: converted,
      }
    ),
    with_icmp_code(value):: (
      local converted = value;
      assert std.isNumber(converted) : '"icmp_code" expected to be of type "number"';
      {
        icmp_code: converted,
      }
    ),
    with_icmp_type(value):: (
      local converted = value;
      assert std.isNumber(converted) : '"icmp_type" expected to be of type "number"';
      {
        icmp_type: converted,
      }
    ),
    with_ipv6_cidr_block(value):: (
      local converted = value;
      assert std.isString(converted) : '"ipv6_cidr_block" expected to be of type "string"';
      {
        ipv6_cidr_block: converted,
      }
    ),
    with_protocol(value):: (
      local converted = value;
      assert std.isString(converted) : '"protocol" expected to be of type "string"';
      {
        protocol: converted,
      }
    ),
    with_rule_no(value):: (
      local converted = value;
      assert std.isNumber(converted) : '"rule_no" expected to be of type "number"';
      {
        rule_no: converted,
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
  with_egress(value):: (
    local converted = if std.isArray(value) then value else [value];
    {
      egress: value,
    }
  ),
  with_ingress(value):: (
    local converted = if std.isArray(value) then value else [value];
    {
      ingress: value,
    }
  ),
  with_egress_mixin(value):: (
    local converted = if std.isArray(value) then value else [value];
    {
      egress+: converted,
    }
  ),
  with_ingress_mixin(value):: (
    local converted = if std.isArray(value) then value else [value];
    {
      ingress+: converted,
    }
  ),
}
