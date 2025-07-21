{
  local block = self,
  new(destination_cidr_block, rule_action, rule_number, source_cidr_block, traffic_direction, traffic_mirror_filter_id):: (
    {}
    + block.with_destination_cidr_block(destination_cidr_block)
    + block.with_rule_action(rule_action)
    + block.with_rule_number(rule_number)
    + block.with_source_cidr_block(source_cidr_block)
    + block.with_traffic_direction(traffic_direction)
    + block.with_traffic_mirror_filter_id(traffic_mirror_filter_id)
  ),
  with_arn(value):: (
    local converted = value;
    assert std.isString(converted) : '"arn" expected to be of type "string"';
    {
      arn: converted,
    }
  ),
  with_description(value):: (
    local converted = value;
    assert std.isString(converted) : '"description" expected to be of type "string"';
    {
      description: converted,
    }
  ),
  with_destination_cidr_block(value):: (
    local converted = value;
    assert std.isString(converted) : '"destination_cidr_block" expected to be of type "string"';
    {
      destination_cidr_block: converted,
    }
  ),
  with_id(value):: (
    local converted = value;
    assert std.isString(converted) : '"id" expected to be of type "string"';
    {
      id: converted,
    }
  ),
  with_protocol(value):: (
    local converted = value;
    assert std.isNumber(converted) : '"protocol" expected to be of type "number"';
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
  with_source_cidr_block(value):: (
    local converted = value;
    assert std.isString(converted) : '"source_cidr_block" expected to be of type "string"';
    {
      source_cidr_block: converted,
    }
  ),
  with_traffic_direction(value):: (
    local converted = value;
    assert std.isString(converted) : '"traffic_direction" expected to be of type "string"';
    {
      traffic_direction: converted,
    }
  ),
  with_traffic_mirror_filter_id(value):: (
    local converted = value;
    assert std.isString(converted) : '"traffic_mirror_filter_id" expected to be of type "string"';
    {
      traffic_mirror_filter_id: converted,
    }
  ),
  destination_port_range:: {
    local block = self,
    new():: (
      {}
    ),
    with_from_port(value):: (
      local converted = value;
      assert std.isNumber(converted) : '"from_port" expected to be of type "number"';
      {
        from_port: converted,
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
  source_port_range:: {
    local block = self,
    new():: (
      {}
    ),
    with_from_port(value):: (
      local converted = value;
      assert std.isNumber(converted) : '"from_port" expected to be of type "number"';
      {
        from_port: converted,
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
  with_destination_port_range(value):: (
    local converted = if std.isArray(value) then value else [value];
    {
      destination_port_range: value,
    }
  ),
  with_source_port_range(value):: (
    local converted = if std.isArray(value) then value else [value];
    {
      source_port_range: value,
    }
  ),
  with_destination_port_range_mixin(value):: (
    local converted = if std.isArray(value) then value else [value];
    {
      destination_port_range+: converted,
    }
  ),
  with_source_port_range_mixin(value):: (
    local converted = if std.isArray(value) then value else [value];
    {
      source_port_range+: converted,
    }
  ),
}
