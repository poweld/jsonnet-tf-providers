{
  local block = self,
  new(from_port, protocol, security_group_id, to_port, type):: (
    {}
    + block.with_from_port(from_port)
    + block.with_protocol(protocol)
    + block.with_security_group_id(security_group_id)
    + block.with_to_port(to_port)
    + block.with_type(type)
  ),
  with_cidr_blocks(value):: (
    local converted = if std.isArray(value) then value else [value];
    assert std.isArray(converted) : '"cidr_blocks" expected to be of type "list"';
    {
      cidr_blocks: converted,
    }
  ),
  with_cidr_blocks_mixin(value):: (
    local converted = if std.isArray(value) then value else [value];
    assert std.isArray(converted) : '"cidr_blocks" expected to be of type "list"';
    {
      cidr_blocks+: converted,
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
  with_ipv6_cidr_blocks(value):: (
    local converted = if std.isArray(value) then value else [value];
    assert std.isArray(converted) : '"ipv6_cidr_blocks" expected to be of type "list"';
    {
      ipv6_cidr_blocks: converted,
    }
  ),
  with_ipv6_cidr_blocks_mixin(value):: (
    local converted = if std.isArray(value) then value else [value];
    assert std.isArray(converted) : '"ipv6_cidr_blocks" expected to be of type "list"';
    {
      ipv6_cidr_blocks+: converted,
    }
  ),
  with_prefix_list_ids(value):: (
    local converted = if std.isArray(value) then value else [value];
    assert std.isArray(converted) : '"prefix_list_ids" expected to be of type "list"';
    {
      prefix_list_ids: converted,
    }
  ),
  with_prefix_list_ids_mixin(value):: (
    local converted = if std.isArray(value) then value else [value];
    assert std.isArray(converted) : '"prefix_list_ids" expected to be of type "list"';
    {
      prefix_list_ids+: converted,
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
  with_self(value):: (
    local converted = value;
    assert std.isBoolean(converted) : '"self" expected to be of type "bool"';
    {
      'self': converted,
    }
  ),
  with_source_security_group_id(value):: (
    local converted = value;
    assert std.isString(converted) : '"source_security_group_id" expected to be of type "string"';
    {
      source_security_group_id: converted,
    }
  ),
  with_to_port(value):: (
    local converted = value;
    assert std.isNumber(converted) : '"to_port" expected to be of type "number"';
    {
      to_port: converted,
    }
  ),
  with_type(value):: (
    local converted = value;
    assert std.isString(converted) : '"type" expected to be of type "string"';
    {
      type: converted,
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
  },
  with_timeouts(value):: (
    local converted = value;
    {
      timeouts: value,
    }
  ),
}
