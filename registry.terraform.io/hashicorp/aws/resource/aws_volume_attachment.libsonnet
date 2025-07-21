{
  local block = self,
  new(device_name, instance_id, volume_id):: (
    {}
    + block.with_device_name(device_name)
    + block.with_instance_id(instance_id)
    + block.with_volume_id(volume_id)
  ),
  with_device_name(value):: (
    local converted = value;
    assert std.isString(converted) : '"device_name" expected to be of type "string"';
    {
      device_name: converted,
    }
  ),
  with_force_detach(value):: (
    local converted = value;
    assert std.isBoolean(converted) : '"force_detach" expected to be of type "bool"';
    {
      force_detach: converted,
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
  '#with_region':: 'Region where this resource will be [managed](https://docs.aws.amazon.com/general/latest/gr/rande.html#regional-endpoints). Defaults to the Region set in the [provider configuration](https://registry.terraform.io/providers/hashicorp/aws/latest/docs#aws-configuration-reference).',
  with_region(value):: (
    local converted = value;
    assert std.isString(converted) : '"region" expected to be of type "string"';
    {
      region: converted,
    }
  ),
  with_skip_destroy(value):: (
    local converted = value;
    assert std.isBoolean(converted) : '"skip_destroy" expected to be of type "bool"';
    {
      skip_destroy: converted,
    }
  ),
  with_stop_instance_before_detaching(value):: (
    local converted = value;
    assert std.isBoolean(converted) : '"stop_instance_before_detaching" expected to be of type "bool"';
    {
      stop_instance_before_detaching: converted,
    }
  ),
  with_volume_id(value):: (
    local converted = value;
    assert std.isString(converted) : '"volume_id" expected to be of type "string"';
    {
      volume_id: converted,
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
    with_delete(value):: (
      local converted = value;
      assert std.isString(converted) : '"delete" expected to be of type "string"';
      {
        delete: converted,
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
