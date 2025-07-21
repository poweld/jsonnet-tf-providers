{
  local block = self,
  new(user):: (
    {}
    + block.with_user(user)
  ),
  with_encrypted_password(value):: (
    local converted = value;
    assert std.isString(converted) : '"encrypted_password" expected to be of type "string"';
    {
      encrypted_password: converted,
    }
  ),
  with_id(value):: (
    local converted = value;
    assert std.isString(converted) : '"id" expected to be of type "string"';
    {
      id: converted,
    }
  ),
  with_key_fingerprint(value):: (
    local converted = value;
    assert std.isString(converted) : '"key_fingerprint" expected to be of type "string"';
    {
      key_fingerprint: converted,
    }
  ),
  with_password(value):: (
    local converted = value;
    assert std.isString(converted) : '"password" expected to be of type "string"';
    {
      password: converted,
    }
  ),
  with_password_length(value):: (
    local converted = value;
    assert std.isNumber(converted) : '"password_length" expected to be of type "number"';
    {
      password_length: converted,
    }
  ),
  with_password_reset_required(value):: (
    local converted = value;
    assert std.isBoolean(converted) : '"password_reset_required" expected to be of type "bool"';
    {
      password_reset_required: converted,
    }
  ),
  with_pgp_key(value):: (
    local converted = value;
    assert std.isString(converted) : '"pgp_key" expected to be of type "string"';
    {
      pgp_key: converted,
    }
  ),
  with_user(value):: (
    local converted = value;
    assert std.isString(converted) : '"user" expected to be of type "string"';
    {
      user: converted,
    }
  ),
}
