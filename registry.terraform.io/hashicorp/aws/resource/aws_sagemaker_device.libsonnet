{
  local block = self,
  new(device_fleet_name):: (
    {}
    + block.with_device_fleet_name(device_fleet_name)
  ),
  with_agent_version(value):: (
    local converted = value;
    assert std.isString(converted) : '"agent_version" expected to be of type "string"';
    {
      agent_version: converted,
    }
  ),
  with_arn(value):: (
    local converted = value;
    assert std.isString(converted) : '"arn" expected to be of type "string"';
    {
      arn: converted,
    }
  ),
  with_device_fleet_name(value):: (
    local converted = value;
    assert std.isString(converted) : '"device_fleet_name" expected to be of type "string"';
    {
      device_fleet_name: converted,
    }
  ),
  with_id(value):: (
    local converted = value;
    assert std.isString(converted) : '"id" expected to be of type "string"';
    {
      id: converted,
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
  device:: {
    local block = self,
    new(device_name):: (
      {}
      + block.with_device_name(device_name)
    ),
    with_description(value):: (
      local converted = value;
      assert std.isString(converted) : '"description" expected to be of type "string"';
      {
        description: converted,
      }
    ),
    with_device_name(value):: (
      local converted = value;
      assert std.isString(converted) : '"device_name" expected to be of type "string"';
      {
        device_name: converted,
      }
    ),
    with_iot_thing_name(value):: (
      local converted = value;
      assert std.isString(converted) : '"iot_thing_name" expected to be of type "string"';
      {
        iot_thing_name: converted,
      }
    ),
  },
  with_device(value):: (
    local converted = if std.isArray(value) then value else [value];
    {
      device: value,
    }
  ),
  with_device_mixin(value):: (
    local converted = if std.isArray(value) then value else [value];
    {
      device+: converted,
    }
  ),
}
