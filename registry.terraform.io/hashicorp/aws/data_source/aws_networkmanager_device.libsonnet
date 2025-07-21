{
  local block = self,
  new(device_id, global_network_id):: (
    {}
    + block.with_device_id(device_id)
    + block.with_global_network_id(global_network_id)
  ),
  with_arn(value):: (
    local converted = value;
    assert std.isString(converted) : '"arn" expected to be of type "string"';
    {
      arn: converted,
    }
  ),
  with_aws_location(value):: (
    local converted = if std.isArray(value) then value else [value];
    assert std.isArray(converted) : '"aws_location" expected to be of type "list"';
    {
      aws_location: converted,
    }
  ),
  with_aws_location_mixin(value):: (
    local converted = if std.isArray(value) then value else [value];
    assert std.isArray(converted) : '"aws_location" expected to be of type "list"';
    {
      aws_location+: converted,
    }
  ),
  with_description(value):: (
    local converted = value;
    assert std.isString(converted) : '"description" expected to be of type "string"';
    {
      description: converted,
    }
  ),
  with_device_id(value):: (
    local converted = value;
    assert std.isString(converted) : '"device_id" expected to be of type "string"';
    {
      device_id: converted,
    }
  ),
  with_global_network_id(value):: (
    local converted = value;
    assert std.isString(converted) : '"global_network_id" expected to be of type "string"';
    {
      global_network_id: converted,
    }
  ),
  with_id(value):: (
    local converted = value;
    assert std.isString(converted) : '"id" expected to be of type "string"';
    {
      id: converted,
    }
  ),
  with_location(value):: (
    local converted = if std.isArray(value) then value else [value];
    assert std.isArray(converted) : '"location" expected to be of type "list"';
    {
      location: converted,
    }
  ),
  with_location_mixin(value):: (
    local converted = if std.isArray(value) then value else [value];
    assert std.isArray(converted) : '"location" expected to be of type "list"';
    {
      location+: converted,
    }
  ),
  with_model(value):: (
    local converted = value;
    assert std.isString(converted) : '"model" expected to be of type "string"';
    {
      model: converted,
    }
  ),
  with_serial_number(value):: (
    local converted = value;
    assert std.isString(converted) : '"serial_number" expected to be of type "string"';
    {
      serial_number: converted,
    }
  ),
  with_site_id(value):: (
    local converted = value;
    assert std.isString(converted) : '"site_id" expected to be of type "string"';
    {
      site_id: converted,
    }
  ),
  with_tags(value):: (
    local converted = value;
    assert std.isObject(converted) : '"tags" expected to be of type "map"';
    {
      tags: converted,
    }
  ),
  with_type(value):: (
    local converted = value;
    assert std.isString(converted) : '"type" expected to be of type "string"';
    {
      type: converted,
    }
  ),
  with_vendor(value):: (
    local converted = value;
    assert std.isString(converted) : '"vendor" expected to be of type "string"';
    {
      vendor: converted,
    }
  ),
}
