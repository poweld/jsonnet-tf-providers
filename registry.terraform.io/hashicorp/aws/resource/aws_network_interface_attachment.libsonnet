{
  local block = self,
  new(device_index, instance_id, network_interface_id):: (
    {}
    + block.with_device_index(device_index)
    + block.with_instance_id(instance_id)
    + block.with_network_interface_id(network_interface_id)
  ),
  with_attachment_id(value):: (
    local converted = value;
    assert std.isString(converted) : '"attachment_id" expected to be of type "string"';
    {
      attachment_id: converted,
    }
  ),
  with_device_index(value):: (
    local converted = value;
    assert std.isNumber(converted) : '"device_index" expected to be of type "number"';
    {
      device_index: converted,
    }
  ),
  with_id(value):: (
    local converted = value;
    assert std.isString(converted) : '"id" expected to be of type "string"';
    {
      id: converted,
    }
  ),
  with_instance_id(value):: (
    local converted = value;
    assert std.isString(converted) : '"instance_id" expected to be of type "string"';
    {
      instance_id: converted,
    }
  ),
  with_network_interface_id(value):: (
    local converted = value;
    assert std.isString(converted) : '"network_interface_id" expected to be of type "string"';
    {
      network_interface_id: converted,
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
  with_status(value):: (
    local converted = value;
    assert std.isString(converted) : '"status" expected to be of type "string"';
    {
      status: converted,
    }
  ),
}
