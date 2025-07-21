{
  local block = self,
  new(bandwidth, connection_id, name, owner_account_id, vlan):: (
    {}
    + block.with_bandwidth(bandwidth)
    + block.with_connection_id(connection_id)
    + block.with_name(name)
    + block.with_owner_account_id(owner_account_id)
    + block.with_vlan(vlan)
  ),
  with_aws_device(value):: (
    local converted = value;
    assert std.isString(converted) : '"aws_device" expected to be of type "string"';
    {
      aws_device: converted,
    }
  ),
  with_bandwidth(value):: (
    local converted = value;
    assert std.isString(converted) : '"bandwidth" expected to be of type "string"';
    {
      bandwidth: converted,
    }
  ),
  with_connection_id(value):: (
    local converted = value;
    assert std.isString(converted) : '"connection_id" expected to be of type "string"';
    {
      connection_id: converted,
    }
  ),
  with_connection_region(value):: (
    local converted = value;
    assert std.isString(converted) : '"connection_region" expected to be of type "string"';
    {
      connection_region: converted,
    }
  ),
  with_has_logical_redundancy(value):: (
    local converted = value;
    assert std.isString(converted) : '"has_logical_redundancy" expected to be of type "string"';
    {
      has_logical_redundancy: converted,
    }
  ),
  with_id(value):: (
    local converted = value;
    assert std.isString(converted) : '"id" expected to be of type "string"';
    {
      id: converted,
    }
  ),
  with_jumbo_frame_capable(value):: (
    local converted = value;
    assert std.isBoolean(converted) : '"jumbo_frame_capable" expected to be of type "bool"';
    {
      jumbo_frame_capable: converted,
    }
  ),
  with_lag_id(value):: (
    local converted = value;
    assert std.isString(converted) : '"lag_id" expected to be of type "string"';
    {
      lag_id: converted,
    }
  ),
  with_loa_issue_time(value):: (
    local converted = value;
    assert std.isString(converted) : '"loa_issue_time" expected to be of type "string"';
    {
      loa_issue_time: converted,
    }
  ),
  with_location(value):: (
    local converted = value;
    assert std.isString(converted) : '"location" expected to be of type "string"';
    {
      location: converted,
    }
  ),
  with_name(value):: (
    local converted = value;
    assert std.isString(converted) : '"name" expected to be of type "string"';
    {
      name: converted,
    }
  ),
  with_owner_account_id(value):: (
    local converted = value;
    assert std.isString(converted) : '"owner_account_id" expected to be of type "string"';
    {
      owner_account_id: converted,
    }
  ),
  with_partner_name(value):: (
    local converted = value;
    assert std.isString(converted) : '"partner_name" expected to be of type "string"';
    {
      partner_name: converted,
    }
  ),
  with_provider_name(value):: (
    local converted = value;
    assert std.isString(converted) : '"provider_name" expected to be of type "string"';
    {
      provider_name: converted,
    }
  ),
  with_region(value):: (
    local converted = value;
    assert std.isString(converted) : '"region" expected to be of type "string"';
    {
      region: converted,
    }
  ),
  with_state(value):: (
    local converted = value;
    assert std.isString(converted) : '"state" expected to be of type "string"';
    {
      state: converted,
    }
  ),
  with_vlan(value):: (
    local converted = value;
    assert std.isNumber(converted) : '"vlan" expected to be of type "number"';
    {
      vlan: converted,
    }
  ),
}
