{
  local block = self,
  new(quota_code, service_code, value):: (
    {}
    + block.with_quota_code(quota_code)
    + block.with_service_code(service_code)
    + block.with_value(value)
  ),
  with_aws_region(value):: (
    local converted = value;
    assert std.isString(converted) : '"aws_region" expected to be of type "string"';
    {
      aws_region: converted,
    }
  ),
  with_global_quota(value):: (
    local converted = value;
    assert std.isBoolean(converted) : '"global_quota" expected to be of type "bool"';
    {
      global_quota: converted,
    }
  ),
  with_id(value):: (
    local converted = value;
    assert std.isString(converted) : '"id" expected to be of type "string"';
    {
      id: converted,
    }
  ),
  with_quota_code(value):: (
    local converted = value;
    assert std.isString(converted) : '"quota_code" expected to be of type "string"';
    {
      quota_code: converted,
    }
  ),
  with_quota_name(value):: (
    local converted = value;
    assert std.isString(converted) : '"quota_name" expected to be of type "string"';
    {
      quota_name: converted,
    }
  ),
  with_region(value):: (
    local converted = value;
    assert std.isString(converted) : '"region" expected to be of type "string"';
    {
      region: converted,
    }
  ),
  with_service_code(value):: (
    local converted = value;
    assert std.isString(converted) : '"service_code" expected to be of type "string"';
    {
      service_code: converted,
    }
  ),
  with_service_name(value):: (
    local converted = value;
    assert std.isString(converted) : '"service_name" expected to be of type "string"';
    {
      service_name: converted,
    }
  ),
  with_unit(value):: (
    local converted = value;
    assert std.isString(converted) : '"unit" expected to be of type "string"';
    {
      unit: converted,
    }
  ),
  with_value(value):: (
    local converted = value;
    assert std.isNumber(converted) : '"value" expected to be of type "number"';
    {
      value: converted,
    }
  ),
}
