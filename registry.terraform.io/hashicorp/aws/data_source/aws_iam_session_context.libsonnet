{
  local block = self,
  new(arn):: (
    {}
    + block.with_arn(arn)
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
  with_issuer_arn(value):: (
    local converted = value;
    assert std.isString(converted) : '"issuer_arn" expected to be of type "string"';
    {
      issuer_arn: converted,
    }
  ),
  with_issuer_id(value):: (
    local converted = value;
    assert std.isString(converted) : '"issuer_id" expected to be of type "string"';
    {
      issuer_id: converted,
    }
  ),
  with_issuer_name(value):: (
    local converted = value;
    assert std.isString(converted) : '"issuer_name" expected to be of type "string"';
    {
      issuer_name: converted,
    }
  ),
  with_session_name(value):: (
    local converted = value;
    assert std.isString(converted) : '"session_name" expected to be of type "string"';
    {
      session_name: converted,
    }
  ),
}
