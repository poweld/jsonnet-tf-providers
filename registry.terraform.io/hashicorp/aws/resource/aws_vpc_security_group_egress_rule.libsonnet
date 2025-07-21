{
  local block = self,
  new(ip_protocol, security_group_id):: (
    {}
    + block.with_ip_protocol(ip_protocol)
    + block.with_security_group_id(security_group_id)
  ),
  with_arn(value):: (
    local converted = value;
    assert std.isString(converted) : '"arn" expected to be of type "string"';
    {
      arn: converted,
    }
  ),
  with_cidr_ipv4(value):: (
    local converted = value;
    assert std.isString(converted) : '"cidr_ipv4" expected to be of type "string"';
    {
      cidr_ipv4: converted,
    }
  ),
  with_cidr_ipv6(value):: (
    local converted = value;
    assert std.isString(converted) : '"cidr_ipv6" expected to be of type "string"';
    {
      cidr_ipv6: converted,
    }
  ),
  with_description(value):: (
    local converted = value;
    assert std.isString(converted) : '"description" expected to be of type "string"';
    {
      description: converted,
    }
  ),
  with_from_port(value):: (
    local converted = value;
    assert std.isNumber(converted) : '"from_port" expected to be of type "number"';
    {
      from_port: converted,
    }
  ),
  with_id(value):: (
    local converted = value;
    assert std.isString(converted) : '"id" expected to be of type "string"';
    {
      id: converted,
    }
  ),
  with_ip_protocol(value):: (
    local converted = value;
    assert std.isString(converted) : '"ip_protocol" expected to be of type "string"';
    {
      ip_protocol: converted,
    }
  ),
  with_prefix_list_id(value):: (
    local converted = value;
    assert std.isString(converted) : '"prefix_list_id" expected to be of type "string"';
    {
      prefix_list_id: converted,
    }
  ),
  with_referenced_security_group_id(value):: (
    local converted = value;
    assert std.isString(converted) : '"referenced_security_group_id" expected to be of type "string"';
    {
      referenced_security_group_id: converted,
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
  with_security_group_id(value):: (
    local converted = value;
    assert std.isString(converted) : '"security_group_id" expected to be of type "string"';
    {
      security_group_id: converted,
    }
  ),
  with_security_group_rule_id(value):: (
    local converted = value;
    assert std.isString(converted) : '"security_group_rule_id" expected to be of type "string"';
    {
      security_group_rule_id: converted,
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
  with_to_port(value):: (
    local converted = value;
    assert std.isNumber(converted) : '"to_port" expected to be of type "number"';
    {
      to_port: converted,
    }
  ),
}
