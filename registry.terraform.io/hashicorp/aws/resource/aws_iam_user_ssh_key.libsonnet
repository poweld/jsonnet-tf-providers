{
  local block = self,
  new(encoding, public_key, username):: (
    {}
    + block.with_encoding(encoding)
    + block.with_public_key(public_key)
    + block.with_username(username)
  ),
  with_encoding(value):: (
    local converted = value;
    assert std.isString(converted) : '"encoding" expected to be of type "string"';
    {
      encoding: converted,
    }
  ),
  with_fingerprint(value):: (
    local converted = value;
    assert std.isString(converted) : '"fingerprint" expected to be of type "string"';
    {
      fingerprint: converted,
    }
  ),
  with_id(value):: (
    local converted = value;
    assert std.isString(converted) : '"id" expected to be of type "string"';
    {
      id: converted,
    }
  ),
  with_public_key(value):: (
    local converted = value;
    assert std.isString(converted) : '"public_key" expected to be of type "string"';
    {
      public_key: converted,
    }
  ),
  with_ssh_public_key_id(value):: (
    local converted = value;
    assert std.isString(converted) : '"ssh_public_key_id" expected to be of type "string"';
    {
      ssh_public_key_id: converted,
    }
  ),
  with_status(value):: (
    local converted = value;
    assert std.isString(converted) : '"status" expected to be of type "string"';
    {
      status: converted,
    }
  ),
  with_username(value):: (
    local converted = value;
    assert std.isString(converted) : '"username" expected to be of type "string"';
    {
      username: converted,
    }
  ),
}
