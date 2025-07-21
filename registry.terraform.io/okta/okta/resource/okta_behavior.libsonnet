{
  local block = self,
  new(name, type):: (
    {}
    + block.with_name(name)
    + block.with_type(type)
  ),
  with_id(value):: (
    local converted = value;
    assert std.isString(converted) : '"id" expected to be of type "string"';
    {
      id: converted,
    }
  ),
  '#with_location_granularity_type':: 'Determines the method and level of detail used to evaluate the behavior. Required for `ANOMALOUS_LOCATION` behavior type. Can be set to `LAT_LONG`, `CITY`, `COUNTRY` or `SUBDIVISION`.',
  with_location_granularity_type(value):: (
    local converted = value;
    assert std.isString(converted) : '"location_granularity_type" expected to be of type "string"';
    {
      location_granularity_type: converted,
    }
  ),
  '#with_name':: 'Name of the behavior',
  with_name(value):: (
    local converted = value;
    assert std.isString(converted) : '"name" expected to be of type "string"';
    {
      name: converted,
    }
  ),
  '#with_number_of_authentications':: 'The number of recent authentications used to evaluate the behavior. Required for `ANOMALOUS_LOCATION`, `ANOMALOUS_DEVICE` and `ANOMALOUS_IP` behavior types.',
  with_number_of_authentications(value):: (
    local converted = value;
    assert std.isNumber(converted) : '"number_of_authentications" expected to be of type "number"';
    {
      number_of_authentications: converted,
    }
  ),
  '#with_radius_from_location':: 'Radius from location (in kilometers). Should be at least 5. Required when `location_granularity_type` is set to `LAT_LONG`.',
  with_radius_from_location(value):: (
    local converted = value;
    assert std.isNumber(converted) : '"radius_from_location" expected to be of type "number"';
    {
      radius_from_location: converted,
    }
  ),
  '#with_status':: 'Behavior status: ACTIVE or INACTIVE. Default: `ACTIVE`',
  with_status(value):: (
    local converted = value;
    assert std.isString(converted) : '"status" expected to be of type "string"';
    {
      status: converted,
    }
  ),
  '#with_type':: 'Type of the behavior. Can be set to `ANOMALOUS_LOCATION`, `ANOMALOUS_DEVICE`, `ANOMALOUS_IP` or `VELOCITY`. Resource will be recreated when the type changes.e',
  with_type(value):: (
    local converted = value;
    assert std.isString(converted) : '"type" expected to be of type "string"';
    {
      type: converted,
    }
  ),
  '#with_velocity':: 'Velocity (in kilometers per hour). Should be at least 1. Required for `VELOCITY` behavior',
  with_velocity(value):: (
    local converted = value;
    assert std.isNumber(converted) : '"velocity" expected to be of type "number"';
    {
      velocity: converted,
    }
  ),
}
