{
  local block = self,
  new(user):: (
    {}
    + block.with_user(user)
  ),
  with_create_date(value):: (
    local converted = value;
    assert std.isString(converted) : '"create_date" expected to be of type "string"';
    {
      create_date: converted,
    }
  ),
  with_encrypted_secret(value):: (
    local converted = value;
    assert std.isString(converted) : '"encrypted_secret" expected to be of type "string"';
    {
      encrypted_secret: converted,
    }
  ),
  with_encrypted_ses_smtp_password_v4(value):: (
    local converted = value;
    assert std.isString(converted) : '"encrypted_ses_smtp_password_v4" expected to be of type "string"';
    {
      encrypted_ses_smtp_password_v4: converted,
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
  with_pgp_key(value):: (
    local converted = value;
    assert std.isString(converted) : '"pgp_key" expected to be of type "string"';
    {
      pgp_key: converted,
    }
  ),
  with_secret(value):: (
    local converted = value;
    assert std.isString(converted) : '"secret" expected to be of type "string"';
    {
      secret: converted,
    }
  ),
  with_ses_smtp_password_v4(value):: (
    local converted = value;
    assert std.isString(converted) : '"ses_smtp_password_v4" expected to be of type "string"';
    {
      ses_smtp_password_v4: converted,
    }
  ),
  with_status(value):: (
    local converted = value;
    assert std.isString(converted) : '"status" expected to be of type "string"';
    {
      status: converted,
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
