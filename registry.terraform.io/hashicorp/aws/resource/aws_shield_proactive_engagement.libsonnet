{
  local block = self,
  new(enabled):: (
    {}
    + block.with_enabled(enabled)
  ),
  with_enabled(value):: (
    local converted = value;
    assert std.isBoolean(converted) : '"enabled" expected to be of type "bool"';
    {
      enabled: converted,
    }
  ),
  with_id(value):: (
    local converted = value;
    assert std.isString(converted) : '"id" expected to be of type "string"';
    {
      id: converted,
    }
  ),
  emergency_contact:: {
    local block = self,
    new(email_address):: (
      {}
      + block.with_email_address(email_address)
    ),
    with_contact_notes(value):: (
      local converted = value;
      assert std.isString(converted) : '"contact_notes" expected to be of type "string"';
      {
        contact_notes: converted,
      }
    ),
    with_email_address(value):: (
      local converted = value;
      assert std.isString(converted) : '"email_address" expected to be of type "string"';
      {
        email_address: converted,
      }
    ),
    with_phone_number(value):: (
      local converted = value;
      assert std.isString(converted) : '"phone_number" expected to be of type "string"';
      {
        phone_number: converted,
      }
    ),
  },
  with_emergency_contact(value):: (
    local converted = if std.isArray(value) then value else [value];
    {
      emergency_contact: value,
    }
  ),
  with_emergency_contact_mixin(value):: (
    local converted = if std.isArray(value) then value else [value];
    {
      emergency_contact+: converted,
    }
  ),
}
