{
  local block = self,
  new(encoded_key):: (
    {}
    + block.with_encoded_key(encoded_key)
  ),
  with_caller_reference(value):: (
    local converted = value;
    assert std.isString(converted) : '"caller_reference" expected to be of type "string"';
    {
      caller_reference: converted,
    }
  ),
  with_comment(value):: (
    local converted = value;
    assert std.isString(converted) : '"comment" expected to be of type "string"';
    {
      comment: converted,
    }
  ),
  with_encoded_key(value):: (
    local converted = value;
    assert std.isString(converted) : '"encoded_key" expected to be of type "string"';
    {
      encoded_key: converted,
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
  with_name_prefix(value):: (
    local converted = value;
    assert std.isString(converted) : '"name_prefix" expected to be of type "string"';
    {
      name_prefix: converted,
    }
  ),
}
