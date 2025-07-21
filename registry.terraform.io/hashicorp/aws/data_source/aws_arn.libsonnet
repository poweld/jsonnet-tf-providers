{
  local block = self,
  new(arn):: (
    {}
    + block.with_arn(arn)
  ),
  with_account(value):: (
    local converted = value;
    assert std.isString(converted) : '"account" expected to be of type "string"';
    {
      account: converted,
    }
  ),
  with_arn(value):: (
    local converted = value;
    assert std.isString(converted) : '"arn" expected to be of type "string"';
    {
      arn: converted,
    }
  ),
  with_id(value):: (
    local converted = value;
    assert std.isString(converted) : '"id" expected to be of type "string"';
    {
      id: converted,
    }
  ),
  with_partition(value):: (
    local converted = value;
    assert std.isString(converted) : '"partition" expected to be of type "string"';
    {
      partition: converted,
    }
  ),
  with_region(value):: (
    local converted = value;
    assert std.isString(converted) : '"region" expected to be of type "string"';
    {
      region: converted,
    }
  ),
  with_resource(value):: (
    local converted = value;
    assert std.isString(converted) : '"resource" expected to be of type "string"';
    {
      resource: converted,
    }
  ),
  with_service(value):: (
    local converted = value;
    assert std.isString(converted) : '"service" expected to be of type "string"';
    {
      service: converted,
    }
  ),
}
