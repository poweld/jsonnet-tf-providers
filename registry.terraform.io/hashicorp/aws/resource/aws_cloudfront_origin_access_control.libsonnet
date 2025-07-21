{
  local block = self,
  new(name, origin_access_control_origin_type, signing_behavior, signing_protocol):: (
    {}
    + block.with_name(name)
    + block.with_origin_access_control_origin_type(origin_access_control_origin_type)
    + block.with_signing_behavior(signing_behavior)
    + block.with_signing_protocol(signing_protocol)
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
  with_etag(value):: (
    local converted = value;
    assert std.isString(converted) : '"etag" expected to be of type "string"';
    {
      etag: converted,
    }
  ),
  with_id(value):: (
    local converted = value;
    assert std.isString(converted) : '"id" expected to be of type "string"';
    {
      id: converted,
    }
  ),
  with_name(value):: (
    local converted = value;
    assert std.isString(converted) : '"name" expected to be of type "string"';
    {
      name: converted,
    }
  ),
  with_origin_access_control_origin_type(value):: (
    local converted = value;
    assert std.isString(converted) : '"origin_access_control_origin_type" expected to be of type "string"';
    {
      origin_access_control_origin_type: converted,
    }
  ),
  with_signing_behavior(value):: (
    local converted = value;
    assert std.isString(converted) : '"signing_behavior" expected to be of type "string"';
    {
      signing_behavior: converted,
    }
  ),
  with_signing_protocol(value):: (
    local converted = value;
    assert std.isString(converted) : '"signing_protocol" expected to be of type "string"';
    {
      signing_protocol: converted,
    }
  ),
}
