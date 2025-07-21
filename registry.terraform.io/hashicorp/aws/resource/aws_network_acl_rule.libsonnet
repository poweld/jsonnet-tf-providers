{
  local block = self,
  new(network_acl_id, protocol, rule_action, rule_number):: (
    {}
    + block.with_network_acl_id(network_acl_id)
    + block.with_protocol(protocol)
    + block.with_rule_action(rule_action)
    + block.with_rule_number(rule_number)
  ),
  with_cidr_block(value):: (
    local converted = value;
    assert std.isString(converted) : '"cidr_block" expected to be of type "string"';
    {
      cidr_block: converted,
    }
  ),
  with_egress(value):: (
    local converted = value;
    assert std.isBoolean(converted) : '"egress" expected to be of type "bool"';
    {
      egress: converted,
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
  with_id(value):: (
    local converted = value;
    assert std.isString(converted) : '"id" expected to be of type "string"';
    {
      id: converted,
    }
  ),
  with_ipv6_cidr_block(value):: (
    local converted = value;
    assert std.isString(converted) : '"ipv6_cidr_block" expected to be of type "string"';
    {
      ipv6_cidr_block: converted,
    }
  ),
  with_network_acl_id(value):: (
    local converted = value;
    assert std.isString(converted) : '"network_acl_id" expected to be of type "string"';
    {
      network_acl_id: converted,
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
  with_rule_action(value):: (
    local converted = value;
    assert std.isString(converted) : '"rule_action" expected to be of type "string"';
    {
      rule_action: converted,
    }
  ),
  with_rule_number(value):: (
    local converted = value;
    assert std.isNumber(converted) : '"rule_number" expected to be of type "number"';
    {
      rule_number: converted,
    }
  ),
  with_to_port(value):: (
    local converted = value;
    assert std.isNumber(converted) : '"to_port" expected to be of type "number"';
    {
      to_port: converted,
    }
  ),
}
