{
  local block = self,
  new():: (
    {}
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
  with_protection_arn(value):: (
    local converted = value;
    assert std.isString(converted) : '"protection_arn" expected to be of type "string"';
    {
      protection_arn: converted,
    }
  ),
  with_protection_id(value):: (
    local converted = value;
    assert std.isString(converted) : '"protection_id" expected to be of type "string"';
    {
      protection_id: converted,
    }
  ),
  with_resource_arn(value):: (
    local converted = value;
    assert std.isString(converted) : '"resource_arn" expected to be of type "string"';
    {
      resource_arn: converted,
    }
  ),
}
