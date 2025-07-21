{
  local block = self,
  new():: (
    {}
  ),
  with_allow_users_to_change_password(value):: (
    local converted = value;
    assert std.isBoolean(converted) : '"allow_users_to_change_password" expected to be of type "bool"';
    {
      allow_users_to_change_password: converted,
    }
  ),
  with_expire_passwords(value):: (
    local converted = value;
    assert std.isBoolean(converted) : '"expire_passwords" expected to be of type "bool"';
    {
      expire_passwords: converted,
    }
  ),
  with_hard_expiry(value):: (
    local converted = value;
    assert std.isBoolean(converted) : '"hard_expiry" expected to be of type "bool"';
    {
      hard_expiry: converted,
    }
  ),
  with_id(value):: (
    local converted = value;
    assert std.isString(converted) : '"id" expected to be of type "string"';
    {
      id: converted,
    }
  ),
  with_max_password_age(value):: (
    local converted = value;
    assert std.isNumber(converted) : '"max_password_age" expected to be of type "number"';
    {
      max_password_age: converted,
    }
  ),
  with_minimum_password_length(value):: (
    local converted = value;
    assert std.isNumber(converted) : '"minimum_password_length" expected to be of type "number"';
    {
      minimum_password_length: converted,
    }
  ),
  with_password_reuse_prevention(value):: (
    local converted = value;
    assert std.isNumber(converted) : '"password_reuse_prevention" expected to be of type "number"';
    {
      password_reuse_prevention: converted,
    }
  ),
  with_require_lowercase_characters(value):: (
    local converted = value;
    assert std.isBoolean(converted) : '"require_lowercase_characters" expected to be of type "bool"';
    {
      require_lowercase_characters: converted,
    }
  ),
  with_require_numbers(value):: (
    local converted = value;
    assert std.isBoolean(converted) : '"require_numbers" expected to be of type "bool"';
    {
      require_numbers: converted,
    }
  ),
  with_require_symbols(value):: (
    local converted = value;
    assert std.isBoolean(converted) : '"require_symbols" expected to be of type "bool"';
    {
      require_symbols: converted,
    }
  ),
  with_require_uppercase_characters(value):: (
    local converted = value;
    assert std.isBoolean(converted) : '"require_uppercase_characters" expected to be of type "bool"';
    {
      require_uppercase_characters: converted,
    }
  ),
}
