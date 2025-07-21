{
  local block = self,
  new(firewall_rule_group_id):: (
    {}
    + block.with_firewall_rule_group_id(firewall_rule_group_id)
  ),
  with_arn(value):: (
    local converted = value;
    assert std.isString(converted) : '"arn" expected to be of type "string"';
    {
      arn: converted,
    }
  ),
  with_creation_time(value):: (
    local converted = value;
    assert std.isString(converted) : '"creation_time" expected to be of type "string"';
    {
      creation_time: converted,
    }
  ),
  with_creator_request_id(value):: (
    local converted = value;
    assert std.isString(converted) : '"creator_request_id" expected to be of type "string"';
    {
      creator_request_id: converted,
    }
  ),
  with_firewall_rule_group_id(value):: (
    local converted = value;
    assert std.isString(converted) : '"firewall_rule_group_id" expected to be of type "string"';
    {
      firewall_rule_group_id: converted,
    }
  ),
  with_id(value):: (
    local converted = value;
    assert std.isString(converted) : '"id" expected to be of type "string"';
    {
      id: converted,
    }
  ),
  with_modification_time(value):: (
    local converted = value;
    assert std.isString(converted) : '"modification_time" expected to be of type "string"';
    {
      modification_time: converted,
    }
  ),
  with_name(value):: (
    local converted = value;
    assert std.isString(converted) : '"name" expected to be of type "string"';
    {
      name: converted,
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
  with_rule_count(value):: (
    local converted = value;
    assert std.isNumber(converted) : '"rule_count" expected to be of type "number"';
    {
      rule_count: converted,
    }
  ),
  with_share_status(value):: (
    local converted = value;
    assert std.isString(converted) : '"share_status" expected to be of type "string"';
    {
      share_status: converted,
    }
  ),
  with_status(value):: (
    local converted = value;
    assert std.isString(converted) : '"status" expected to be of type "string"';
    {
      status: converted,
    }
  ),
  with_status_message(value):: (
    local converted = value;
    assert std.isString(converted) : '"status_message" expected to be of type "string"';
    {
      status_message: converted,
    }
  ),
}
