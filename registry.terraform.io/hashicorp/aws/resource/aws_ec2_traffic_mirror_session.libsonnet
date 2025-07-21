{
  local block = self,
  new(network_interface_id, session_number, traffic_mirror_filter_id, traffic_mirror_target_id):: (
    {}
    + block.with_network_interface_id(network_interface_id)
    + block.with_session_number(session_number)
    + block.with_traffic_mirror_filter_id(traffic_mirror_filter_id)
    + block.with_traffic_mirror_target_id(traffic_mirror_target_id)
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
  with_id(value):: (
    local converted = value;
    assert std.isString(converted) : '"id" expected to be of type "string"';
    {
      id: converted,
    }
  ),
  with_network_interface_id(value):: (
    local converted = value;
    assert std.isString(converted) : '"network_interface_id" expected to be of type "string"';
    {
      network_interface_id: converted,
    }
  ),
  with_owner_id(value):: (
    local converted = value;
    assert std.isString(converted) : '"owner_id" expected to be of type "string"';
    {
      owner_id: converted,
    }
  ),
  with_packet_length(value):: (
    local converted = value;
    assert std.isNumber(converted) : '"packet_length" expected to be of type "number"';
    {
      packet_length: converted,
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
  with_session_number(value):: (
    local converted = value;
    assert std.isNumber(converted) : '"session_number" expected to be of type "number"';
    {
      session_number: converted,
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
  with_traffic_mirror_filter_id(value):: (
    local converted = value;
    assert std.isString(converted) : '"traffic_mirror_filter_id" expected to be of type "string"';
    {
      traffic_mirror_filter_id: converted,
    }
  ),
  with_traffic_mirror_target_id(value):: (
    local converted = value;
    assert std.isString(converted) : '"traffic_mirror_target_id" expected to be of type "string"';
    {
      traffic_mirror_target_id: converted,
    }
  ),
  with_virtual_network_id(value):: (
    local converted = value;
    assert std.isNumber(converted) : '"virtual_network_id" expected to be of type "number"';
    {
      virtual_network_id: converted,
    }
  ),
}
