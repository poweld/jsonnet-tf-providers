{
  local block = self,
  new(attachment_id, attachment_type):: (
    {}
    + block.with_attachment_id(attachment_id)
    + block.with_attachment_type(attachment_type)
  ),
  with_attachment_id(value):: (
    local converted = value;
    assert std.isString(converted) : '"attachment_id" expected to be of type "string"';
    {
      attachment_id: converted,
    }
  ),
  with_attachment_policy_rule_number(value):: (
    local converted = value;
    assert std.isNumber(converted) : '"attachment_policy_rule_number" expected to be of type "number"';
    {
      attachment_policy_rule_number: converted,
    }
  ),
  with_attachment_type(value):: (
    local converted = value;
    assert std.isString(converted) : '"attachment_type" expected to be of type "string"';
    {
      attachment_type: converted,
    }
  ),
  with_core_network_arn(value):: (
    local converted = value;
    assert std.isString(converted) : '"core_network_arn" expected to be of type "string"';
    {
      core_network_arn: converted,
    }
  ),
  with_core_network_id(value):: (
    local converted = value;
    assert std.isString(converted) : '"core_network_id" expected to be of type "string"';
    {
      core_network_id: converted,
    }
  ),
  with_edge_location(value):: (
    local converted = value;
    assert std.isString(converted) : '"edge_location" expected to be of type "string"';
    {
      edge_location: converted,
    }
  ),
  with_edge_locations(value):: (
    local converted = if std.isArray(value) then value else [value];
    assert std.isArray(converted) : '"edge_locations" expected to be of type "list"';
    {
      edge_locations: converted,
    }
  ),
  with_edge_locations_mixin(value):: (
    local converted = if std.isArray(value) then value else [value];
    assert std.isArray(converted) : '"edge_locations" expected to be of type "list"';
    {
      edge_locations+: converted,
    }
  ),
  with_id(value):: (
    local converted = value;
    assert std.isString(converted) : '"id" expected to be of type "string"';
    {
      id: converted,
    }
  ),
  with_owner_account_id(value):: (
    local converted = value;
    assert std.isString(converted) : '"owner_account_id" expected to be of type "string"';
    {
      owner_account_id: converted,
    }
  ),
  with_resource_arn(value):: (
    local converted = value;
    assert std.isString(converted) : '"resource_arn" expected to be of type "string"';
    {
      resource_arn: converted,
    }
  ),
  with_segment_name(value):: (
    local converted = value;
    assert std.isString(converted) : '"segment_name" expected to be of type "string"';
    {
      segment_name: converted,
    }
  ),
  with_state(value):: (
    local converted = value;
    assert std.isString(converted) : '"state" expected to be of type "string"';
    {
      state: converted,
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
